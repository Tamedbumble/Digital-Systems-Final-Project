import pygame as pg
import numpy as np

vram = np.zeros(640)
MAX_DIST = np.sqrt(800**2 + 600**2)

def draw_vram(screen, offset, b=1):
    pg.draw.rect(screen, (0, 0, 0), (800, 0, 640, 600))
    heights = 200/(vram)
    heights = np.clip(heights, 0, 1)
    offset += 300
    # offset = np.clip(offset, -100, 100)
    t = offset / 600
    offset_scale = np.cos((offset - 300) * np.pi / 600)
    print(offset_scale)
    for i, val in enumerate(heights):
        if val == np.nan:
            val = 0
        color = b*(val**2)*255
        color = np.clip(color, 0, 255)
        pg.draw.line(screen, (color, color, color), (800 + i, offset), (800 + i, offset + val*600*(1-t)), 1)
        pg.draw.line(screen, (color, color, color), (800 + i, offset), (800 + i, offset - val*600*t), 1)

class Player:
    def __init__(self, x, y):
        self.pos = x + y * 1j
        self.facing = 1
        self.size = 10
        self.vel = 5
        self.rotate_vel = 0.02*np.pi
        self.wall = 50
        self.hang = 0
        self.hang_vel = 10

    def complex_to_tuple(self, val):
        return (val.real, val.imag)

    def draw(self, screen):
        global vram
        walls = [(self.wall, self.wall), (800 - self.wall, self.wall), (800 - self.wall, 600 - self.wall), (self.wall, 600 - self.wall)]
        triangle = [self.complex_to_tuple(self.pos + self.size/2 * self.facing * np.exp(1j * (2*np.pi/3))),
                    self.complex_to_tuple(self.pos + self.size/2 * self.facing * np.exp(1j * (4*np.pi/3))),
                    self.complex_to_tuple(self.pos + self.size * self.facing)]
        for i, offset in enumerate(np.linspace(-np.pi/6, np.pi/6, 640)):
            dir = self.facing * np.exp(1j * offset)
            dist = self.cast_ray(dir)
            vram[i] = (dist * dir * np.conj(self.facing)).real
            pg.draw.line(screen, (255, 0, 0), self.complex_to_tuple(self.pos), self.complex_to_tuple(self.pos + dir*dist), 1)
        pg.draw.polygon(screen, (0, 0, 255), triangle)
        pg.draw.polygon(screen, (0, 0, 0), walls, 1)

    def move(self, keys):
        if self.pos.real < self.wall:
            self.pos = self.pos.imag * 1j + self.wall
        if self.pos.real > 800 - self.wall:
            self.pos = 800 + self.pos.imag * 1j - self.wall
        if self.pos.imag < self.wall:
            self.pos = self.pos.real + self.wall * 1j
        if self.pos.imag > 600 - self.wall:
            self.pos = self.pos.real + (600 - self.wall) * 1j
        
        move_dir = (1j*keys[pg.K_d] -1j*keys[pg.K_a] + keys[pg.K_w] - keys[pg.K_s]) * self.facing
        move_dir /= np.abs(move_dir) if move_dir != 0 else 1
        self.pos += move_dir * self.vel

        self.facing *= np.exp(1j*(keys[pg.K_RIGHT] - keys[pg.K_LEFT]) * self.rotate_vel)

        self.hang += (keys[pg.K_UP] - keys[pg.K_DOWN]) * self.hang_vel
    
    def cast_ray(self, dir):
        dist_x = np.inf
        dist_y = np.inf
        if dir.real > 0:
            dist_x = (800 - self.wall - self.pos.real) / dir.real
        elif dir.real < 0:
            dist_x = (self.pos.real - self.wall) / dir.real
        if dir.imag > 0:
            dist_y = (600 - self.wall - self.pos.imag) / dir.imag
        elif dir.imag < 0:
            dist_y = (self.pos.imag - self.wall) / dir.imag
        
        return min(np.abs(dist_x), np.abs(dist_y))

if __name__ == "__main__":
    pg.init()
    screen = pg.display.set_mode((1600, 600))
    pg.display.set_caption("385 raycast test")
    clock = pg.time.Clock()
    done = False
    player = Player(375, 275)
    b = 1
    while not done:
        keys = pg.key.get_pressed()
        player.move(keys)
        for event in pg.event.get():
            if event.type == pg.QUIT:
                done = True
        if keys[pg.K_b]:
            b = 1.1*b
        if keys[pg.K_n]:
            b = 0.9*b
        screen.fill((255, 255, 255))
        player.draw(screen)
        draw_vram(screen, player.hang, b)
        pg.display.flip()
        clock.tick(60)
    pg.quit()