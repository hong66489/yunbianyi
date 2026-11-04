#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/ImmortalWrt/XG-040G-MD/g' package/base-files/files/bin/config_generate
sed -i 's/"lan1 lan2 lan3 lan4" "pon0"/"lan2 lan3 lan4" "lan1"/g' target/linux/airoha/an7581/base-files/etc/board.d/02_network
#sed -i 's/FCJ G-AX1800-F/360 T6GS/g' target/linux/ramips/dts/mt7621_fcj_g-ax1800-f.dts
#sed -i 's/ImmortalWrt/PandoraBox/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
# UPnP
#rm -rf feeds/{packages/net/miniupnpd,luci/applications/luci-app-upnp}
#git clone https://git.kejizero.online/zhao/miniupnpd feeds/packages/net/miniupnpd -b v2.3.7
#git clone https://git.kejizero.online/zhao/luci-app-upnp feeds/luci/applications/luci-app-upnp -b master
#sed -i '$a src-git mzwrt_package https://github.com/mzwrt/mzwrt_package' feeds.conf.default
#curl -sSL https://raw.githubusercontent.com/mufeng05/openwrt-sonic-fullcone/master/add_sonic_fullcone.sh | bash
