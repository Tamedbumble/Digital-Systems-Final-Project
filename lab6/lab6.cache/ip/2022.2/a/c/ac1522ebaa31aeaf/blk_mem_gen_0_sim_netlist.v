// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu May  2 13:55:31 2024
// Host        : DESKTOP-HL0SD2E running 64-bit major release  (build 9200)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20720)
`pragma protect data_block
qt5upNXhj5gTlYBuMQIBU3kLoUMexA0nT+uZemzuVPi/3mnQa2Db3PEaHPGJ3WSeOYx7Nnf6URNi
0gKvzZDtDyf2qjvlj0dr9ucHFwIVHpVtkVW7WgzFrVQ/DQCem/CadT9Nx/90gxHp/VHCOJKC1/iw
dIilvn/jI1vjGXwtXUpS3jtMixTk8uvO5yfSFx84ruUyJMajUtU8nw8C+OUl9orbDVjaR942/1BJ
2ep7qRae7Z4HCi+JY/IjvwC8fv0IgEa4VO6D2cWUkO4tYY/CXhSkM421yA7YKNb8E2ruopDcQOmm
XSc80h5F9rzjLTrLQhfT5X3qkXUEXEd6EQXnA63gsUcRErghEIJi0vDtq23xrifRvvqxlP+DEHC9
m9m/hCqSQ7Mzi+4SKKhXVanDZ68HAz9UaHumjbexOsu28KWCQnbwZWZREHIMSY0K5Eqz85v6mzaQ
hDgxHlXosliuP3xxk5WkWmqS4eZtP8T5XFMwKPK4qZqUOy0Pav6sPNxQpYayjJJpevXAGuPo52bt
pySAiSLSYpz8YNeihav0Hk01iZD/ke/74JRDvzRpKv0TabwoHgWfIwpryaMzYcqqXSINp3P6TEZz
19mTwFXthXBtnQuD4xsyuHA9koCRmCeGlBdnZ7H1ac5A4g4IeK5WavqxU8EofMRakFalsogOw1IJ
OzztbGB99cWpX6AjRyzGTmEaScBncSBw0g3yHQNcU3952qiJmByHnBD8qCCG2fFfgr6KLN7LAAWa
YJ3WcRWC3QgO6LpsOJVFlkg4qcn7DxDE5dtG+KfiMmVPKjqX5IKiUASBJoUV7Utte01gSQBRmK3e
VM3ibfNLCsqX0VH4u4eowBmPTw0x+DnD+KIycve3PzWJELwkOcRfGV5dBpY8O6IOod+zQvb7hSVn
64NL8yuSbOJmxUzjpn+Ng6b6toLymDcrj4+jUIC/MrIOPbSiG61WinZ523h7fzxokXZFl0vTUKmL
Ko/z/LOe6DyEtRhjkyoisry7RXQE2WNlFdWT4xXw4WoQBojeg0bRsVgi96O0NfodNRFmqRWBcEGm
uLP/ne1ot4B75BVkvqsMoocvsKpGN+SfIPYMLtOhyawkZbauxguqDDoAmSDXJfOGRSa9MR76ZUEg
Np4i1yzo3xC5Z2INHkr97XYkvTe/SuWxBjuRM3Av14khsOVZL0hpOUiSEhBFCUIxqOWlTPYamkbj
QbWIRzYmpPtmAmAnhmCQHolJ1oej8KRY6clJlgpNpqJMSkfsrtOjx4Nizvqdi3DT7gUatUqFXJjO
AWAEb4zYvZqxl9b48mUe0AXKZA2TKla7PCgeDOcSZPtFoePWwMeMkkDXKMs+J3xYwCiHc1Zb0VnB
BXx2KPksuSoky1RuUqEaez4JTsw0r2W5uhGoUIg2FrrhQDPUZWoF11dnNXLjSP5Ok8FaqbPCgYoz
cSRT3EyypzsnSeLnV+UDqb9GUY8QWXQ3OQNFIxG0EJFlq0+FBV3dgqlEgvCSsmWqXDwKSzBh0cgU
dqQmNt4TJybmY4xl5iAvkoWdrb4esk18kqbaMDJ54OPYh7o4hCzibojFhKcutZ8BHUUDiBZtYmLP
DYZA9AbxxuAbSDDYTc6DQzdpBACFqHtYDfow8IiTtPjl9tNKs5yt97ihgCUypxHTCSyH6mQtirfC
l4aiC6xZSav+YIqeoX4fqaoWsmz7KRn2mvpof3GQwyb4iTuzhh/kzwx0J6v+ffAVozZAlLhsTLic
M6ZsMlSynl/j9WAWiYIZ+Ka8J5FfH8wUL/sFQz9wIkVcMP6lPbDTdyq0YCoppvzTf5ZyeBc/7JYH
VYnPWOjKiq+7e30FsKfqHRTD9RzUyFdaCZH0jwBGJBHJTuwAXSuu5ymoCtpOrx9RZNvVb+EnP6Jn
pAnC/eM5HkAcatqvliFQJTLxKPRb3+272hEj+uurVu7kpwQ29VHAPPsLFVvtsPF0U1XCE8rTOgjX
wzijGvpcMdGNXP3nUj+rRpWARR9pYLkhH9FGGX1PWnluFXjR0JV+D07ityUxQk7Z6vPfttAo5G0w
t01DYkQgPtJKPl6SPX7VrS/w0NQVTTOottsxt39aSnSyYeUNicP5AljpcaEGWQog29NCIsKjsFW5
CSwOiZILllIrg+jx8I3N8yVda2+KzYeKAWAvI+xfwdJbm7UO5tA2XbMsYQlQjvs9cOXGY9ee+yOr
Zp6cFtJEIocKFt3p3MuXpUiR27TDUpcm+ZbOXNjUoU0pTADQ2GKj81gPYTsZZace1oHRlYDJW1/r
Y3Qi7pZf+9cDgz2ZX7mTOhksa4K8nlL8xr105+QTQtNV+G9mSbYjE3XVNAbyKXIGGD8dYydjoz4O
RA/wBWTZLt0uTtlSZ8CmfGOvVphNCxTvqpDLZYQhJ76IBrHL2RI88kA6q/WcbB1letzpICiGDsQY
uBwJ8Vhr1a/2+3VVIb665zSVNEEKfQC9dIqne3RsUmazNtetthWTJKfILheQ8KjQhbDvBD3NPS0i
Nk2SgmDpZmfo1geD5pAz+8eLbPAK1+kBRedGBjZpDalsB3DHnURP7sFXhv2tJ9x3/Uyf7aah1tPt
bg37gP5a6LbrS1YAaR7m1PczyST/RcQq6mMHQwTen5CDqE2+xvvfGjp+g4nXpFYP7NYcDtFAgu+v
6pFDYJ3m51LbzoigrIzFF6ZISKzD5n0rYMME1hofnYO0CfNvEbpSCeYfHushm6zubwYoD3Ad9UM1
Tqzsp+8lR0Ex6NyjEW7niEd1IhMKw60AFhRLweX3nesysygIi98cQDcSpQEDBIIm0pdNGSfEr+iP
0CMHrk+ZY/GT7qBr6frnjQ5T4WdKmNLtHX4AR1KteZbyKyyuiotCE9tzM1zmigKkKHgZJPRNOFXO
Q1k6volKp5R9f8AxYS1uqHzJ1+N3mhojgQd6xn0RY4v2v7RbGdzBh+8ZXg4jczH9W9Y3K9vZDbVy
d0J8j3N+rL2wHFO9t5k7BXOaX9lFFjB0Jg94VAOY1oOgncHge0SPcq7VDRxchQWFTJMMSb6MvcEd
p5A/BZa7WntSOkZdoH4T4TVjFPS3ahqbaQk6a/5fUmIfLpFs+TtpxvnzsiJXULrEHBz1Oik/0iUT
cUdQ8ztPJ/VjFj1GC/SPmPaK9DVY4BgGSRwNaz0hMwx9XMNd2buyQbBa1mD8dZcDPy2nOmTi44Zl
iLctVrC2H6o1L0ITYpbtPeARJY5PHZaJhRwja0eijgOvlVSuksPV9WmJ0elKqfIaHqZMViXzBnvO
1VbFpq36iq8+s+hoE1PWVWZipXUST497ZJoaXASFkAOfeGtq7L7dctdJ6/KkrnAdpSG7hVVXjdBn
KdeE4qCj0lA9hGrO+1RSwGApB4TI3zgZlmUsN8JftvKO7hTJXPMc3OpSRRtL0MIUmXOko+SlFoB3
ymLEeU4AdSoyODjrQ6ZTDBZw35i1pvTyEW7rHho+S702mx4nulVOG3GRTNZVPhHq/iSC+6phFfys
ZFD56+eaUW0LUOdH6q/p+f71caGQdjEpdGypy8m6epsmFRWQUEtBkcgVNN7T2IZFbznQYd109113
XWVUjgzJbNPQ8l04uSc5IyOtiMCESeyKR9Qze7rcPb2QLyEh5cOxOruEYzVNTTn2K4wZh/zVRLyc
1eQf8fFN7K9wxD3N5IbZ3jUQZ6KDeo6a13tO3QPh9ItuBW56LapIXGeVZ3xc1l5Ja+r8g/SMhLoD
axmpdm7u17Htw8DenDCMWGE5jmLulIKz1fcpz54DFO6em4vIvfUbkHLqe90xz7P8qxV0Bsp1lmSU
zJZNnskWChajzd/gGWipXSQsyysZ9DMXeI2Ig0+OwayJv8emlFEVsSG3R+R8bskk8Us6lDnyrS+G
NoVkLyEWTuxEAKuCUdYiUtQdnfvPGiPUxbrJbb3dPD0kIDisDhJKuTMrdI5890DIexSEbHSiZzgU
kv4K3dKDbSbZO1P4uup/fW5EOFkRVzsg0BBXo8MdtazQ/8wPCqiXhH4L76hILPWQbGrR9Lr7UxWT
XycYwk4Cg4aFNymFHNdAfH+nm2u6yUSubv6oZ5pxtfnwCAztwkR9D+ehhTy7YDQclfdwoo29Cwqh
zJy/aax8Q2OlcuWe7LUiS52g113ckS+pfFcS99sNYEis5g1RQJIMob40EH0kXZZIZctWXYX8iXSM
4AoPCS9kh9bTZCVFM6GYzgUtWWXjfWWBVzGs0HuLpNYaM5j/FifQ1U7fqqm/bwhHlJz4KHUqOepx
pt918J992yLZ8ayxQ6ozVTfLap7+i5ynOWYgl1M1JcBKs2QdQjls1Ag9ANQpmoMyrrQxN7dMzNLT
A0Ew7p3Lavf31ZKGVj8yLQ7t44XsmEE9UbtXR8UW3mh9Cxg+fsG4gEIufOIa2DUortKYY93I5BzT
sA8stzyA8XH15CdQAtRVVgJT2AymbNTQGvrr0p8h8zV6bZsREUmUeJ9RD4MV5ATritv5eNzNKhx6
2dS/GCrCNFiR5Q7tTHj5gek/4gVBkN3ji2R28zUq+VBngR/0QjzXoZZllOLrALUFPqq2aZ1i+iyN
myuUuLk/dGSo40dYfriqSSl67HhDiasomfppf785eNqeniYn81TBhf1zccRfT1eLIFMGlVkXYbGK
C071iYqSSHUZgG8bWnMTfy4w0ANaME3V9gZeES+KHn6GLFrn4KzXQW9Z5URq1LmC2xx4kidTBMEF
vVdN8qbZmh9kMHkzkd67s3k5HeVTotyTXdUl+N2h9gSHtKn2ZZiOLXcOgiMV2haLPz2+ZWdb+8oS
NPQ054rYzf1FyEnCMI4UUIxKWFACO9vPD7+obLqba2hCTQjkpTXP1e/OAna2Ly7dA4R9VtbLabVW
RwlVHKh4+CN6wMD7+c6r3zY4ikRh3cGoHr/VfalgxYIQ8R3F26fzopin5+qyvgF96R21CkIE8s4u
fvLI2chjOsVA+ZfIdbDm1Tu97Y2jAvC1CvvqfQSKuS3J7qcX9bjDKGQ++UaOUWZX+PBcgU1D/7Oz
n+8sHgtks8lQcuZKuDf1i0CJbbRlb5Jl+NVy3uWfE7I8LczvSEonaGT2vypZv5+LYHhR72cJ2Dv4
pijh5WoP2tlc82d1goi3O2Xi4IuarcSSmKeq1ztn/CAuwB455+BQt6gfww7CcrtpNdJUuBzJ8NEW
q9Vd8KVgo8K8+AyR8GHWTyvfplI7+Nu1LukEUY6eaOtrJof0Ti93PqiYQW0qFfDQlJX+6OC5RcIE
oVjh4C3lYE7HBZVhrsA5RrTVAKv8Cxg8Xp+KihB3f8sp1ahrKFUSLjL8tB42qblU+iYMvDDnK6Xw
GrX465ikn078GSSwn9Rqz3PZEtekVagZSAT5cyfmAz3iDBGi41eYDyWmh8rgva4+oXKuclt1g983
J6FVDhIfkC20p9rev6S2ATztzCkoVz+d9kV+CEhausrX6J04yLa2PhlQILukEIwrDZcbfg5uDOAF
M8oddxDUEdmaZIEO5dFCRFj8QkZfQM5ZP84haETz+9yg54fiAh+mxCSJ5kWTYgwarMLsu+uKI0I0
Jii8HpdrqEJl1xNEsjA6UMw618O5Bae6NYOYQwYTfBZwm2BsKPRx//0a8rE/PIRmK8CqDPdSJcdv
Grre4IOPGVRDH1PKfau8HXi09NFddnsd902epjcfnlYc3fReaQgTrHzdwgkuZEAlIZy7YyiaLs7y
I1KI8URkQZkk57OX9xFMtXbSJqGzhQgYSsn6vaXN+goKSbxTx1X8jsxVWNU6JL9aks5LKNL276Mw
zdHf9TVBvNT4mgi6aAfKw7NL9L7VWQ2pzgsBwcxnaX/gIr2G25A9pZ/blNmljP0iEvDU8ZyLFJ2P
1OP8MP1xq5nTlb9i0Q+ZZ1NBJikvVpF2PFmqT2stu2+vfFC6xUn1MmWdCb0ML00TSpWr1LnwXMaE
ssJpgwo5Q2YUuvm4LTU0NS+p4nMh9pK1HQB6wBlTsX0Y7srR1rykyRE6dcH4u9KY88X/C6nIeA0b
hp57Mk+w7lyVecxibuGoJu8k4XLLvcl56oLOVnkXpusdP+bQVKaiLydVGQAGLydqwz2+9VcmrNN/
toOsyfjCUsLOwPzAhKJlptxsyJ/7CwI6koTHYtj1Pagx1WLwS0czS1rs+GBwlWf+QeRipdmzFXG6
MvY/SwjnZeMh+MuTQb8dWK4UM8V/+9rN5UJxnvKsuQRSjfSVIO6RE1w7W8sKm4w9G/w3EQ0fpeW5
luwelqiGPWpM6cnQSVBrLmIVO3QCkxNapAUm1FWUK/gUKdmPF19AFP/wuqoH3HMqQfj5R9SeMjR7
tf2OvBr2EQ/YWfnjORj0lwXugL/ystKrBYVxV5FpItF+OpwC0s1ANNljsHCPoqOHOLP8RMaVLiTr
znyd6pIiKS017ClubipwLz18HIWFfgiBjqfQTNxiLbDIaO1UrqYpvfLEXF3swWItGjpal+x61z5n
c0KWakf3Gah5RwJnbDERs18EFpzpdOG9gGOESMABlCcH1kcuZ6h4OElOIypuhas8AVpnlrI/Bjc4
Or1S0IKCBGbtHfWabERRTI0lhznKG6NCQewgFKBjOQl9TFmr7M6/0tm3r/p+Rj359nYEMvDXoS6B
hiTEg27igGR6J1WwpI9l0iaKM0N0k/VdDcoc2ZHL8vtWZT9PtZLgJnDJEfaTUEy6EdPesC5RuNQa
q5A/SV484VkluWXupSfMqbOQdzDWa/+V8hwS6woKSZtJO5fpXm+kqln9ytF6HoSMbVdBPpS/o0ZO
4IdirdE2nLVG/gToB3wEv2FUyDDYx+F3p8BPDAp/5JCVvOPwcvJ5E6WDne+Py+VSSEBP80jU5b97
d4obQ5HaN7NvRfmed3tYP5rgezGC1nEXwzDxLwi+swGzUa0QnGYI8DWN+fvgKyRu6BvrUYIuzWLb
YbKT5qeBnXykaJNrb6eaM8Ve0hFm6djavxyFPYMvfPe9LtzXkZoelwoBusnXiQzXclmf+TggMhI8
pAisFG/SowN0/Z2D2lOgCS4nKRkW7CDcZbJCim94v6M97RKd9y+HpI/QdOBC9xwPSFT62P3najEb
+mIiVVInvi0cewBvLhSbJO8Gq3z78XSbzGELOO5wq87l0ghszzQt9lp//guMsexHZLY5TshV4pu2
Ur7mkkcx/fqer7Y15eg+F+WlIZztcHSfkPVI+GniZtYvjWembFJOWDk5qL2npz2JYl93B/Lm1EOJ
IZRiM6E0kTZ1a6+3ie5COWB/xe6TJ6x8W3eOIibj1ESa0tzy08uYzej0LLenAAYSyHCjl4aaPRRz
sQuhReYX4YqRWKMzaKeoG+YnL2fb1x3VUohY1mduWtn+irJU32mdaSdzxseAfD2x7f8J2ct5B1WK
X1s1XjuLPxEMTpL1RgQVJg6u1AIchjl8EZDQ7zCFeSZf1mH6vGnGvMxhoKR2sOwi6O+BCt6OQ+jY
/YOKWxPMRIpbRsWTtu6XUPv4zUPeoJM1m/Z2xZGWysWW5HrVJnOWEjYSV/sXUdMad1j2t0ZVejsh
sbv2EEXR1XxlqYeGB9nepXdU1jWJzWMD5g+IwYx3ZwMYYeFygx4rd71ex0SncyHO1fhHiBQaCsWJ
1bE0rGIMinTADr1ELSju1RebTR0RT0sicCPoajHnVsGodpA9DmPpbuFYtA8us2wd92Fav5M66o64
jsoqJ+5Nw2GZA04RY9Q3/BYqkawk8KzGBDTpLwTToDQqzSOyxMJ4dIR8ogvqr8JJrjz3MWeSloQV
mC+azXsvHO+NKCZY/j817qmm86ph6SIITeWzdV1v2uFqywMJ5a/xSreM2jZMqycXi2SsTOwNPnXk
lkSlUHJQ14lYGXAIhR5BZEwlUe+DO/Gz76+mYNoa1zyo9g2jDrCp3evyTR5+fkzLTnkyqXN6/E1j
6NCAJTMD5ipQUEYgXlMGEvmYshRw6Spt5J4E5He68vl1tTJMghUiEky3HNj3bfqqbxPR4FqYl5l1
6H+rGSRcsmWv5X/cxkL870OZfKNWpkxRZH9qWrTH5TqQ5j11P1yYqr7L/n0XHQhaiXocMUloJtXc
xRIrpEcvlMLPxv0220ObQQHKCQh+2sWwMmqTjNt8mLbbXRzzpYwdX4NzPVZowhiCz+ZM2xbQOu7c
4fNX6+FZqgv2n6KFfPOEjTtphDWl//DN881xtsNoYaijVgCiA1fejVmpIG7hcTbG8ksCEq6O4ZlF
i0jCXFtdr86csgpgDKrQ0nIYSUKbw8uE6O2m2x16A9x8yJtvh333NquduDsA2LuUDB0edmDIH3xF
0nuGKqFQDwzWEReNqRNPZ6K23YvVtDxuiy2HUwnrwXSsPLYCMYxoGkvGeeJJTWtwT+aQCe/hFBmO
iJcVtQyF0wRrC7jbHcwyNXpwVqA7RScLTf1ExkeyPcKlFkVHDpNrNgufM7gQzO5pr4JYUIzEzfwm
TXls4Y+MPbIqHU8sFigs4XJzy5ii202cRoYyGxYP+cVdKd9uewy6p9xz7qhqX0Nrahhd25B03gRa
rDLaWnC114zI7iddXg7RE6zyR5w84w96kvNI63usrD5NijnaHZxZmXJjFJNy3crz63zYxMwuCKRj
oOLraP27qFIUanLF9ETft66LIgHicVhiexBBORQZvztCtkE3J/kDUR29lid55l1xnTRnOKBqhE25
jrn5m6teFerM/5aokUM0rbnI7f//WpZr7Ucg6x5oSN76bgO7arnv7cASk/fRbYWjokGgw8yVFwPD
QOIRquNoqy1kGBXz5ny4PCb84lCkE6X/eEo/6hqoEjnbgUDo9FLG31z9y5Izq0rZdQYEPT16+HI1
SZwntM/aWDrkk8gGbPbO1BD+adWRfOMpdCiC5yeorS0C30BmSDwPjLAmaoH29cLw31xNABejoV3q
yODxWUEhbqSv1kp/yzNdhWeY3QBHyjB52fBDeDrxhz6lNqEm1zT6bCEZ9cxi8zM7c9LBcnRaCsVH
bTxfeapxvoqe3G/L1tQnmSMjBprlIahuBz9sJujprJofghBdVYf1RGRo3Uk1dRo+TJfvPHYyGiMJ
UChm9j0ldbrU3PuFC8wD+Z/y6ArzmikeeGqbumW3Qvmnk+pV5wENUkmT26NLkGKNuKucp0CUUL5/
pHdaI4pk+TH+FzVx/ddKf32Y534EgUMTh2mKAlKM09gCy1ckVnGgg136Mx8zsl8pmUChQmSDBhTc
vQYoYrAIYJuPdX7Rj5PjTkDU7UxSWSzM2B10Yd2U3RLwmKzomyo+Fax3ZRfatnwsZeyIOrQy6UAo
ttBT+Z+ipy84l6s0NkX4wTko6qpHsJBEP34LZhO0qKsIyOW+tcNRAB+MvDhrsEfCnpanw0KA6+IR
bSJ1aslSfTMr9HM1Lv4PDHC/mlrmJ7G3bsy6i5CY/l6b5FCmP76J3RApXaUdFuLo/dcyNnkCnaNm
8XUPW7mmtIce1jFu7Q/5nfot46NoLpkm4nzMEvjj33hVILaHvZkHhzclUd6k8GOpANfOCs8n0Q4J
CrrKjCf7HZPsd7YWgQmqHU2ZdhwAgjuw76tGSKk+pfJl+PSdElKXl7LgLu1TYL5r9tQvVAz0Nu14
LWuPSxDPZbP5UlM7pRbeRLrx2VmmZ2HlrXLVi27DdrJRD1SiBghAZDC0JABS/O0pvhZf/X4gI8ZZ
ATrkj8BjsTxv5XGqRs0iOGtLFVQE790N+5mfIGYXtr1ti9RW+BmXlpto1wVqJaUBrHnau6k4fLX+
WDK5k24GvfGw7ZE2LQiSjJAptVOCaqXvpYbpNJGDnAmxjH8kcU5J0EckqsxF/OFWqf13un7dj70K
oOfpKukHUk/dvM9CCah/diagt5zYGbgYeAV+yU5QH0vN6YG+WVXpa5cs4n8pV83LkHRXlb7gBOCb
SWImLQgdvEduXSke8z5oA6fBuY8iTkJEJiQy3VN/znmX52+2kBBj825F3cODmkIifHUibSof4WFG
UpOgxMivXc/GBeFChZ/qVWWxhiUNljWf0cYDj38Ko6xJ6XXNy6VdnQ01wCSj9PacVdHgw90+D4Lc
KeWUfW2BQ3aM+yW8FlZYgvX0+7pPjp7T6qHWbjS8oVilsalWzsTIHjJ0+Q1zGunfTyhs34GFimxF
crQtp50B5WiahZo02n5/Jj6EBQ/EupVvsVhLxto1GYNbLdAhqmZNRnps0GCKPfTLsKagNKy8JAfv
0eZle7v2B6Ls1v7NK2B2Q4SF1pDIidDD27+W86nhoVR1/1wR4z7VNfqOdrmJdm8ypEQl5Iu80dbq
I//G+t6lTe3tJGpX2DLNoawl4CloBb1Rf3Ud8rAmcHIzKV7ZVaoUmFI6EkpeRHpTESFAXnQahXSH
OHU39OXtf5kEfxvikTWOOkmEq1tLdxAlPxtoUOdWqsdzxVJA7ShNOyyJa7bZunlL2xyz0YbOLX4w
COlHw9REisWGZpI0wwOgfkSvGmf+dV3Nsamkpi0PntjUKRr4j11a2htr6C/VGB2Tc2sZ5HVqT+UK
UoqbQcaViDc9rdtsj4QQTgC25LTSpw1fDin4QCSqZI3Mz4Im1bphJlvw1SVLEW/WO2KcBD/AdMQK
mbS1HRalp6OSN8HlovIiRsxcMIj3HujAiyFR1QOs/D5VZ7jWfv9iwLsmgJprQ31KBo5sspHJIad5
E2fblAZm4Blj8vB+QqloZ8x6h/bBKIcO3dQFAjU2xd78QFol9klAr/+gjksTLetqB3taZLQMQSfB
rJ6W3X4MkOrEVVF2I9zq15k2mUNmnmGJyv/aFZivG+Bn1aZr4JXe54M9SRi8vs73fDpjCXU4YKNF
JOFgjGipHR4B2Km1PNk7xIqK5As17HTt8NB8GLCgY0QZDfBzXw7vBywPALH8/a4EeQQOScsfC7/R
DrRnNbEaLdWu8GmP7xNxy7Qkm3NZPtgsPCMxgxse85vUXdmKXYHLOwePZfNnlygDysWMk34SOSVm
w+buEe/Ly9d6gv0/h2TuZhLk5eGRJAJY2cIeTDqagVmt6zl01eWAdMrQJQdtb7AzYCouQwGropAD
Z+/qAJuVzqKS5/x/oKGMucIdOTHawP8cGBNnoN82Nkt7X+TdY2fxXVHkakH7A0Szaii4zdJbRYdh
oa/L5SuUhuKMWgMzbbemE9Wo8AwxdRtiV86xtvkUH4lfAiJKTDG7aTGVmbypSIgD0EMiNUL312QZ
0atMeQ92P+hXF8cinyGaaulOXZqQRTlSxAwBLUNU9PLbWesJmkqEqptGok/GfTaDFwYQlTZ+m/XF
L72Ls84HiCp0hY+hTYEKKISg1azAQU5tzua8wrT2U9AMy6aTCizoRyq8ima5pvgQp/6lNk5rsYHh
Y704azEh2HopbKBCRWBmYBmgv1wD+JJtrUTNhYUg148WQQu9a9e13auddZcp2ziH39jdEddzVaIO
g1M8KkR11jsdtLwrPiOoOOgOGdNryjz6T/aR/HaxJgykv2LnTvfws8+tANOdK73BF0fO6tZ2rafd
Xbxc7hql8FXcsf0qXMXdJPNoeeOyboBB+CMq0sGQ61bsmbRmeTQvDLFcIl8ZIAvhJvI2cS3Bl/ki
wbPEWL43wkrtamp3hBVMWVTpA6x5eQQw0WSNe6vBV3pMMMOQ9tDIFyU75BLYAhHFW5tOH8D5NGKS
UJCKAogUo7tqGkkj7SFgbPkcydHhRa67Wz3UFS+04cQ6rdtOjz9hnUpmbNihxRJGV9OjUJwUYxzs
+pkis/PZ7Y1xeanehqKzFkf4nFB6gcDcs9yBYH6MclMjumUlOm3veZaE35DI+p/VvS7Wp/rUy1Qb
iacDWT4Uq4yeFTVVAqZNOGtYmzOTxjBgc6B0JIY7LIpNtbfm85DqaBOws58hVb9aG4Pc4dy/g7le
GHc7C4DenAl/uqVR7u4bMYVThyK50GJh516lj8d4AKKQ40Cmb1hi6q1/SwrBcJwlrCuEuoBWEPs1
Z96N+73SXQxgXKxxyeb1Bb9hNJPep4ZO536Uf08t++2LxVXdcyJf09fWzno8B0DYopiizsOUHURZ
+mME93gPFhY7UtuJmrRhts/6dDz4Qcfr8LnrX6UG7VYxGQEwF11nEaUTmNlJUVFC5TwZejjYD9Ip
9ZIBi+aIx/YlPvSG2SLMn5beoaZLE7vefijjbl6Ar5l+3O1UoKIVxsWYBH48NV12u6yNLP7WnPJV
xvhp54OktMrF8/kV8lou7ij87raaeZu4zd6p9Gp4w2pBOoPteWTQWxZSuxMEtTqs0rggLfO97J7x
AJk+GEfozbnheVaVx60OgL8x+siK2e8iSVh9QCRIjYBkUsnwZiMRnifmG/ytORPK9BGUQJgApDNX
b8ZMFbApIHTg+bqE9P/oc1wwWGVycj8/xvvfk7D8uVNyZq/DRB85J1BVcH15gtb1RcZxKzbXUyAL
yJnymV58vSTVgJMaDfDrs0oG1nC62j5DZfkXxgqw7E+8K26upFmq9NnJYod4wc4zbT6m4WHywTcR
ZsUzl1NR/ss90kdaNSIFQX1rRR7hsOtw/a5BNz/0ivDyvVgRa6FVbVCM8hetvjgxmS7S+guq2U5O
5xYgZONTxlt4oCA4JfT3mxNT3rUvZ0G/5xchBH5kxeEqZoWf6V7jgjEQeD2LzxXXw5kFR0S6hDR5
pgEIZRbT2kvQMq2hAiCz3bqwgX0dxrItVia1XkirDYY0QxKa7KBKGTUBj4cWGXWb2QASOLNJhf4L
FjbSLYOS0OmUlZ9OdfYp3ZxFACxCa6GhnH4XmTdlAA42i/HbpgVeIX9s2pl2XcpwMkl/WMlMXyPa
YKCADhs+DRAnZifuyUB5caCvgl2p4pItLUcQqc3GRa6g+fETcjHlDirdb6Jjx8sgGXdjTvB9DSBp
rBspkQ910rV+q/ZN403f5mW3nxWVhWVlRFfufEmFN0ILbhMXZaG4JwMQqCrG2FWGhRoDBMGSTAFz
xzt0sa6BXoI+tenbvmbgk++CyUc56zPwhkqYkok8bcwhthopz0frs4DUQK14QtAR9jjpB0HTvaeS
j5ybzORgFhwWg/6+t/71T+uSSHZAFBUtkoQTWwQM0LLWRy98lWDEu/4r90sRj7Br8wWK1OctrOrn
5Hl4raIJnYtzq0YDzlGbWmFckdUgnp1289vywZnz7dIOlT+s14Dc5hLepp/VxaenQPvGtTVWidh9
9KWyOnXETjcYCTMqyLFYPbHcLfMyhi7WhAcDYAVM3sM2P+GXPf51KpNudbC9umNbxQolBuBCgJN8
uKlyV5EwRD+uSkaVbbgcj8tESmprYx//GyUkJkVZUHMQFW5d+Wk0PX0beBg6lUB9+1zdBblRuwlh
nszKThocSwox+TNGK02epd1lYrqgtfmJW/9V3kh8djP8fdrusJsBrZ315beDM1kt5UrzCQy3DRnG
AdbJBsP61o9XjaZdnY8ueSMtXheXUF2tJioLeXivcQ2F0qrAz44dipP4HArjDegXWkAl98Tw7B6T
Pghkmpf9JXWfut+7Kt65sU2pBWT2GMXuSUCkEQK7h7sYdh/8V9dMp5tAr8QEDcGx/M2lihCW7hz1
DYpGTpaEVZ7pQ7zZx9bggK2cNg0CIGgrEbY0uIGkOD5wA3f/B4DWSIoSEsAgoRGL2d2HstfHzYMa
vIF0tAocGhvEbXxkqZI72+o8pc3bMT+OKpiLSCEEpe8gH7kDjM2FxO59Iy0AQ1zqzs32SyFO1zs5
4DjjizzKanKr0fBh837wReqVXdbkpZCQLtTncLRPqkGFRAfm+Y4aD628Rdmz44J6bASUCfpoQcXl
nB1Y0vFJ0kGI4JVxkITNpkrgy2PIT7Ni3b6evnR35e6IjsKqXpOsl88vlsQA8CYu85xJAJxtQ0E8
lTh8iMwFHkBqOlQUyZ6VV8qO44xfhI2pKkyMdEaWlkMfYaYwsMLtjbd6ItQGGPA6pgBljOAfGiJz
86tyd6v0sno5OpSY3OYF2adMxpSmnByPG+U4MLC6OLQFuMWfMd8RqnxxMaHZiW5mazoikG9heqRQ
8yMUSyidcWcSAd7qji3DW/PqCJI5g1yj/oYh1NIESMcGRziq18imij/o9sminuk64sSq4smzEO2I
T1k/m1pB5vmVwR8lDTCmvR7QyCw7ndEfKOgThcHGw3HaIHzCK4RaHAaczk68RX2YZxZs/n46Y/1c
S0DH25OmX4jU6m5bnS0O54Sa11Ka6l4IXjJWH77iBd/5decS5h/FtFbzUI8ZvnRqIXhjlBPXVq8f
kV+fEDjKCPw7LY/yf/rhME7sS00K7HItm0RhU9K3+EYXqYwMAXkeQQiyYGYPh44UoqPN++7bB/l6
OzQwIKeRLI/+6CXvrGztKt2yEHqFpyW2A2K6jDlwDT59duDwnAyYvk23/gYKFD6AZ/ut0SQEAPHS
FdBECqokPMOIQlco0y3e2zJYEYq7noEhjX4pZrZ+vdGqIJWlybZV181ZMsm27N8tcRNo0oCyQLiS
uGLJCbgZ2FiINhK285NL56mzZB3AtIaDI2J/2eb5/oLRR7vPDVutdSjRfNMtmufTkkxZ/5O4Jh8y
MQpASmCma706HDzp/EqdayjsJJXRCYFDnKJ6HrW7Hb4O/fatbUEKukbRNNzK7RGoOkz2TtKWSSkw
cvYJgLXp6ZvLnKmYoPaiKDCgQ9XwICm8hZ7NsaiYGhqev7T382e2zTHXOSvz78wx26yI7RK14u9T
QbTfbVqKSoTYK6tO4otaCZonVk8ieJsHIeKWZ2ABhsKnpEuVITKnYEdRvu1qZ1tRf9uhKFbVIFgb
ncGA0tuxuFt6OLObmCXGsE8loPt66KZQBKf3SH9/TWG1g29nuAldRbj4oMuiNESIcUeh5Dh8nhLn
39OskgOuF7WPv4uy9UKU+sBBPmM8DWY7PtfvP7LJDIb18EOPOUjpl0fjo3E9z48VfigpfLZwoGb5
GxWH0bMa0V2nqSo0rb3Xu434jNwPnbCYXLlPFDwL7vnGG9C9ugg7PNkUCHp7b9Mp9eigUcUuJDPi
9Pwx931EbfoFZ5N1ANZgmxLs8vTZ12Ai1rg2WHyw7CVGn0qoeiB9gGkusfwTphpgoQMniDTM95Iy
Fc5xqmvYb5ru3W5LVof4i5x3yRHWx3dfPzLBE5x9Be6fMRXktb+vPDf9zjOmxgWcPaihTtZfkR1L
+7Ip4qXnIFcourZ+rpUZKBJ1HZW4Kci4lFzVMQ0RTzdWrg/IKBTheLqSLkFFB7wYF4Q1UUF/qn/C
Y+B1HG4qwflbIgHcR3SuFjH0HURjf7udTq94PJmI06z83e+CeCFSiiSv1XEz3GbekqPn52WqZugt
TesTQfln/eWhe5ayyxU0jiOdzgZMs/hzqNtD80YDtxSZZziIwMSODtyc2mGIcTky7PAMamfOZhHO
cT4Cf7FlqURFflPJqznq/BycDzm2S7NWfHJk4W2I8Q0+wnhn6lQZpDYOyBvVnIfE0eTPdKjr8RX2
JN8eq/5UoC16laQo/oPHgJBWshWaAUUGira8EHCIWRHpdc/EE86W11q5y7wHEfX9efkyYC+hZjH8
dM1AuhUiTGQEaHLJFZgezgpBw0axw7InfaAyv5ykfzruD1+756hVbNmZr3nYd89bgh/ViMPbU+jk
P/Z227QCK7hnxxMQn0alVP2sHgrPiMfXGyGY27YixuksijmsW/EECBeZnsu6OVZa15PSBjstunIZ
PPCJ4f4gjr3dSMcJ2NUEwn3aVnTEx51Bw8Gn4Nn5eKDf80LE+Z9e43TP5V/Aum28Fdgz8ogeVbOZ
PKR5dvzIFJxnpyp5u8cWxskQBVakAA5jb2hR43GOykQU+cThhfI222yk7Vo+xVupaZ8kvO5wcDNl
PAFFqAReu2qLB1JSj3hD+gQ0sEPe8br/Qq0aBcbhM5gdF79u2mR15k5XnX/JuByMv0vwVU/a9yDQ
iE4vPFoP5VoozgfUf7rYR40ibAcsjAnqRCDp5RLTSm63BiMoWNz+KngQIagn4lFNRSl4ZxqpxXkP
g08J3oMZMSPyqE+ebpi/8kGUcnBxy+6FN2Biki2+4pC+bWUMjUhsOxSz7FD779r/lKPdWXHQse61
O+ZkAEWDpMSwm5svbQLf61FnS23/YddF6EGFpg5gCtBsHsnpg4AMRxgeWplhCC0El4eCQadIoWX+
y/37HBvy8WwtJwFs2X3LiR6KZotF82rbwiTRSaXppozGyPyM+iwyE8LtCr+P9+20kuUeYVG4zAve
M4Ub/1kaWOU1dJsGXISAIwwx6zZb+VdkVaHwGtONCOCXE7dZHWoNv9U+WIcFQjUVEjgQPYrzuEsw
AySlcTMSkyyPlUPJ2VboCFybv2Ke8hLaWMIanfXKQwpYZbCC9YnOY6gv8PxGdalkof6WUU5KmnsD
Sq1dox/M4uWY7KUFNrQgmF+1vHQ5XEWc+0pKx9+BUe8USmKSQSucSc/SM18kyJzcXo8eP/0T3q4j
mHxA3qLuLhrYD77KzoHGy1pVpb7KhzydcFpX7lgk3zfmM7gcstfECn8u7ZLbQ2oRkpR3ybTsxA1I
GnloK3LP2M4SOlJlbWpmk3a8SQ38rD/oTndIjgCPrRtD/3XGJlk1CVCYmdwjDrVEQg26JfTA25OC
bxVwW+rszLHpuODykv89CQTgoTUsoS9lpUry+s5odUEEbnb/xbGiHfSDyfXM9YOjdek9MgELTGpd
t4hhJ0bFXSvk3knN3EkRA6+CSJGQ94yz39C5H++JGcsNx0tDK47fFsYBx0EGstWEDHpuoRCtl987
R1tQVd4jcIzWDXM2KdKN+zwUPkyfmJmd/hyUHmdS38D+rIQ5mOkWQyGQp5/NeQ56nkRFQhx31mO5
7i/V22FJqORJ9AcGpizNEv2nnDaI0rjmtDH6Z6lpNFnxfyrxWO9s9QQvPVl7PR0Ff8PgXqROys7n
SoB8vcxo/xlCHBAzPS/PjTS0QxAnz7JZ5K8OOO7vWwkYdAvjbWv7f18ICWyv2BG/DFNuzHmsNHmG
0YBAen9eHerS+7+NEuqUmtOC+bqJqAbGwqnf4+vlivU7lzxc3xxzbHu215yrKHHOTz8kebe7XSVQ
+g24iehnneuer/RNYWKJ4dNZMSIDRImoYBi9bu6/Ui8c3JeEQC1+Jlpa9cBlzdNyoEDo8dl2QEl1
s6xX7fBpqug+FJu4wCuCdBWhEos3gkh36YBS2yRFDLbhy+oLJp0wOrEBCtdh5IlIrf1XhTgTT4jV
XBwY05lEZhIAcLA/PsMaqXT3yVNTJXPcDkzIE6QeKtIr9HgRhjZ704z0AOy38PYExybE0ghFNUQF
oNX+QN09JwRh7CPV+BeQvZuBPJhRrDUt3AsYJlWA5rhi4N54OBjjMDEXFMripAPyfnPTmjB603eK
8gbT359GKkcN4PPjDdvIG5eiX8L4TjsosiLxpMaqrhWrwhklT97V4pp/mHh48Wpne9cvDHavtNiK
pczhoWLDDLAMdrcq2zgsukoUgYsxhRw+TMd5Oi4C2xfdmp+f/nICVQIoZIzXDte7G2Sw/BAWpsQp
JVEjgWc0ID3ha/nHyq/rYMPQZGAxUzNu7cssUPEBVbVOLO9QbOTCuX7n+nlK65hNa8qk+lwDCj6e
KwSts7LsPWfyPkcJYkz1itbCf4PgAPK/biVmwCXOm6Fsd+mo9KSNezIkkRU+Sga7i1X0aECTSmal
wuI2LDYFQu2xk+pzDxuT909eWJ2Yi7sHjjc8pA2sQIFe7R+hBJ9vyNsGReZUwYRHO3QvwfSL4i7D
ylJKh9NjSUwwv+FJbBqKFFesNboWk97xK3e+FT/RRgWRcZyo03dw8kJBN1SEsynQjjXAPmmkPK0U
qDYVvz/B3SFZXib+dOZPHQiZMJcYMWZk0PB1oFiy+Rc96xMkESrLLQIX0WLttKfKUavtEgKWy2Qw
Q2qF94/k4OVMoebFnPBpcOYLAvzpilCGHtXOzNDBQiO0uGdXefQblItI9xX5S1l2v2bDY5NyHIpO
y0q7iosxYHBrFHklsOqhf2t58tajSxPRWF5eipcuiXnSooNaKJWc+TzBQ1XQw/ZU37sMwF6vunjY
gZ3g/UWXQY0/8r+tZT22T7RgL+TdMHK1fMGqPn4valgWUUlV/9nxPsfgW2KjTH7Sdkv5Rq6gno2s
4sXH2CQ6ZD1quqKIrGjPxzCpkcLm0wN2R8rXFceOWJDSr2sXVciurxXSWBLGnwiKqb0STat4IGnn
sXzI90VYZCMYCruT9axkiLdenD/IfYjy8eWSSVmRLgS01eP4ddj0mExPVeNN1dPn1B0xA7ZTrbSx
s7WXdiVQ5MFjvsuccsU0tClqOVNvDoIK/CWoJ9eCio+g8ZOWkwh/7TdmJW6SeYAX2gbjANH8qv9y
dODQChm3/mD9Y9wGN+UXOsQ2YWcVt/2KZwjP2EW35tPe/7ZLzDPOCLLxovN2o7xAPwxfeYriRjOe
K/rZSr2DQ+lCRUyh9F6kGVIG6FcVuc7SRlyoSGkr47G0KLOpwjKDTVjk8sZ9Mllv8SGE9DZ3TYrS
DTxP7DO+xHfqDci+rdE3e9awkxjERp0Q9oG0sVuI1jLF4U/+TAh8Yjae9m6y9bkMluP8mRCVhOH/
QLiLqhtjVZLpEULp/F9LXkcDt7blATuC8HAPOZpAQTyDPujCe2iMVYrhfXwbGY4f2XqF/awhTy9e
AekfPY5of12esd7IxXSXnOVGudgE0TG75AvWfEkNyzIq2AlnWR1/4y5Gp9xKw0U8CCIO+F5iwyGx
62odPPEjubWUKWTtGD4y1k2/ai+9whvOdRzem3qEnq1Iu8QUsnZ6WAss2BGO5HqK3OkULEWsKiVL
wxGwzq3Eku3Ex6nlWN1j4/xTON1ZMMsKd17LhQ9zQJHKVkp8TmW2gMl4/Z/5XVKxIfkP2eJF5oSp
MmfjHr4basHG4dL191+5DdWKncLPrYi1HI6fvS9Shp0RfsWXAMDUenxJOk82iAhyzNpXbeyRxFwB
kpi4DDOS4hcEfS2sEI71Q/ZiL7vrkNWnPunl67XdTsCu/hHI1V5/KynPyMfRqIgBrgTFlrO8szhD
pbDw2gjNlavTMsr0X6HzqJOzXi3FbhnwvUeH5imr015cFqGqvt3fgcj20t+oO2T8r86nx+FRm6mw
S0wY6Z/+qr665GEpe7obhlHH3S0Eg4MAQuAtP5CY9oEZbtkOechcij9y8RAIzcIFpn14V6ZzSA42
Ofp2zJo1LVhXVPlw20ObpjfJ4ZYWq2PAQGiyMsP49bM8b3zNO81Sy6lKifr3sIc5I8nPde5Xov+E
RWFeZiNuOv6cQu3nuMtqesmksVignY3xJ3oRHuuiBho1O3XaTMwrrY0ZTUSV3T+QGwKC/egGDdRZ
GtztnkQjMx19pb62PEEztEexLRcz0w+xWRX0A7lUrhflJEgjbDcIq71LgxROLEL/zzPubFIhJ3OM
Ei8M89s7/ihIYVPRRmJ7952ENqijW25dM3XBqHK2r+iRbOMo/HIyDk90KtzaMP6sdvGrSNBdn8aZ
RgdKw+gzIhRqKO1cITXAxz4fHw5vecmQCbw+q6DuHJhC33jI6VwynmlokyrvEGmO6g+gNdXOem3N
4DlFhpDzT/CAx6mBrePr9nTcZSHoe89xN4ObcCm54DoXtuY2aWey/OKbdfivvwb/4XdykAsoh9mD
4SIXWXGviZ10XI3N0lafpcBbb9eTN5bveHME5nsR9HI2GAnM70DMmlfZ90s5CsjDa6XYDEPnw0ap
/bQ3CWaj75G9gtEkA90dj+nassdd4Qs/3FCfZyZ+hecOwtcg8qA9pB+47zcd3slZdvjmkm3l7LSz
nMbt13XDEVP2kt3Fo/jc6ACAWuDf7LKMmIUoJ5BKvV/A7D+26KN9Rx9MG/C7Xp2NGHo4wIzNxiyn
NyzGRkGpd2ttzkX7gJad+cKn7U8jE6H9YbKG01054jS3YPalVWopH25n3XjgyOjzIWLPU2DPd4oL
X4mO3zl/KuzoknVGjXY9nNQDWgfTFzK4i3YUBohgscYcg6ZPtTR0SKa3HsOx5YawK0FivcfJmP5K
UvkjeVBoKE/5lAOdP0oGwLf16g9118mz266NGSwZ/SPausJfdL1rsg7Ye/5lb1quBEBTrrDwbW3V
CTcCHPVCCQLVQveZt4PuaGsPH3vgCWgxzVCjCnqemwamv7gTC4vqxrfvJ4xTsrrhZ7Vx73G7cIBT
oWSUXKqrz/s5qp2dVXBcQyx+d6GkTa0Bv8M8gBu0jVteGg39nSfV8Lli4bCk9/wQSLmHM7ztxBDG
Kl5d1X5s/poj+EehfvPfTvlrHiEPatZxCwhOmVLGzSjQNX+aEnYrhQuQ+rCx8AEwSM56IgSYIzcV
i4yA1j0upyakh9hb7JSp9mp+8grfM87ohGZvmpoqdqNH34en5QzuTyj2A4ejx4w+j1GTX3fzPQZS
73mrl5N99q88h6MXMenOGoNBr+eybLFhfoL433xN77LJ1qVxJ5bW9810yuCNGpWqGXLV6dR4q91m
d26xFFqZQToA/o7oZLDPVE2DMasVMZ2pYcYaDhm0NYjCWB+JdizabANJx8zWOr7V0yNJJ6AQ/IDk
gZxYHSYyj8f0o/nz3p+rHN7fNeg9NmVf88j7keKwVvf7jn6LbHhs6/de6oY1izCbriofEmcgwmCw
KR7l/QPh/yFAcXNJQatZaKoc3fxhDGH8J/HYdzM6S6tFfLGRbPjgMqtwbkU+CdunWxe+2LRR0hPw
Ia5A0ifp2hs1kZFtX3Gopjlr+gumoDrfIRquq+Qn8W6AO7o0GJgBjlI7NRWuZT5zylbPNZmbELLI
ZQPKY0h0y2QqSzbuMvSmco9dx+cjfLZEJlD9r8/woohf5p4oTv6OWyJUrKel/iEjhoFbBYEdOD3B
DibUncfTjGNNQHKvTohPj9JSco+VEAY3ylU1FUDwLzqClUM6T4fJvHOsC/fA2//BHqUaQUUdvt3f
GMH4ah7H8CEoMCThWmhHhwPF3YeS7YkYUtq9TrR0dvphHpgr+FGoVk/CuiUWv96dFat08NHM/eAO
e/slo6dH/iBb6fXkYxTGInbXjyCw/dXwTyqMbsQUhsJQdZolX0qq0ulMnBm/3EDvAoWphZqaPhOB
RXRhhEIXMPYepHgfFE/iOqPAETCxNb4bFmwK59dr+0Gi8DdxrB5XxtW9vKs72zX+9dweUYB4so9U
7S/hUy5RBzJMppevn6TOw4K2CLoyoQd2RQzyZq1I8uYdS5I3boao8eXoiLeoGmrgm8cnIMoT5QTN
bKoZOdMRahPfxsma9B7XJXVLcSfAGk1+vO5vP6C9gZxFgIfscfMuRw9GSiUu9q3tzb6RyElpgN5L
kRP5+A+ZjJlLj0lKuymp6z8JgbqQqBKngl8p5b3MRyIFSK8DVteCgCNT4Ppg6syiUdK6vXKvnjUi
qE6zX3jRDZri1aHqio+KaEwaI/lIJWyLXrudebgN1FxK1+bCeyBH2f03OWFYzzH4KoJcF/DkV8rW
0Q+M7zKqjVGyK+lH7Gq3LF1CokhTSm7k5a5FKWd1gUqQMK/uRYEQ32+bmYqnlcCJVlXmAVUwLCK1
/8z0vwy9hDETDdua5cf8ilKOsYoAtxUPRPKvZl2+Pia3/Hp2CIEJd/QOAJjQSmTsTQd6YgBLg5Mg
f5od2/ZO3f0aDuBAc7kQs4aI83zHsT5JtS3tAXAW6pI5PvzQo27RvD1p60FwK7CuGbaS8ctma1JH
nMxFXTeJDlZFBQYozD/b7aGCeoVPyIsVBiIiS/GT9woa0MGJEUSNhce3XtrQioEaWmOEZ6LXPSGG
ogAsJLNgXJvXiJtbXMMWVzT0npRJRX3iQfIVZASpmbMbhhMNooJ6Ok0ksY7eVzfEn2fjyVes4q96
oC/qI/kyNqKcqsW+DPi9XJN5jVIdQ/FDIOrfUFYmnkyXb6keLe5cLwWm88s9br5BsKCOPA+/48ip
qXi+b6caWfAoGtHfTykdgysfAfIJVVCjBO8O46orAEU7X1Jipc+BOGipu8haGMyafsaok0MX8/oo
NumtefIhAseSx6FelyYa+0bWuZVfs82nZyvSeoq6Re4+defd5XIckRO1jr1HSTBAAcFOlnpsqLkp
hYsBHn5yq87Pv42yT9Vi68TSnK8g5qAt3/2WShmBdmxqg9fktDTX7FJQZ62XpwQhACqrvld1h3zZ
+rcPjQc8SS6Ylb9s8bds756U9cKlPIwjWVsQzYVtfGmCaPoh67a3BxA6bkUkxjmFZF6o1HdUZZrM
UFD2rXn1GgVKg59KXU+L54Vou0j355Jli6QIasLwrrgrJLF4DC8d4OyhH22aX2ux/osH2DYrF0+X
+/q8SdPwfcnvFWorIkZo0WCH4MLMnUzX3DMUa9ESjMIzzRALBAAaU37iT4LKOpZZjQlDzJAaoW/f
oYy3nY8PFWhS+s7nYLeCXAa6XPNk9mKfFfxnDtfkCCS87IXHaAceH1EiEJGbRFZNbYxUatjdS9Mm
37wUjGRh3yyas67BaaVge/dSkCIqvV7DsLq7h5amUPqntVKg0ldmbj3gzE+/UIRxzQ/1Suv22WO7
Z+eXunuq+grUKo3ojO/66WfJvYXumieiC8jfUJMqiZaos3tC3MtguRdG5HTK62twqjXvilpmJh5i
hx2fqXB3dsgUioU2icfyQDHDx2/2qqG674kjJTXrS6mXbxUEyErq06pzMaq6aCEHSTtXb593cUA3
6hNNBCZ04DnisUSYcevpddhtLeqw9AhXFk53da2jPFry4QFCw9ZkvlahohWvmccnkhcjuV9fnAB/
kSBzciirw9sX0dUoGJII4xluRR1s7qcGJknscLS1fCzhOmup1kPv7lAzYR0YcRkHmJVS8lKSPTlV
mNBGYoH2nVTgCPpT+lingIhkmpkP1BOceeDOQiXNyZssQXlCXjtilHS1xCgbuDUziQNlOtsOiL65
9kXWmh6K8I5B1zcszUI0D4weDUqI4zwik/YeYayRdUWVOwblae7iBNKmDWHGpn7RKAk7j7z8hCam
zON+Sy4I3ZSyIF/Pbai0E2mdgEep+PH1GzMlBwKlQjZHJmFvSLVBNNn9eePtTZsqPy1s70nVwp3V
R94kzSteVT3j+ZOQr6BRrPPmZ3ZlPQP95MsLBtCAroG7lajHbluYJ2+3hMij2ODbnpjEmpzRvDqp
aAoztCKVoGT50ZTCVCeaCSISIaazumD8bW6bbgUKG9estP3H2PeXeBcKunPvB1Vy7p2GLZXFQjoT
up349hgGCEdmVGzhoTN/9ystGU3Vmk8OoRSBH7/wf5oxqs30ILdsgE+T3Cabg7NrfSn2bdqtHO6U
GvBnzobpMhP5u7oF258ODUaJemZlbZCf+5N0LqA2azWiMWInkNgmdetsWPRgDT+dpdBRT+BTOQe5
l40zZC8Iq3w/p38vISGVmNGl4DP0RSZFuRaex/MKPfezQp/+filTQH/zEUx3r5Lf8Foh7PLRYAXr
VimSl9xRXSqkYRxbCj88JGc09HxoYqasUMHsAOylHawzUqfzeTjUkCKmFvyMhcyygXiq6d367I4z
q6jNp09/RdhGZuk0KdimqdYkeenpdpStRoazuECIMxmjbzH0ZllYUz2HHPC0QtWucL9z6i7r5/3A
YmOyd5le92crpcFKNrJUpfQLhPbMxmWtVE9cyxwbH+5S0u1TeNeatmakvJHBbkDbgxz/BTr7a4+X
0Fx4fdr5LN6Hd0OdgNRlcstucZfxIMjAY2Dp4ZW/RC/2VJKgTMaT/yVvqkpFcQIdrHtr9nOq9hM1
pnGL74hVxlF0CHyDqblfL3srsfT7jmoS+HgoENtd5HHgFLLK6YZXICdnBz4fA4uzhJSl2fg9f1GU
ShHft8Q7Pyn+8s1xLy5+2Wi2JNc7ZjgzaYn/iUxxrCN4yYU6N+5MtUWA/rolZcVre7EPfahf67rL
TDYL5QQoeY/VbL0R7mnAuatHFZaZfRMtnFJzJD3i7LYBxAe+G1ZEK93xtDdrJr4BAr/jgcyZKCmv
/9dxd720lzq7d565odMzYfjhkJ9MkgjBazUFvWRW618i8/q+qyDy5gzsdeewOCM14SXT6ZxQwlMy
d4oSbDiPzLP5q4NDv/Q5qdqCE40g0PaS12gSHA/KD75/VV8KiUZ9K4gsRc18whnQhLd+81uLEZIn
biWcTwVpc75DaoUAMMpZjEHSaNqnPgcw1slz+/rWnwL9TlXoIfMnSr1affnUUzVHNRFwbTDsU0Dn
zaTOgdM0ax8Lsk7D/cGqxy0ty80zhcg2HaP+lBX04Z5BYRkLYhQgM8PLJYZfeEc8kItS9CDe6Pcr
9T2jwt3URdEd/w9T37M4ScIO5K2ZTzvvli2AjNfZGe/gyHXvdz8J84Z0MQwh4rRbDQR3bRLKIvCM
B/rol31rI7mq0yrOUm3Mfe3HdHGEaptazmL0gB5+XQO0adgeES17VLkFZRnUs+QqI4s0Ay8d4BeD
93cuj8HXoRh3oL+V0Bi+cnEKnCC0afz3U1DEuQNX8GCN/eGxpn712gZ7iJEP6cHRYJOAp1BJRNpO
BbQTYYbFOoio1RMMXZPyCl0n9GV70FjmTmKfsoiX/hnpM/XSY/UXc//tULpwKQMII0BjdB7N31E4
CCbv/2hqlqvu/hsn0knBzvH+lND2Uqmuoyy3DWKjhNbxmDvr2nrLE1H53RfpkVSpD0w1l068bKGu
E2qnOM9kwXvfr+KMnzWa/PEyFrj691cnTe9g9GQ1/s1cVczmUw24uCvgNcrRiE4m4SWk9VO7dUlh
rxyuQ95HF8aqqeZ1fsoT4GLAIWaA88cOIGKdlgdjGWcTyNZ6ufllO/x92+v+OfOsyOIsVWjRemB8
Z0gbnYHQWa4GsuQcj4pwd02GZyxbzXD12XNI03S9S30zg/BRux3dRZoAfkPQjkBzrwbfI2Q3y1wp
C6krgxv7ZNJRtRIodvFvIBYTZoDRtFQKX5wAAgV9QgRtIQmfEWtEJeV/cJ4xwyNp8Dd4XepUprSa
uIDe9HdlmPsc02dT3msRK9MHIrFbjJy/VrSJI3ujro1/+UYJtmw6avyy6vMxN+wIdyUMDjRunPzT
W8gy6rmsW7dAMYDfsYJkMI8rN2DfXiVYTcdnHOX5T2dwdW53vpjLYd6tEmjg3MGDh7VvLEi+zA1+
igc0ECdieM4uY7wgGka/rJOGMgDN6GejQiksFNGamAJkA0Hvl8Iom/KdDXS2rr413HdL8KqX/Ghz
rBfQuR6rx9FxkiIMsvwssjHOQUYHjyIaPnv4Od2SsOoPsf07wn9vypspJ8gyqdBtJur6fjUlCait
52ZQEKgg9i36zxVN0g+tOq374O4MgIqwbcS+W4+mex/Fi1F4SeqRpTJ0in2O+JA/lIuQ3p/xduKk
70Gb4Mo8gIe3oZYcL/e2OsQXJSSJA2T/glKVO+22l1hUmQJcyeF2ZSQ9irJafFYTAyuzjy2nVIFe
OsfQIekpgIR72B3hr9xnPYIU0JFLk39nulYI6WSN8ReYFkcdICOTjZYmQX8REnn5djNrsc9BsO83
oskpcMWAS85ilC58PyMFN0aZ9vdmn5NzEVWKZQ1ys+e2EBM2b6/JGDxmlHreDt4ak7XY4X6hZy0P
pljkNgekCvn174UKY4AI7CvAXR624qVT51OH4fBonk3emZjIBLxrpHJ82t0HKrxW6Xq/5BHWzzXP
WqU2L0Lyg+WJhqzIjU8mv/xmpL8ig6d/BXK1Q77p/K8ufBTRQtxIL0/vAz++GCXSE/DjJncIlrAo
YW3GEdUzi8RVEmvFYPiVBZ1I42mbnZMdMS2uAlggnBQGoqtsuB9tIhmjE+ZiSsJaRDXRpivYlYMD
0Oc/3K8OdUVdK8+cROpy2AF1R+Z/zvoRS9AolJ9Ot5Ufavw4WxP8ZhTPnqh8vQl0ID2u5oEGiJ7T
0TeY0Q+E3i5JCXL1a2mk2gPKIsHzCYR+y0KHGdEeEuXo3EptrrbbUf4mcTgctgs2UC3sx1+BRdxg
dR+Kitm4YqpjLtJaJbR4xKt7/AhvVPE/Atbd6wYjrsOMFaW2l+qhT//J4N6FtiyktyVQbpUM9O+9
UVcWvQfouCKa4Up2C5fb1SrDpIPyCoKYQsyjRjoM/DXQ+P991/3uYXfG7EViyD8R7gSk6P3bjQ/W
MLpODgmaMksMMc5qCz3gHY+1Yy7Kua/+dikKYhmhGbiAc4h942mqg5Da/Agt0sKTXRuYehvOpKrY
Ud7oU8BFX/9gnZqKqRRXy7iByLyQVILVW7xXP1pt6+JiYgKoL28U507sYoA+dj6CDt0idc+aOue/
ub0hidZYyfaZYwkrQx/LtuZTVTpIj/+ZQ+KrVwDioZYPi+SFoeBOJT/0s7NiJU+dBAA5fZoWsjUj
bVqA8G1bp2Xf2jWMF6ZNSF7k5LwlC3Q4BLbdDUE8XSlPaOqrn/69Vy9Kvj/oT9DEb61EIaPjXV5E
NtA/HtvKtg94nh9swKqB0rwEnGArPSZ8LwqSfrA2FMLS6wbEo1VYgdU3aGUqzThxr0EIdxsV8IvU
ytk31hD1uTOAzoDjNt8HrMtAiEZ3ufL6PYaWpfbaYKfEb442HXpGxWSSyPXE2KxlF/48OOZ5pLsf
fPcwqUs2U89mB0OYKzP3Jv4XFtAJyyb4er+pRO2iQBRCDLxpCtnnx6hmZ8nCysjnWpcLqvs8WQ1W
zjuaXIBvZLhXaNxYmybEuAwlUUEY8V1yWjuFwp+uFxfoWug8QLAtE+CEAikiLsh2DdJXXjZl3XpL
Ep02R28i/Hurgmw5lIh7BFBR/MVmu7CFBtVzISuMdtwO3RDbTLI49Zgr/4FsuYvfGIF9l7TRXVhM
EbsvHzaQvuqXI3pm6kaJjhd7WN+N3HOw/igCsYk+qTSMuS9EFzQXqk1esqdTtOGCUsF68yNEczqh
7CrjOyOe+Cy/qzQzolTEul5Z0X1/F4PlDSg5Q+5d/htYvyypXJubdEsZ1ZHqpMPbtMe69VphEhY5
9kq0DZ05xpOyYG40GgKfENU58eO6jbUvqYVgRFuMkDDxEq2UR9++g7PsTRmZGHfgPOYGg/fsPXkg
wgMMe7gil5CnGPVwBFnjxgzjBW2CWBGoioXpxAmoTZi1kg164aXjTKe+8ZukHZJi6OXG1VaImRVw
LJEtQaCBWD+obycwonxdYy67Soeidhcu48JzZFhrw2NArkjFJfKpSkfPYGj13UlVJGH2Tqv9etQJ
pUWQcC++RwGspyctdFdPbCY182rgJOtZ9ifEKfsF2UEiBPvw8TcdDF/m7cp+wlTfcUXToIVOSykn
nTt51nXeabl3tcgHnszPYWSso6/NPUuUw6SJXbGVrE6gdh1g5OUrPRx5yWLDKPUNuuhNhqv8c/OI
HG0sfa8t/5Iik9c/deAcJUZh5BI+rL3T9yAelXnGBa3FXuAsHC5dMsdHnAxZkNve8FeCbpvLuy4+
eMB0n8RSApJ0ZrDNr5ozkQVdrzKrvGz3fBGlaY+jk2lkaX8bj87FTyeJkcSEJb6xFdh5+V1X/oOT
CwaQSAtPM3FCbb7A638YW3nka3CeVMTmGfWn7kIx/jHQxw/INRLYwIlxtRnt5QvkVaHKT9gIpopb
CYky8CMIMHeQaKNXdPIiRx7fWMnIKYm1A4kxYJvhAsKVk/higPLgyZbxriKoJgfLwiticjLuhBHh
nYAchWWhy2KOGhldEI7oS0wx3k7iqy7/zLSrFXc=
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
