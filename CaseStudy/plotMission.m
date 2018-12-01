function rob = plotMission(handles)

w_opt = handles.myhandle.w_opt;
optParams = handles.myhandle.optParams;
time_print = handles.timeElapsed_data;
T = optParams.T;
disp('Plotting...');
cpp_out = [15, 15, 40, 17.8924, 14.0799, 47.8529, 33.7567, 5.54224, 53.0027, 32.09, -0.35309, 51.5557, 8.17491, -0.356003, 51.4603, -2.7663, 3.91616, 53.426, -13.5694, 2.51994, 52.634, -21.161, 5.49808, 54.5714, -33.0157, 3.88902, 53.7198, -33.6837, 7.3195, 54.8944, -24.0598, 16.9011, 59.4105, -15, 15, 40, -1.66671, 12.1027, 53.3333, 21.9979, -3.76577, 59.1887, 38.7845, -6.37204, 52.7548, 31.5361, 0.657567, 51.502, 9.00119, -0.380587, 51.9137, 0.590912, -0.178315, 52.2154, -11.3902, 0.0968369, 52.0692, -19.6881, -0.231074, 52.3039, -29.5833, -0.224103, 52.1286, -40.8208, -0.0305352, 51.7644, 0, 0, 0, 1.08467, -0.345031, 2.94482, 5, -2.89973, -0.645516, -5, 0.326511, 0.0221992, -4.59315, -0.286789, -0.0552028, -0.0839456, 1.853, 0.785435, -3.97771, -2.14496, -0.984247, 0.633669, 2.99364, 1.58773, -5, -3.22283, -1.7086, 4.12452, 4.10641, 1.93548, 0, 0, 0, 0, 0, 0, 4.99998, -1.08649, 5, 4.49925, -5, -2.17925, 2.35813, 3.39765, -0.505853, -4.78153, -0.33684, -0.0271992, -4.26674, -0.0945723, 0.178195, 0.579542, 0.158602, -0.0427741, -5, -0.0355951, -0.0174095, 1.26325, -0.0918208, 0.103252, -4.81605, 0.0829574, -0.156087, 0, 0, 0];
cpp_out = [15, 15, 40, 21.9445, 12.6036, 45.9843, 34.3144, 5.25499, 51.5208, 32.5675, -0.734945, 51.9075, 20.4204, -1.13001, 51.9461, 9.01127, -0.282786, 51.8239, -2.56112, 0.0675818, 51.9817, -13.9968, 0.49035, 51.9174, -25.4271, 1.05187, 52.0507, -36.7043, 2.19474, 52.1971, -41.9469, 2.90687, 52.0561, -15, 15, 40, -4.38647, 13.8956, 43.2098, 13.3985, 11.8008, 48.925, 31.1418, 6.06728, 51.6024, 34.0807, 1.30806, 51.8898, 21.9688, 0.516641, 51.8934, 9.18154, 0.081262, 51.7579, -3.56015, -0.343337, 51.9216, -15.8925, -0.929155, 51.8891, -30.0166, -1.78924, 51.7144, -37.4571, -2.25627, 51.7009, 0, 0, 0, 2.60418, -0.898646, 2.24411, 2.36007, -1.96942, 0.112604, -2.72017, -0.522985, 0.0464793, -2.17498, 0.309464, -0.0261804, -2.37533, 0.0469277, -0.0229501, -2.26123, 0.0903262, 0.0792755, -2.30981, 0.0795029, -0.0934744, -2.26527, 0.141004, 0.131783, -2.24684, 0.305198, -0.0604173, 0, 0, 0, 0, 0, 0, 3.98007, -0.414133, 1.20366, 3.18679, -0.423213, 1.09, 3.86532, -1.77975, 0.0502905, -2.28008, -0.22743, 0.063786, -2.5469, -0.0977804, -0.0544863, -2.56669, -0.0777092, -0.00312549, -2.53228, -0.0912293, 0.0641013, -2.40888, -0.139856, -0.068249, -3.18877, -0.200157, -0.00579679, 0, 0, 0];
cpp_out = [45, 15, 40, 43.0634, 12.627, 46.1595, 40.1301, 5.33269, 51.6067, 33.7183, 0.500236, 52.1353, 23.8888, -0.416517, 52.074, 14.2721, -2.77601, 52.1848, 4.43726, -3.08896, 52.1315, -6.6709, -1.33616, 51.9397, -18.3803, -0.57776, 51.9502, -31.3047, -0.34504, 51.7667, -37.9383, -0.267893, 51.773, -45, 15, 40, -43.0085, 12.5147, 46.1961, -39.8701, 4.97578, 51.6598, -31.8565, 0.676471, 51.8274, -19.8168, 0.953169, 51.9354, -7.92818, 1.10456, 51.8053, 2.86586, 3.36072, 52.1665, 12.6729, 3.23226, 52.1285, 22.2524, 1.23789, 52.0729, 32.6448, 0.763081, 52.0453, 38.0081, 0.574386, 51.7626, 0, 0, 0, -0.72621, -0.889871, 2.3098, -0.464553, -1.95673, 0.0216319, -1.99795, -0.100032, 0.179306, -1.93785, -0.256255, -0.179893, -1.91063, -0.660587, 0.198983, -2.01628, 0.460657, -0.194108, -2.40132, 0.254226, 0.0979108, -2.28987, 0.0619513, -0.08172, -2.84299, 0.0330628, 0.00269564, 0, 0, 0, 0, 0, 0, 0.746809, -0.931974, 2.32354, 0.52344, -2.01163, 0.0157845, 2.54711, 0.147938, 0.0490231, 2.28616, -0.0256843, -0.002382, 2.45784, 0.0792459, -0.0466947, 1.89716, 0.776719, 0.17631, 2.01762, -0.727801, -0.168534, 1.82691, -0.111066, 0.126639, 2.29857, -0.080869, -0.121163, 0, 0, 0];
cpp_out = [45, 15, 40, 43.0647, 12.6363, 46.1533, 40.1537, 5.35127, 51.6055, 33.7502, 1.23353, 52.1343, 23.8948, 1.3944, 52.0763, 14.2544, 2.92225, 52.1893, 4.41243, 3.13209, 52.1304, -6.69012, 1.33101, 51.9388, -18.3917, 0.583208, 51.9501, -31.3079, 0.346838, 51.7672, -37.9371, 0.269952, 51.773, -45, 15, 40, -43.008, 12.5082, 46.1977, -39.8465, 4.94333, 51.6609, -31.8124, 0.396497, 51.8221, -19.7676, -0.0636919, 51.9315, -7.89976, -0.95343, 51.8054, 2.89824, -3.336, 52.1648, 12.7133, -3.21497, 52.1269, 22.2756, -1.23559, 52.0746, 32.6531, -0.764788, 52.0471, 38.0071, -0.575742, 51.7627, 0, 0, 0, -0.725721, -0.886379, 2.3075, -0.456637, -1.95632, 0.0254789, -2.00177, 0.167627, 0.176031, -1.94419, -0.0863477, -0.175796, -1.91399, 0.648499, 0.19621, -2.016, -0.488747, -0.193765, -2.39945, -0.247752, 0.0976643, -2.28858, -0.0636428, -0.0812193, -2.84107, -0.0329513, 0.00249354, 0, 0, 0, 0, 0, 0, 0.747003, -0.934415, 2.32413, 0.531918, -2.01922, 0.0151175, 2.54739, 0.0617561, 0.0472149, 2.28781, -0.226607, -0.000313318, 2.44861, -0.13537, -0.0470139, 1.90672, -0.775016, 0.175919, 2.01226, 0.723527, -0.168146, 1.82516, 0.10918, 0.127544, 2.29454, 0.0810199, -0.121918, 0, 0, 0];
cpp_out = [45, 15, 40, 43.0114, 12.5472, 46.1275, 39.9278, 5.15757, 51.5907, 32.8578, 0.218067, 52.0211, 22.3642, -1.07142, 51.992, 12.1789, -5.19525, 52.2747, 2.79976, -4.41447, 52.1567, -7.43276, -1.09141, 51.8863, -18.8509, -0.697528, 51.95, -31.429, -0.384815, 51.7851, -37.8792, -0.318713, 51.7722, -45, 15, 40, -43.0276, 12.319, 46.2255, -39.5028, 4.50644, 51.6738, -29.6165, 0.2576, 51.6982, -14.6244, -0.0603538, 51.8036, -1.34098, 1.92503, 51.8213, 9.01214, 4.86781, 52.2588, 16.8995, 3.19543, 52.1716, 24.5542, 1.24358, 52.2307, 33.4785, 0.937911, 52.1951, 37.9908, 0.690394, 51.7748, 0, 0, 0, -0.745743, -0.919801, 2.29782, -0.503798, -1.96629, 0.0380915, -2.21044, -0.131812, 0.128079, -2.00097, -0.368221, -0.122957, -2.0686, -1.22424, 0.213582, -1.70717, 1.364, -0.231142, -2.34342, 0.0526448, 0.100855, -2.23132, 0.101643, -0.064374, -2.76438, 0.0283296, -0.00551181, 0, 0, 0, 0, 0, 0, 0.739642, -1.00537, 2.33457, 0.674633, -2.05002, 0.00034344, 3.11704, 0.200455, 0.00886731, 2.89461, -0.294631, 0.0317378, 2.44851, 1.00232, -0.021116, 1.73997, 0.22651, 0.182544, 1.43529, -0.825339, -0.192445, 1.61463, -0.00976997, 0.190576, 1.93383, -0.106079, -0.180126, 0, 0, 0];
cpp_out = [45, 15, 10, 43.6683, 13.9232, 20.5604, 41.3177, 12.7663, 39.8671, 39.5671, 6.54212, 50.6497, 33.0057, 0.602, 52.1204, 22.0789, -1.2113, 51.8843, 11.2719, -4.46944, 51.9993, 0.072805, -2.93851, 51.863, -13.3147, -0.294004, 51.6887, -29.4966, -0.456718, 51.7214, -37.5135, -0.322922, 51.719, -45, 15, 10, -43.6241, 13.8871, 20.7266, -41.2728, 12.4495, 40.314, -39.1556, 5.7172, 50.877, -29.4821, 0.687731, 51.9472, -13.5472, 0.345798, 51.6665, 0.196426, 2.97486, 51.8495, 11.2881, 4.2073, 51.9693, 21.0833, 1.86636, 52.0007, 31.9664, 0.976751, 51.8981, 37.6328, 0.872631, 51.7757, 0, 0, 0, -0.4994, -0.403807, 3.96016, -0.444488, -0.0805114, 3.77487, -0.267539, -2.26361, 0.740489, -2.22645, -0.246885, -0.0964389, -2.14939, -0.463965, -0.00416111, -2.17191, -0.815832, 0.0467891, -2.29925, 1.28795, -0.0920715, -3.00849, -0.135267, 0.015204, -3.43578, 0.0573413, -0.00104234, 0, 0, 0, 0, 0, 0, 0.515972, -0.41734, 4.02249, 0.430267, -0.173941, 3.82559, 0.417459, -2.3724, 0.613714, 3.26229, 0.189795, -0.13566, 3.12107, -0.294296, 0.0134402, 2.42293, 1.24341, 0.0568389, 2.03929, -0.625814, -0.00480208, 1.88882, -0.330265, 0.0159849, 2.42846, -0.0446226, -0.052466, 0, 0, 0];
cpp_out = [45, 15, 10, 43.6767, 13.9448, 17.2207, 41.4087, 12.1218, 29.3619, 39.3988, 10.515, 41.2668, 36.8185, 5.68032, 49.2463, 27.268, 2.69078, 50.8225, 12.986, 3.69508, 50.2133, -0.575254, 4.20862, 49.832, -13.692, 3.99197, 50.1627, -28.1764, 3.92575, 50.0758, -35.6692, 4.10361, 49.7497, -45, 15, 10, -43.4225, 13.9702, 18.7108, -40.6292, 12.9594, 33.8226, -38.5899, 8.35273, 46.3259, -32.4038, 2.89299, 51.7257, -21.5609, 1.11383, 53.2998, -10.3097, -0.27077, 56.2721, 0.878352, -2.41668, 55.0227, 13.4056, -2.98642, 52.6768, 28.2744, -2.42294, 52.555, 35.6937, -2.35317, 52.3856, 45.25, -10.25, 40.75, 42.4715, -9.49583, 45.1866, 37.5334, -5.37389, 49.8589, 29.3787, -2.74115, 50.7147, 18.6513, -3.09111, 50.8603, 8.23455, -3.18096, 50.6973, -2.12274, -4.49576, 49.7882, -12.1338, -4.55916, 50.2799, -21.6707, -4.19207, 52.0854, -31.2967, -4.45194, 53.2799, -35.9225, -4.27689, 53.7206, 0, 0, 0, -0.496242, -0.395694, 2.70776, -0.416278, -0.337391, 2.18366, -0.389471, -0.307326, 2.55364, -0.626839, -1.54411, 0.757868, -3.03295, 0.230021, -0.0720601, -2.70193, 0.175345, -0.165399, -2.72126, 0.0391489, 0.00173681, -2.53767, -0.115497, 0.122488, -3.2112, 0.0762257, -0.139749, 0, 0, 0, 0, 0, 0, 0.591577, -0.386175, 3.26654, 0.529848, -0.0411632, 2.80872, 0.301106, -1.69147, 2.2311, 2.05634, -0.567372, 0.0727374, 2.26679, -0.170734, 0.526639, 2.23576, -0.369833, 0.653776, 2.23922, -0.481112, -1.04056, 2.73841, 0.207321, 0.0307679, 3.17969, 0.0298994, -0.0726063, 0, 0, 0, 0, 0, 0, -1.04193, 0.282815, 1.66372, -0.940091, 1.29826, 0.296362, -2.23547, -0.148703, 0.0615909, -2.06671, -0.00112152, 0.000745102, -2.09793, -0.0327121, -0.0617786, -2.0483, -0.464425, -0.286871, -1.9619, 0.382595, 0.435388, -1.85967, -0.197111, 0.296093, -1.98251, 0.075021, 0.188867, 0, 0, 0];
cpp_out = [45, 15, 10, 43.6774, 13.9096, 20.5501, 41.3612, 12.7332, 39.8248, 39.5371, 6.44108, 50.6379, 32.1241, 1.11641, 52.0642, 20.2192, 2.16278, 51.8707, 8.46968, 3.36004, 51.7432, -7.17948, 0.317251, 51.577, -25.1111, -1.5435, 51.6487, -39.7398, -2.63473, 51.9473, -45.5049, -4.37328, 52.1729, -45, 15, 10, -43.6213, 13.8748, 20.7334, -41.294, 12.3831, 40.3198, -39.0581, 5.59608, 50.8767, -28.9827, -0.298626, 51.9414, -12.0495, -0.647404, 51.5308, 0.933021, -4.78223, 52.045, 10.8201, -5.46519, 52.2646, 20.7174, -2.02265, 52.0028, 31.7985, -1.08392, 51.8813, 37.5864, -0.956355, 51.7755, 45.25, -10.25, 40.75, 43.1767, -10.7761, 46.1311, 39.2475, -5.04234, 51.3293, 28.2755, 0.0743053, 51.7222, 11.1064, -0.25696, 51.6277, 1.095, 4.52894, 52.2129, -4.65065, 9.69994, 53.0363, -11.1021, 10.3083, 53.2162, -16.987, 5.53694, 52.3984, -29.1312, 1.95685, 51.6932, -37.2172, 2.33813, 51.6687, 0, 0, 0, -0.495989, -0.408912, 3.95629, -0.434563, -0.0833537, 3.76626, -0.30379, -2.28659, 0.759418, -2.51405, 0.00401765, -0.129618, -2.26457, 0.388873, 0.0408379, -2.42455, 0.10871, -0.083518, -3.74696, -1.23617, 0.0107409, -3.44575, 0.383866, 0.0175068, -2.47075, -0.745094, 0.0966598, 0, 0, 0, 0, 0, 0, 0.516997, -0.421963, 4.02503, 0.42037, -0.190164, 3.823, 0.470647, -2.37873, 0.613697, 3.36647, -0.129122, -0.137739, 3.40428, -0.0178095, -0.0334393, 1.8897, -1.53498, 0.222078, 2.05415, 1.08699, -0.111941, 1.91413, 0.339833, -0.000234202, 2.48053, 0.054671, -0.0453539, 0, 0, 0, 0, 0, 0, -0.777497, -0.1973, 2.01791, -0.79313, 2.32281, 0.183637, -3.42053, -0.113717, -0.0133442, -3.44543, -0.0247225, -0.0237492, -0.739527, 1.81634, 0.240226, -1.50753, 0.349823, 0.0985787, -1.1002, -0.077942, -0.0187732, -1.24416, -1.72108, -0.29026, -3.46544, 0.163407, -0.0104925, 0, 0, 0];
% cpp_out = [45, 15, 10, 43.1957, 16.8228, 23.3333, 41.1934, 10.3907, 45.1633, 33.5667, 3.12132, 52.364, 20.4956, 1.42968, 51.4999, 7.94305, -1.14984, 51.806, -3.34125, -5.24944, 51.7111, -14.4313, -4.76946, 51.817, -26.7241, -1.63968, 51.8541, -38.6485, -2.98101, 52.3443, -43.907, -4.48659, 52.7518, -45, 15, 10, -43.5441, 13.8317, 20.2544, -40.9936, 12.6084, 38.8443, -39.0026, 6.60316, 50.1476, -31.0506, 1.47607, 52.1429, -18.5589, 3.07888, 52.0261, -6.01544, 3.95012, 52.3553, 6.875, 3.85822, 52.3383, 18.4033, 2.7523, 52.0667, 30.6981, 1.42215, 51.8169, 37.0941, 1.36668, 51.7807, 0.25, -10.25, 40.75, 7.924, -11.112, 43.3401, 20.8863, -11.7132, 47.9825, 33.3034, -6.96057, 50.8455, 33.5357, -2.23137, 51.7092, 22.2299, -2.20012, 51.8562, 10.6135, -5.46531, 51.734, -0.0380463, -4.16523, 51.6092, -12.2826, -0.0713444, 51.636, -28.4783, 1.76629, 51.4925, -36.7749, 2.73212, 51.3301, 0, 0, 0, -0.67663, 0.683546, 5, -0.158799, -3.01015, 3.81123, -2.72104, -0.0921215, -0.634569, -2.52077, -0.553759, 0.231233, -2.50153, -0.482779, -0.0875454, -2.04277, -1.11492, 0.0409978, -2.37134, 1.15555, 0.00384051, -2.53488, 0.162564, 0.010555, -2.25364, -0.645245, 0.174615, 0, 0, 0, 0, 0, 0, 0.54596, -0.438126, 3.84541, 0.478711, -0.0753772, 3.60646, 0.327772, -2.186, 1.0831, 2.6952, -0.0099124, -0.1995, 2.32609, 0.609729, 0.130793, 2.66846, -0.206799, 0.00898549, 2.49901, 0.146487, -0.0142479, 2.13646, -0.542895, -0.0893632, 2.74115, -0.0237734, -0.0154964, 0, 0, 0, 0, 0, 0, 2.87775, -0.323236, 0.971302, 2.34282, 0.0573727, 0.89099, 2.60646, 1.73203, 0.294021, -2.19352, 0.257924, 0.0666086, -2.32036, -0.213966, -0.0031474, -2.32585, -1.03722, -0.043061, -1.95919, 1.3951, -0.00914114, -2.87741, 0.314499, 0.0180641, -3.55567, 0.413926, -0.0696226, 0, 0, 0];
cpp_out = [45, 15, 10, 43.6793, 13.9311, 20.7118, 41.3925, 12.4765, 40.2869, 39.4784, 6.15446, 50.8754, 30.1414, 1.64158, 52.0607, 17.7912, 2.95764, 52.0206, 6.49502, 3.10743, 51.9433, -8.34165, 1.30057, 51.73, -24.2565, 0.192054, 51.7166, -39.1985, -2.10917, 51.8724, -45.9129, -4.17613, 52.0214, -45, 15, 10, -43.6442, 13.9058, 20.8122, -41.3706, 12.3913, 40.5498, -39.116, 5.44893, 50.9769, -28.4278, -0.0562089, 51.893, -10.9271, -0.0715646, 51.5774, 1.09283, -5.6108, 52.032, 10.2342, -7.20174, 52.2922, 19.9451, -2.46094, 51.9865, 31.3495, -0.774969, 51.8008, 37.6628, -0.820273, 51.7705, 0.25, -10.25, 40.75, 6.43849, -11.8135, 42.7036, 16.9267, -12.6298, 45.9902, 26.8008, -12.5002, 49.2119, 35.9718, -6.81514, 51.3141, 32.3312, -0.792187, 51.7672, 18.4072, 1.37595, 51.801, 3.81449, 2.0584, 51.7706, -11.0882, 1.35221, 51.7155, -28.2235, 1.72912, 51.6745, -37.2699, 2.18499, 51.6527, 0, 0, 0, -0.495264, -0.400836, 4.01694, -0.42421, -0.194728, 3.82584, -0.346603, -2.20039, 0.623073, -3.19807, 0.233013, -0.100692, -1.83302, 0.289636, 0.0730685, -2.63218, -0.197261, -0.0929504, -3.26059, -0.504968, 0.0013422, -3.11506, 0.0261542, -0.00619745, -2.87757, -0.885843, 0.0638624, 0, 0, 0, 0, 0, 0, 0.508411, -0.410331, 4.05456, 0.40774, -0.20888, 3.85386, 0.488708, -2.42063, 0.53805, 3.58046, 0.0536216, -0.127276, 3.42984, -0.0526772, -0.00696361, 1.50638, -2.03112, 0.176572, 2.10995, 1.18063, -0.0569412, 1.79537, 0.744749, -0.0647864, 2.70571, -0.0194159, -0.0129847, 0, 0, 0, 0, 0, 0, 2.32069, -0.586294, 0.732597, 1.90248, 0.206891, 0.59147, 2.03811, -0.132427, 0.690571, 1.65581, 2.24775, 0.184087, -2.81407, 0.291823, 0.0088559, -2.7592, 0.557707, 0.00492192, -3.05796, -0.232077, -0.0157087, -2.91279, -0.0617512, -0.00691495, -3.87704, 0.195372, -0.00932857, 0, 0, 0];

