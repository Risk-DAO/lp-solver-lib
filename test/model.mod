var eth_1_dai_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa >= 0;
var eth_2_dai >= 0;
var eth_3_dai >= 0;
var eth_4_dai >= 0;
var eth_5_dai >= 0;
var dai_1_usdc >= 0;
var usdc_1_dai >= 0;
var dai_2_usdc >= 0;
var usdc_2_dai >= 0;
var dai_3_usdc >= 0;
var usdc_3_dai >= 0;
var dai_4_usdc >= 0;
var usdc_4_dai >= 0;
var dai_5_usdc >= 0;
var usdc_5_dai >= 0;
var dai_1_usdt >= 0;
var usdt_1_dai >= 0;
var dai_2_usdt >= 0;
var usdt_2_dai >= 0;
var dai_3_usdt >= 0;
var usdt_3_dai >= 0;
var dai_4_usdt >= 0;
var usdt_4_dai >= 0;
var dai_5_usdt >= 0;
var usdt_5_dai >= 0;
var dai_1_b >= 0;
var dai_2_b >= 0;
var dai_3_b >= 0;
var dai_4_b >= 0;
var dai_5_b >= 0;
var a_1_eth >= 0;
var a_2_eth >= 0;
var a_3_eth >= 0;
var a_4_eth >= 0;
var a_5_eth >= 0;
var eth_1_usdc >= 0;
var eth_2_usdc >= 0;
var eth_3_usdc >= 0;
var eth_4_usdc >= 0;
var eth_5_usdc >= 0;
var eth_1_usdt >= 0;
var eth_2_usdt >= 0;
var eth_3_usdt >= 0;
var eth_4_usdt >= 0;
var eth_5_usdt >= 0;
var eth_1_b >= 0;
var eth_2_b >= 0;
var eth_3_b >= 0;
var eth_4_b >= 0;
var eth_5_b >= 0;
var eth_1_steth >= 0;
var steth_1_eth >= 0;
var eth_2_steth >= 0;
var steth_2_eth >= 0;
var eth_3_steth >= 0;
var steth_3_eth >= 0;
var eth_4_steth >= 0;
var steth_4_eth >= 0;
var eth_5_steth >= 0;
var steth_5_eth >= 0;
var a_1_usdc >= 0;
var a_2_usdc >= 0;
var a_3_usdc >= 0;
var a_4_usdc >= 0;
var a_5_usdc >= 0;
var usdc_1_usdt >= 0;
var usdt_1_usdc >= 0;
var usdc_2_usdt >= 0;
var usdt_2_usdc >= 0;
var usdc_3_usdt >= 0;
var usdt_3_usdc >= 0;
var usdc_4_usdt >= 0;
var usdt_4_usdc >= 0;
var usdc_5_usdt >= 0;
var usdt_5_usdc >= 0;
var usdc_1_b >= 0;
var usdc_2_b >= 0;
var usdc_3_b >= 0;
var usdc_4_b >= 0;
var usdc_5_b >= 0;
var usdt_1_b >= 0;
var usdt_2_b >= 0;
var usdt_3_b >= 0;
var usdt_4_b >= 0;
var usdt_5_b >= 0;
maximize z: (-0.95) * a_1_eth + (-0.95) * a_2_eth + (-0.95) * a_3_eth + (-0.95) * a_4_eth + (-0.95) * a_5_eth + (-0.95) * a_1_usdc + (-0.95) * a_2_usdc + (-0.95) * a_3_usdc + (-0.95) * a_4_usdc + (-0.95) * a_5_usdc + (1) * dai_1_b + (1) * dai_2_b + (1) * dai_3_b + (1) * dai_4_b + (1) * dai_5_b + (1) * eth_1_b + (1) * eth_2_b + (1) * eth_3_b + (1) * eth_4_b + (1) * eth_5_b + (1) * usdc_1_b + (1) * usdc_2_b + (1) * usdc_3_b + (1) * usdc_4_b + (1) * usdc_5_b + (1) * usdt_1_b + (1) * usdt_2_b + (1) * usdt_3_b + (1) * usdt_4_b + (1) * usdt_5_b;
subject to c30: (1) * eth_1_dai_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa <= 4000;
subject to c31: (1) * eth_2_dai <= 5000;
subject to c32: (1) * eth_3_dai <= 6000;
subject to c33: (1) * eth_4_dai <= 7000;
subject to c34: (1) * eth_5_dai <= 8000;
subject to c35: (1) * dai_1_usdc <= 1200000;
subject to c36: (1) * usdc_1_dai <= 1100000;
subject to c37: (1) * dai_2_usdc <= 2200000;
subject to c38: (1) * usdc_2_dai <= 2100000;
subject to c39: (1) * dai_3_usdc <= 3200000;
subject to c40: (1) * usdc_3_dai <= 3200000;
subject to c41: (1) * dai_4_usdc <= 4200000;
subject to c42: (1) * usdc_4_dai <= 4300000;
subject to c43: (1) * dai_5_usdc <= 5200000;
subject to c44: (1) * usdc_5_dai <= 5400000;
subject to c45: (1) * dai_1_usdt <= 1000000;
subject to c46: (1) * usdt_1_dai <= 1000000;
subject to c47: (1) * dai_2_usdt <= 2000000;
subject to c48: (1) * usdt_2_dai <= 2000000;
subject to c49: (1) * dai_3_usdt <= 3500000;
subject to c50: (1) * usdt_3_dai <= 3500000;
subject to c51: (1) * dai_4_usdt <= 4000000;
subject to c52: (1) * usdt_4_dai <= 4000000;
subject to c53: (1) * dai_5_usdt <= 6000000;
subject to c54: (1) * usdt_5_dai <= 6000000;
subject to c55: (1) * dai_1_b <= 185;
subject to c56: (1) * dai_2_b <= 212;
subject to c57: (1) * dai_3_b <= 331;
subject to c58: (1) * dai_4_b <= 544;
subject to c59: (1) * dai_5_b <= 655;
subject to c60: (-0.99) * eth_1_dai_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa + (-0.98) * eth_2_dai + (-0.97) * eth_3_dai + (-0.96) * eth_4_dai + (-0.95) * eth_5_dai + (1) * dai_1_usdc + (-0.99) * usdc_1_dai + (1) * dai_2_usdc + (-0.98) * usdc_2_dai + (1) * dai_3_usdc + (-0.97) * usdc_3_dai + (1) * dai_4_usdc + (-0.96) * usdc_4_dai + (1) * dai_5_usdc + (-0.95) * usdc_5_dai + (1) * dai_1_usdt + (-0.99) * usdt_1_dai + (1) * dai_2_usdt + (-0.98) * usdt_2_dai + (1) * dai_3_usdt + (-0.97) * usdt_3_dai + (1) * dai_4_usdt + (-0.96) * usdt_4_dai + (1) * dai_5_usdt + (-0.95) * usdt_5_dai + (1) * dai_1_b + (1) * dai_2_b + (1) * dai_3_b + (1) * dai_4_b + (1) * dai_5_b <= 0;
subject to c61: (-0.99) * eth_1_dai_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa + (-0.98) * eth_2_dai + (-0.97) * eth_3_dai + (-0.96) * eth_4_dai + (-0.95) * eth_5_dai + (1) * dai_1_usdc + (-0.99) * usdc_1_dai + (1) * dai_2_usdc + (-0.98) * usdc_2_dai + (1) * dai_3_usdc + (-0.97) * usdc_3_dai + (1) * dai_4_usdc + (-0.96) * usdc_4_dai + (1) * dai_5_usdc + (-0.95) * usdc_5_dai + (1) * dai_1_usdt + (-0.99) * usdt_1_dai + (1) * dai_2_usdt + (-0.98) * usdt_2_dai + (1) * dai_3_usdt + (-0.97) * usdt_3_dai + (1) * dai_4_usdt + (-0.96) * usdt_4_dai + (1) * dai_5_usdt + (-0.95) * usdt_5_dai + (1) * dai_1_b + (1) * dai_2_b + (1) * dai_3_b + (1) * dai_4_b + (1) * dai_5_b >= 0;
subject to c62: (1) * a_1_eth <= 123;
subject to c63: (1) * a_2_eth <= 256;
subject to c64: (1) * a_3_eth <= 890;
subject to c65: (1) * a_4_eth <= 2001;
subject to c66: (1) * a_5_eth <= 5000;
subject to c67: (1) * eth_1_dai_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa <= 4000;
subject to c68: (1) * eth_2_dai <= 5000;
subject to c69: (1) * eth_3_dai <= 6000;
subject to c70: (1) * eth_4_dai <= 7000;
subject to c71: (1) * eth_5_dai <= 8000;
subject to c72: (1) * eth_1_usdc <= 5000;
subject to c73: (1) * eth_2_usdc <= 6000;
subject to c74: (1) * eth_3_usdc <= 7000;
subject to c75: (1) * eth_4_usdc <= 8000;
subject to c76: (1) * eth_5_usdc <= 9000;
subject to c77: (1) * eth_1_usdt <= 4200;
subject to c78: (1) * eth_2_usdt <= 5500;
subject to c79: (1) * eth_3_usdt <= 6500;
subject to c80: (1) * eth_4_usdt <= 7500;
subject to c81: (1) * eth_5_usdt <= 8500;
subject to c82: (1) * eth_1_b <= 666;
subject to c83: (1) * eth_2_b <= 777;
subject to c84: (1) * eth_3_b <= 888;
subject to c85: (1) * eth_4_b <= 999;
subject to c86: (1) * eth_5_b <= 1010;
subject to c87: (1) * eth_1_steth <= 1000000;
subject to c88: (1) * steth_1_eth <= 1000000;
subject to c89: (1) * eth_2_steth <= 2000000;
subject to c90: (1) * steth_2_eth <= 2000000;
subject to c91: (1) * eth_3_steth <= 3000000;
subject to c92: (1) * steth_3_eth <= 3000000;
subject to c93: (1) * eth_4_steth <= 4000000;
subject to c94: (1) * steth_4_eth <= 4000000;
subject to c95: (1) * eth_5_steth <= 5000000;
subject to c96: (1) * steth_5_eth <= 5000000;
subject to c97: (-0.99) * a_1_eth + (-0.98) * a_2_eth + (-0.97) * a_3_eth + (-0.96) * a_4_eth + (-0.95) * a_5_eth + (1) * eth_1_dai_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa + (1) * eth_2_dai + (1) * eth_3_dai + (1) * eth_4_dai + (1) * eth_5_dai + (1) * eth_1_usdc + (1) * eth_2_usdc + (1) * eth_3_usdc + (1) * eth_4_usdc + (1) * eth_5_usdc + (1) * eth_1_usdt + (1) * eth_2_usdt + (1) * eth_3_usdt + (1) * eth_4_usdt + (1) * eth_5_usdt + (1) * eth_1_b + (1) * eth_2_b + (1) * eth_3_b + (1) * eth_4_b + (1) * eth_5_b + (1) * eth_1_steth + (-0.99) * steth_1_eth + (1) * eth_2_steth + (-0.98) * steth_2_eth + (1) * eth_3_steth + (-0.97) * steth_3_eth + (1) * eth_4_steth + (-0.96) * steth_4_eth + (1) * eth_5_steth + (-0.95) * steth_5_eth <= 0;
subject to c98: (-0.99) * a_1_eth + (-0.98) * a_2_eth + (-0.97) * a_3_eth + (-0.96) * a_4_eth + (-0.95) * a_5_eth + (1) * eth_1_dai_haaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa + (1) * eth_2_dai + (1) * eth_3_dai + (1) * eth_4_dai + (1) * eth_5_dai + (1) * eth_1_usdc + (1) * eth_2_usdc + (1) * eth_3_usdc + (1) * eth_4_usdc + (1) * eth_5_usdc + (1) * eth_1_usdt + (1) * eth_2_usdt + (1) * eth_3_usdt + (1) * eth_4_usdt + (1) * eth_5_usdt + (1) * eth_1_b + (1) * eth_2_b + (1) * eth_3_b + (1) * eth_4_b + (1) * eth_5_b + (1) * eth_1_steth + (-0.99) * steth_1_eth + (1) * eth_2_steth + (-0.98) * steth_2_eth + (1) * eth_3_steth + (-0.97) * steth_3_eth + (1) * eth_4_steth + (-0.96) * steth_4_eth + (1) * eth_5_steth + (-0.95) * steth_5_eth >= 0;
subject to c99: (1) * a_1_usdc <= 123;
subject to c100: (1) * a_2_usdc <= 3167;
subject to c101: (1) * a_3_usdc <= 3333;
subject to c102: (1) * a_4_usdc <= 9000;
subject to c103: (1) * a_5_usdc <= 10000;
subject to c104: (1) * usdc_1_dai <= 1100000;
subject to c105: (1) * dai_1_usdc <= 1200000;
subject to c106: (1) * usdc_2_dai <= 2100000;
subject to c107: (1) * dai_2_usdc <= 2200000;
subject to c108: (1) * usdc_3_dai <= 3200000;
subject to c109: (1) * dai_3_usdc <= 3200000;
subject to c110: (1) * usdc_4_dai <= 4300000;
subject to c111: (1) * dai_4_usdc <= 4200000;
subject to c112: (1) * usdc_5_dai <= 5400000;
subject to c113: (1) * dai_5_usdc <= 5200000;
subject to c114: (1) * eth_1_usdc <= 5000;
subject to c115: (1) * eth_2_usdc <= 6000;
subject to c116: (1) * eth_3_usdc <= 7000;
subject to c117: (1) * eth_4_usdc <= 8000;
subject to c118: (1) * eth_5_usdc <= 9000;
subject to c119: (1) * usdc_1_usdt <= 1000000;
subject to c120: (1) * usdt_1_usdc <= 1200000;
subject to c121: (1) * usdc_2_usdt <= 2000000;
subject to c122: (1) * usdt_2_usdc <= 2200000;
subject to c123: (1) * usdc_3_usdt <= 3000000;
subject to c124: (1) * usdt_3_usdc <= 3200000;
subject to c125: (1) * usdc_4_usdt <= 4000000;
subject to c126: (1) * usdt_4_usdc <= 4200000;
subject to c127: (1) * usdc_5_usdt <= 5000000;
subject to c128: (1) * usdt_5_usdc <= 5200000;
subject to c129: (1) * usdc_1_b <= 185;
subject to c130: (1) * usdc_2_b <= 222;
subject to c131: (1) * usdc_3_b <= 333;
subject to c132: (1) * usdc_4_b <= 444;
subject to c133: (1) * usdc_5_b <= 555;
subject to c134: (-0.99) * a_1_usdc + (-0.98) * a_2_usdc + (-0.97) * a_3_usdc + (-0.96) * a_4_usdc + (-0.95) * a_5_usdc + (1) * usdc_1_dai + (-0.99) * dai_1_usdc + (1) * usdc_2_dai + (-0.98) * dai_2_usdc + (1) * usdc_3_dai + (-0.97) * dai_3_usdc + (1) * usdc_4_dai + (-0.96) * dai_4_usdc + (1) * usdc_5_dai + (-0.95) * dai_5_usdc + (-0.99) * eth_1_usdc + (-0.98) * eth_2_usdc + (-0.97) * eth_3_usdc + (-0.96) * eth_4_usdc + (-0.95) * eth_5_usdc + (1) * usdc_1_usdt + (-0.99) * usdt_1_usdc + (1) * usdc_2_usdt + (-0.98) * usdt_2_usdc + (1) * usdc_3_usdt + (-0.97) * usdt_3_usdc + (1) * usdc_4_usdt + (-0.96) * usdt_4_usdc + (1) * usdc_5_usdt + (-0.95) * usdt_5_usdc + (1) * usdc_1_b + (1) * usdc_2_b + (1) * usdc_3_b + (1) * usdc_4_b + (1) * usdc_5_b <= 0;
subject to c135: (-0.99) * a_1_usdc + (-0.98) * a_2_usdc + (-0.97) * a_3_usdc + (-0.96) * a_4_usdc + (-0.95) * a_5_usdc + (1) * usdc_1_dai + (-0.99) * dai_1_usdc + (1) * usdc_2_dai + (-0.98) * dai_2_usdc + (1) * usdc_3_dai + (-0.97) * dai_3_usdc + (1) * usdc_4_dai + (-0.96) * dai_4_usdc + (1) * usdc_5_dai + (-0.95) * dai_5_usdc + (-0.99) * eth_1_usdc + (-0.98) * eth_2_usdc + (-0.97) * eth_3_usdc + (-0.96) * eth_4_usdc + (-0.95) * eth_5_usdc + (1) * usdc_1_usdt + (-0.99) * usdt_1_usdc + (1) * usdc_2_usdt + (-0.98) * usdt_2_usdc + (1) * usdc_3_usdt + (-0.97) * usdt_3_usdc + (1) * usdc_4_usdt + (-0.96) * usdt_4_usdc + (1) * usdc_5_usdt + (-0.95) * usdt_5_usdc + (1) * usdc_1_b + (1) * usdc_2_b + (1) * usdc_3_b + (1) * usdc_4_b + (1) * usdc_5_b >= 0;
subject to c136: (1) * usdt_1_dai <= 1000000;
subject to c137: (1) * dai_1_usdt <= 1000000;
subject to c138: (1) * usdt_2_dai <= 2000000;
subject to c139: (1) * dai_2_usdt <= 2000000;
subject to c140: (1) * usdt_3_dai <= 3500000;
subject to c141: (1) * dai_3_usdt <= 3500000;
subject to c142: (1) * usdt_4_dai <= 4000000;
subject to c143: (1) * dai_4_usdt <= 4000000;
subject to c144: (1) * usdt_5_dai <= 6000000;
subject to c145: (1) * dai_5_usdt <= 6000000;
subject to c146: (1) * eth_1_usdt <= 4200;
subject to c147: (1) * eth_2_usdt <= 5500;
subject to c148: (1) * eth_3_usdt <= 6500;
subject to c149: (1) * eth_4_usdt <= 7500;
subject to c150: (1) * eth_5_usdt <= 8500;
subject to c151: (1) * usdt_1_usdc <= 1200000;
subject to c152: (1) * usdc_1_usdt <= 1000000;
subject to c153: (1) * usdt_2_usdc <= 2200000;
subject to c154: (1) * usdc_2_usdt <= 2000000;
subject to c155: (1) * usdt_3_usdc <= 3200000;
subject to c156: (1) * usdc_3_usdt <= 3000000;
subject to c157: (1) * usdt_4_usdc <= 4200000;
subject to c158: (1) * usdc_4_usdt <= 4000000;
subject to c159: (1) * usdt_5_usdc <= 5200000;
subject to c160: (1) * usdc_5_usdt <= 5000000;
subject to c161: (1) * usdt_1_b <= 285;
subject to c162: (1) * usdt_2_b <= 312;
subject to c163: (1) * usdt_3_b <= 431;
subject to c164: (1) * usdt_4_b <= 644;
subject to c165: (1) * usdt_5_b <= 755;
subject to c166: (1) * usdt_1_dai + (-0.99) * dai_1_usdt + (1) * usdt_2_dai + (-0.98) * dai_2_usdt + (1) * usdt_3_dai + (-0.97) * dai_3_usdt + (1) * usdt_4_dai + (-0.96) * dai_4_usdt + (1) * usdt_5_dai + (-0.95) * dai_5_usdt + (-0.99) * eth_1_usdt + (-0.98) * eth_2_usdt + (-0.97) * eth_3_usdt + (-0.96) * eth_4_usdt + (-0.95) * eth_5_usdt + (1) * usdt_1_usdc + (-0.99) * usdc_1_usdt + (1) * usdt_2_usdc + (-0.98) * usdc_2_usdt + (1) * usdt_3_usdc + (-0.97) * usdc_3_usdt + (1) * usdt_4_usdc + (-0.96) * usdc_4_usdt + (1) * usdt_5_usdc + (-0.95) * usdc_5_usdt + (1) * usdt_1_b + (1) * usdt_2_b + (1) * usdt_3_b + (1) * usdt_4_b + (1) * usdt_5_b <= 0;
subject to c167: (1) * usdt_1_dai + (-0.99) * dai_1_usdt + (1) * usdt_2_dai + (-0.98) * dai_2_usdt + (1) * usdt_3_dai + (-0.97) * dai_3_usdt + (1) * usdt_4_dai + (-0.96) * dai_4_usdt + (1) * usdt_5_dai + (-0.95) * dai_5_usdt + (-0.99) * eth_1_usdt + (-0.98) * eth_2_usdt + (-0.97) * eth_3_usdt + (-0.96) * eth_4_usdt + (-0.95) * eth_5_usdt + (1) * usdt_1_usdc + (-0.99) * usdc_1_usdt + (1) * usdt_2_usdc + (-0.98) * usdc_2_usdt + (1) * usdt_3_usdc + (-0.97) * usdc_3_usdt + (1) * usdt_4_usdc + (-0.96) * usdc_4_usdt + (1) * usdt_5_usdc + (-0.95) * usdc_5_usdt + (1) * usdt_1_b + (1) * usdt_2_b + (1) * usdt_3_b + (1) * usdt_4_b + (1) * usdt_5_b >= 0;
subject to c168: (1) * steth_1_eth <= 1000000;
subject to c169: (1) * eth_1_steth <= 1000000;
subject to c170: (1) * steth_2_eth <= 2000000;
subject to c171: (1) * eth_2_steth <= 2000000;
subject to c172: (1) * steth_3_eth <= 3000000;
subject to c173: (1) * eth_3_steth <= 3000000;
subject to c174: (1) * steth_4_eth <= 4000000;
subject to c175: (1) * eth_4_steth <= 4000000;
subject to c176: (1) * steth_5_eth <= 5000000;
subject to c177: (1) * eth_5_steth <= 5000000;
subject to c178: (1) * steth_1_eth + (-0.99) * eth_1_steth + (1) * steth_2_eth + (-0.98) * eth_2_steth + (1) * steth_3_eth + (-0.97) * eth_3_steth + (1) * steth_4_eth + (-0.96) * eth_4_steth + (1) * steth_5_eth + (-0.95) * eth_5_steth <= 0;
subject to c179: (1) * steth_1_eth + (-0.99) * eth_1_steth + (1) * steth_2_eth + (-0.98) * eth_2_steth + (1) * steth_3_eth + (-0.97) * eth_3_steth + (1) * steth_4_eth + (-0.96) * eth_4_steth + (1) * steth_5_eth + (-0.95) * eth_5_steth >= 0;
end