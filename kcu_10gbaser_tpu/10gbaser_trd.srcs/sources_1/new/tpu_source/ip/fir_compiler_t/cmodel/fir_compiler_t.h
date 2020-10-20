
//------------------------------------------------------------------------------
// (c) Copyright 2014 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//------------------------------------------------------------------------------ 
//
// C Model configuration for the "fir_compiler_t" instance.
//
//------------------------------------------------------------------------------
//
// coefficients: -83,-350,-696,-767,-346,223,353,-6,-268,-76,199,105,-150,-113,119,113,-98,-110,85,107,-77,-104,73,101,-71,-99,71,97,-72,-96,75,96,-79,-96,83,96,-89,-96,95,97,-101,-97,108,98,-116,-98,124,98,-133,-98,143,98,-153,-98,164,97,-175,-96,187,94,-200,-92,214,90,-228,-86,243,82,-259,-77,276,72,-294,-65,312,57,-332,-48,353,38,-376,-27,399,14,-424,2,451,-19,-480,38,511,-60,-544,86,581,-114,-621,147,665,-185,-714,230,770,-281,-834,343,908,-417,-996,507,1102,-621,-1236,767,1408,-962,-1642,1238,1981,-1658,-2525,2380,3542,-3919,-6172,9546,29782,29782,9546,-6172,-3919,3542,2380,-2525,-1658,1981,1238,-1642,-962,1408,767,-1236,-621,1102,507,-996,-417,908,343,-834,-281,770,230,-714,-185,665,147,-621,-114,581,86,-544,-60,511,38,-480,-19,451,2,-424,14,399,-27,-376,38,353,-48,-332,57,312,-65,-294,72,276,-77,-259,82,243,-86,-228,90,214,-92,-200,94,187,-96,-175,97,164,-98,-153,98,143,-98,-133,98,124,-98,-116,98,108,-97,-101,97,95,-96,-89,96,83,-96,-79,96,75,-96,-72,97,71,-99,-71,101,73,-104,-77,107,85,-110,-98,113,119,-113,-150,105,199,-76,-268,-6,353,223,-346,-767,-696,-350,-83
// chanpats: 173
// name: fir_compiler_t
// filter_type: 0
// rate_change: 0
// interp_rate: 1
// decim_rate: 1
// zero_pack_factor: 1
// coeff_padding: 0
// num_coeffs: 254
// coeff_sets: 1
// reloadable: 0
// is_halfband: 0
// quantization: 0
// coeff_width: 16
// coeff_fract_width: 0
// chan_seq: 0
// num_channels: 1
// num_paths: 1
// data_width: 8
// data_fract_width: 0
// output_rounding_mode: 0
// output_width: 26
// output_fract_width: 0
// config_method: 0

const double fir_compiler_t_coefficients[254] = {-83,-350,-696,-767,-346,223,353,-6,-268,-76,199,105,-150,-113,119,113,-98,-110,85,107,-77,-104,73,101,-71,-99,71,97,-72,-96,75,96,-79,-96,83,96,-89,-96,95,97,-101,-97,108,98,-116,-98,124,98,-133,-98,143,98,-153,-98,164,97,-175,-96,187,94,-200,-92,214,90,-228,-86,243,82,-259,-77,276,72,-294,-65,312,57,-332,-48,353,38,-376,-27,399,14,-424,2,451,-19,-480,38,511,-60,-544,86,581,-114,-621,147,665,-185,-714,230,770,-281,-834,343,908,-417,-996,507,1102,-621,-1236,767,1408,-962,-1642,1238,1981,-1658,-2525,2380,3542,-3919,-6172,9546,29782,29782,9546,-6172,-3919,3542,2380,-2525,-1658,1981,1238,-1642,-962,1408,767,-1236,-621,1102,507,-996,-417,908,343,-834,-281,770,230,-714,-185,665,147,-621,-114,581,86,-544,-60,511,38,-480,-19,451,2,-424,14,399,-27,-376,38,353,-48,-332,57,312,-65,-294,72,276,-77,-259,82,243,-86,-228,90,214,-92,-200,94,187,-96,-175,97,164,-98,-153,98,143,-98,-133,98,124,-98,-116,98,108,-97,-101,97,95,-96,-89,96,83,-96,-79,96,75,-96,-72,97,71,-99,-71,101,73,-104,-77,107,85,-110,-98,113,119,-113,-150,105,199,-76,-268,-6,353,223,-346,-767,-696,-350,-83};

const xip_fir_v7_2_pattern fir_compiler_t_chanpats[1] = {P_BASIC};

static xip_fir_v7_2_config gen_fir_compiler_t_config() {
  xip_fir_v7_2_config config;
  config.name                = "fir_compiler_t";
  config.filter_type         = 0;
  config.rate_change         = XIP_FIR_INTEGER_RATE;
  config.interp_rate         = 1;
  config.decim_rate          = 1;
  config.zero_pack_factor    = 1;
  config.coeff               = &fir_compiler_t_coefficients[0];
  config.coeff_padding       = 0;
  config.num_coeffs          = 254;
  config.coeff_sets          = 1;
  config.reloadable          = 0;
  config.is_halfband         = 0;
  config.quantization        = XIP_FIR_INTEGER_COEFF;
  config.coeff_width         = 16;
  config.coeff_fract_width   = 0;
  config.chan_seq            = XIP_FIR_BASIC_CHAN_SEQ;
  config.num_channels        = 1;
  config.init_pattern        = fir_compiler_t_chanpats[0];
  config.num_paths           = 1;
  config.data_width          = 8;
  config.data_fract_width    = 0;
  config.output_rounding_mode= XIP_FIR_FULL_PRECISION;
  config.output_width        = 26;
  config.output_fract_width  = 0,
  config.config_method       = XIP_FIR_CONFIG_SINGLE;
  return config;
}

const xip_fir_v7_2_config fir_compiler_t_config = gen_fir_compiler_t_config();

