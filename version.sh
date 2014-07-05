#!/bin/bash

if [ "$1" = 'sd' ]
then
	cp -v thunderc_sd.mk thunderc.mk
	cp -v init.thunderc_sd.rc init.thunderc.rc
	cp -v fstab.thunderc_sd fstab.thunderc
	cp -v recovery_sd.fstab recovery.fstab
	cp -v recovery/twrp_sd.fstab recovery/twrp.fstab
	cp -v recovery/fstab_sd recovery/fstab
	cp -v releasetools/extras.txt.sd releasetools/extras.txt
	cd ~/JBC/bootable/recovery
	git checkout cm-11.0
	git reset --hard HEAD
	cd ~/JBC/device/lge/thunderc
	return
fi
if [ "$1" = 'int' ]
then
	cp -v thunderc_int.mk thunderc.mk
	cp -v init.thunderc_int.rc init.thunderc.rc
	cp -v fstab.thunderc_int fstab.thunderc
	cp -v recovery/fstab_int recovery/fstab
	cp -v recovery/twrp_int.fstab recovery/twrp.fstab
	cp -v recovery_int.fstab recovery.fstab
	cp -v releasetools/extras.txt.int releasetools/extras.txt
	cd ~/JBC/bootable/recovery
	git checkout android-4.4
	git reset --hard HEAD
	cd ~/JBC/device/lge/thunderc
	return
fi
echo "version.sh [int][sd]"
return
	
