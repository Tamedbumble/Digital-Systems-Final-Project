// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu May  2 13:55:32 2024
// Host        : DESKTOP-HL0SD2E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/tamed/OneDrive/Desktop/UIUC Spring
//               2024/ECE385/Digital-Systems-Final-Project/lab6/lab6.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v}
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [11:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [11:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [11:0]dina;
  wire [11:0]dinb;
  wire [11:0]douta;
  wire [11:0]doutb;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.8697 mW" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "640" *) 
  (* C_READ_DEPTH_B = "640" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "640" *) 
  (* C_WRITE_DEPTH_B = "640" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "spartan7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20704)
`pragma protect data_block
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
njO+cFp5f19kwWSyVA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
