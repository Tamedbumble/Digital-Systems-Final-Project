// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Apr 30 01:14:47 2024
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20448)
`pragma protect data_block
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
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
