#!/bin/sh
# /etc/udpate.sh PrivateRouter Update Script

# Verify we are connected to the Internet
is_connected() {
    ping -q -c3 1.1.1.1 >/dev/null 2>&1
    return $?
}


[ is_connected ] && {

   echo "updating all packages!"

   echo "                                                                      "
   echo " ███████████             ███                         █████            "
   echo "░░███░░░░░███           ░░░                         ░░███             "
   echo " ░███    ░███ ████████  ████  █████ █████  ██████   ███████    ██████ "
   echo " ░██████████ ░░███░░███░░███ ░░███ ░░███  ░░░░░███ ░░░███░    ███░░███"
   echo " ░███░░░░░░   ░███ ░░░  ░███  ░███  ░███   ███████   ░███    ░███████ "
   echo " ░███         ░███      ░███  ░░███ ███   ███░░███   ░███ ███░███░░░  "
   echo " █████        █████     █████  ░░█████   ░░████████  ░░█████ ░░██████ "
   echo "░░░░░        ░░░░░     ░░░░░    ░░░░░     ░░░░░░░░    ░░░░░   ░░░░░░  "
   echo "                                                                      "
   echo "                                                                      "
   echo " ███████████                        █████                             "
   echo "░░███░░░░░███                      ░░███                              "
   echo " ░███    ░███   ██████  █████ ████ ███████    ██████  ████████        "
   echo " ░██████████   ███░░███░░███ ░███ ░░░███░    ███░░███░░███░░███       "
   echo " ░███░░░░░███ ░███ ░███ ░███ ░███   ░███    ░███████  ░███ ░░░        "
   echo " ░███    ░███ ░███ ░███ ░███ ░███   ░███ ███░███░░░   ░███            "
   echo " █████   █████░░██████  ░░████████  ░░█████ ░░██████  █████           "
   echo "░░░░░   ░░░░░  ░░░░░░    ░░░░░░░░    ░░░░░   ░░░░░░  ░░░░░            "

   opkg update
   #Go Go Packages

  ## V2RAYA INSTALLER ##
   echo "Installing V2rayA..."
  ## download

  opkg update; opkg install unzip wget-ssl

    ## Remove DNSMasq

  opkg remove dnsmasq

  opkg install dnsmasq-full

  opkg install v2raya

  opkg install /etc/luci-app-v2raya_6_all.ipk


   echo "PrivateRouter update complete!"

   exit 0
} || exit 1
