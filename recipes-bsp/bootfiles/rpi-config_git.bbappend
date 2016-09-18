RPI_PITFT35_FBCP ?= ""

do_deploy_append() {

    if [ "${RPI_PITFT35_FBCP}" = "1" ] ; then
        sed -i \
    	    -e 's|#disable_overscan=.*|disable_overscan=1|' \
            -e 's|#hdmi_group=.*|hdmi_group=2|' \
			-e 's|#hdmi_mode=.*|hdmi_mode=87|' \
			-e 's|#hdmi_force_hotplug.*|hdmi_force_hotplug=1|' \
			${DEPLOYDIR}/bcm2835-bootfiles/config.txt
        echo "hdmi_cvt 480 320 60 1 0 0 0" >> \
			${DEPLOYDIR}/bcm2835-bootfiles/config.txt
		echo "dtoverlay=pitft35-resistive,rotate=90,speed=64000000,fps=30" >> \
			  ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
    fi
}
