#include "sleep.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "main.h"

#define PHY_ADDR 0x43C00000

#define REG_CTRL_OFFSET   0
#define REG_STATUS_OFFSET 1
#define REG_ADDR_OFFSET   2
#define REG_DATA_OFFSET   3

#define GRID_WIDTH   138
#define GRID_HEIGHT  138
#define MAP          big_map_data
#define GRID_SIZE    (GRID_WIDTH * GRID_HEIGHT)

#define REG32(off) (PHY_ADDR + ((off) << 2))

int main(void)
{
    xil_printf("--- FPGA AoC Solver Driver ---\r\n");
    xil_printf("Mapped hardware at 0x%08X\r\n", PHY_ADDR);

    Xil_Out32(REG32(REG_CTRL_OFFSET), 0);

    xil_printf("Loading map from strings...\r\n");

    int cell_count = 0;

    for (int row = 0; row < GRID_HEIGHT; row++) {
        for (int col = 0; col < GRID_WIDTH; col++) {

            uint32_t val = (MAP[row][col] == '@') ? 1 : 0;

            Xil_Out32(REG32(REG_ADDR_OFFSET), cell_count);
            Xil_Out32(REG32(REG_DATA_OFFSET), val);

            cell_count++;
        }
    }

    xil_printf("Loaded %d cells.\r\n", cell_count);

    xil_printf("Starting solver...\r\n");
    Xil_Out32(REG32(REG_CTRL_OFFSET), 1);

    xil_printf("Waiting for Done signal...\r\n");

    uint32_t status;
    int timeout = 0;

    while (1) {
        // usleep(1000);

        status = Xil_In32(REG32(REG_STATUS_OFFSET));

        uint16_t debug = (status >> 16) & 0xFFFF;
        xil_printf("[DEBUG] Total Removed: %d\r\n", debug);

        if (status & 1) {
            break;
        }

        if (++timeout > 1000) {
            xil_printf("Error: Timeout waiting for FPGA!\r\n");
            break;
        }
    }

    uint16_t total_removed = (status >> 16) & 0xFFFF;

    xil_printf("---------------------------\r\n");
    xil_printf("Solver Finished.\r\n");
    xil_printf("Raw Status Reg: 0x%08X\r\n", status);
    xil_printf("Total Removed:  %d\r\n", total_removed);
    xil_printf("---------------------------\r\n");

    return 0;
}

