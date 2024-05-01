// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 30 01:14:48 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/neil/385projects/Digital-Systems-Final-Project/lab6/lab6.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
        .enb(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20432)
`pragma protect data_block
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
Nt+t343zTRSW3lkTDeeiOnBaHSVZhbJH9QQ=
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