% optParams.T = 5;
% optParams.H_formula = 5;
% optParams.sampling_time = 1/5;
% optParams.N_per_T = 25;
optParams

size(cpp_out)
size(w_opt)
[negative_rob, xx,yy,zz] = Mission_Robustness_exact(cpp_out,optParams);
rob = -negative_rob;

set(handles.missionRob_data, 'String', sprintf("%.4f",rob));

mar{1} = 'ko';
mar{2} = 'go';
mar{3} = 'ro';
mar{4} = 'bo';
mar{5} = 'co';
mar{6} = 'mo';
mar{7} = 'yo';
mar{8} = 'rp';
mar{9} = 'gp';
mar{10}= 'mp';
mar{11} = 'bp';
mar{12} = 'yp';

col{1} = 'k';
col{2} = 'g';
col{3} = 'r';
col{4} = 'b';
col{5} = 'c';
col{6} = 'm';
col{7} = 'y';
col{8} = 'r';
col{9} = 'g';
col{10}= 'm';
col{11} = 'b';
col{12} = 'y';

p = [];
% Plot Path
for d = 1:optParams.N_drones
    
    hold on;
    p(d) = plot3(xx(:,d),yy(:,d),zz(:,d),'-.','linewidth',3, 'Color', col{d}, 'DisplayName', strcat('Drone',num2str(d)));
%     hold all;
end


for t = 1:size(xx,1)
    tic;
    if(exist('gc','var'))
        delete(gc)
    end
    for d = 1:optParams.N_drones
        
        hold on;
        gc(d) = plot3(xx(t,d),yy(t,d),zz(t,d),mar{d},'MarkerSize',20, 'MarkerFaceColor', col{d});
    end
    set(time_print, 'String', sprintf("%.3f",(t-1)*optParams.sampling_time));
    t_ = toc;
%     pause(0.02);
    pause(optParams.sampling_time - t_);
end
