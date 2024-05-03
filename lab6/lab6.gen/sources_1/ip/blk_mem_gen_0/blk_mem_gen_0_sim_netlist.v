// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 30 01:14:47 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20144)
`pragma protect data_block
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
uZZXcWClE+VBYR/onkrppTFbH7nDUVo=
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
