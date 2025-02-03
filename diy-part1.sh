#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#git clone https://github.com/kenzok8/openwrt-packages.git package/small
git clone https://github.com/kenzok8/small.git package/kenzok8
git clone https://github.com/kenzok78/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/x-wrt/com.x-wrt.git package/com.x-wrt
# Add a feed source

#curl -sSL https://raw.githubusercontent.com/hong66489/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh --no-sfe
