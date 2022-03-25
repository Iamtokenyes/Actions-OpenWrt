#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

cd package
mkdir openwrt-packages
cd openwrt-packages
git clone https://github.com/destan19/OpenAppFilter.git
git clone  https://github.com/rufengsuixing/luci-app-adguardhome.git
git clone  https://github.com/gSpotx2f/luci-app-cpu-status.git
git clone https://github.com/fw876/helloworld.git
git clone https://github.com/jerrykuku/lua-maxminddb.git
git clone https://github.com/jerrykuku/luci-app-vssr.git
git clone https://github.com/aria2/aria2.git
#git clone https://github.com/lisaac/luci-app-dockerman.git
#git clone https://github.com/Iamtokenyes/luci-app-smartdns.git
#git clone https://github.com/pymumu/smartdns.git
#git clone https://github.com/KFERMercer/openwrt-baidupcs-web.git 
#git clone https://github.com/KFERMercer/luci-app-baidupcs-web.git
#svn co https://github.com/openwrt/packages/trunk/net/smartdns
#svn co https://github.com/openwrt/luci/trunk/applications/luci-app-smartdns
#svn co https://github.com/openwrt/luci/trunk/applications/luci-app-transmission
#svn co https://github.com/openwrt/packages/trunk/net/transmission
#svn co https://github.com/openwrt/packages/trunk/net/transmission-web-control
svn co https://github.com/sirpdboy/netspeedtest/trunk/luci-app-netspeedtest
cd ../../

sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
