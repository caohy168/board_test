
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 7.0
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER stdin = axi_uart16550_0
 PARAMETER stdout = axi_uart16550_0
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.9
 PARAMETER HW_INSTANCE = microblaze_0
 PARAMETER compiler_flags =  -mlittle-endian -mxl-soft-mul -mcpu=v10.0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_CLK_125MHZ_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_EMCCLK_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_FMC_HPC_CLK0_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_FMC_HPC_CLK1_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_FMC_HPC_GBTCLK0_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_FMC_HPC_GBTCLK1_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_FMC_LPC_CLK0_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_FMC_LPC_CLK1_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_FMC_LPC_GBTCLK0_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_MGT_SI570_CLOCK_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_SI5328_OUT_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_SMA_MGT_REFCLK_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_SYSCLK300_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = CLOCK_COUNTER_USER_SI570_CLOCK_gpio
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = GPIO_IN_HPC_LA_BUS
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = GPIO_IN_LPC_LA_BUS
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = GPIO_OUT_HPC_LA_BUS
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = GPIO_OUT_LPC_LA_BUS
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = PMOD_IN
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = PMOD_OUT
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = SI570_CLK_SEL1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = USER_SMA_GPIO_IN1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = USER_SMA_GPIO_OUT1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.3
 PARAMETER HW_INSTANCE = axi_bram_ctrl_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axiethernet
 PARAMETER DRIVER_VER = 5.9
 PARAMETER HW_INSTANCE = axi_ethernet_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axidma
 PARAMETER DRIVER_VER = 9.9
 PARAMETER HW_INSTANCE = axi_ethernet_0_dma
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = iic
 PARAMETER DRIVER_VER = 3.5
 PARAMETER HW_INSTANCE = axi_iic_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = spi
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = axi_quad_spi_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER DRIVER_VER = 4.5
 PARAMETER HW_INSTANCE = axi_timer_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartns550
 PARAMETER DRIVER_VER = 3.5
 PARAMETER HW_INSTANCE = axi_uart16550_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER DRIVER_VER = 2.0
 PARAMETER HW_INSTANCE = colorbar_tpg_hier_0_v_tpg_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mig
 PARAMETER DRIVER_VER = 1.0
 PARAMETER HW_INSTANCE = ddr4_0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = dip_switches_4bits
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = led_8bits
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.2
 PARAMETER HW_INSTANCE = mdm_1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.9
 PARAMETER HW_INSTANCE = microblaze_0_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.3
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.3
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = push_buttons_5bits
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = rotary_switch
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = sysmon
 PARAMETER DRIVER_VER = 7.5
 PARAMETER HW_INSTANCE = system_management_wiz_0
END


BEGIN LIBRARY
 PARAMETER LIBRARY_NAME = lwip211
 PARAMETER LIBRARY_VER = 1.0
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER dhcp_does_arp_check = true
 PARAMETER lwip_dhcp = true
 PARAMETER pbuf_pool_size = 2048
END


