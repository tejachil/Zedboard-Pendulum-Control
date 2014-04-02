#!/bin/bash

# makes sure the bootgen command is available
if [ -z "$XILINX_DSP" ]
then
    	echo "You need to run the following command before running this script:"
	echo "source /opt/Xilinx/14.7/ISE_DS/settings64.sh"
    	exit 0
fi

# makes sure the SD card is inserted
if [ -d /media/Z_SD ]
then
	# removes the SD boot.bin file if it exists
	if [ -f /media/Z_SD/boot.bin ]
	then
		echo "Removing boot.bin from the SD card..."
		rm /media/Z_SD/boot.bin
	fi

	# writes the new boot.bin to the SD card
	echo "Generating the boot image boot.bin..."
	bootgen -image $1 -o i /media/Z_SD/boot.bin

else
	echo "The SD card could not be found...terminating"
	echo "Please insert the SD card and ensure it is named Z_SD"
	exit 0
fi

echo "Complete"













