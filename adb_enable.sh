ln -s /sys/kernel/config/usb_gadget/g1/functions/ffs.adb \
      /sys/kernel/config/usb_gadget/g1/configs/c.1/ffs.adb

ln -s /sys/kernel/config/usb_gadget/g1/functions/ffs.adb \
      /sys/kernel/config/usb_gadget/g1/configs/c.2/ffs.adb

udc=$(ls /sys/class/udc | head -n1)

echo "" > /sys/kernel/config/usb_gadget/g1/UDC
sleep 1
echo $udc > /sys/kernel/config/usb_gadget/g1/UDC

/sbin/launch_adbd
/sbin/adbd &
