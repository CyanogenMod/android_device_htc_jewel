#!/system/bin/sh

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

cd /firmware_radio

# Check chip version
case `cat /sys/devices/system/soc/soc0/version 2>/dev/null` in
	"1.1")
		for file in modem_f1.* ; do
			newname=modem_fw.${file##*.}
			ln -s /firmware_radio/$file /vendor/firmware/$newname 2>/dev/null
		done
		;;

	*)
		for file in modem_f2.* ; do
			newname=modem_fw.${file##*.}
			ln -s /firmware_radio/$file /vendor/firmware/$newname 2>/dev/null
		done
esac


case `ls modem.mdt 2>/dev/null` in
	modem.mdt)
		for imgfile in modem*; do
			ln -s /firmware_radio/$imgfile /vendor/firmware/$imgfile 2>/dev/null
		done
		;;
	*)
        # trying to log here but nothing will be logged since it is
        # early in the boot process. Is there a way to log this message?
		log -p w -t PIL 8960 device but no modem image found;;
esac

cd /

