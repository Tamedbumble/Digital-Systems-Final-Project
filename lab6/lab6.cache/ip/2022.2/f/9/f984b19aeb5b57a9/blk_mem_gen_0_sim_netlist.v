// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri May  3 08:35:22 2024
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
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
6kRFmNyBn+iTvsPDU8R/VtSAr6kOyypcoK3sNwU=
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
