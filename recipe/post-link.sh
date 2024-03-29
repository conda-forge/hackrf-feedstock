echo "To enable udev device setup of hackrf hardware, you must manually install"     >> $PREFIX/.messages.txt
echo "the udev rules provided by the 'hackrf' package by copying or linking"         >> $PREFIX/.messages.txt
echo "them into your system directory, e.g.:"                                        >> $PREFIX/.messages.txt
echo "    sudo ln -s $PREFIX/lib/udev/rules.d/53-hackrf.rules /etc/udev/rules.d/"    >> $PREFIX/.messages.txt
echo "After doing this, reload your udev rules:"                                     >> $PREFIX/.messages.txt
echo "    sudo udevadm control --reload && sudo udevadm trigger"                     >> $PREFIX/.messages.txt
echo "See https://hackrf.readthedocs.io/en/latest/ for more on hardware setup."      >> $PREFIX/.messages.txt
