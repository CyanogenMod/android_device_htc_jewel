#!/system/bin/sh

# No path is set up at this point so we have to do it here.
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

cd /firmware_wcnss

case `ls wcnss.mdt 2>/dev/null` in
	wcnss.mdt)
		for imgfile in wcnss*; do
			ln -s /firmware_wcnss/$imgfile /vendor/firmware/$imgfile 2>/dev/null
		done
		;;
	*)
		log -p w -t PIL 8960 device but no wcnss image found;;
esac

cd /
