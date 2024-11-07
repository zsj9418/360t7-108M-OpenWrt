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
sed -i 's/192.168.1.1/192.168.3.60/g' package/base-files/files/bin/config_generate
sed -i "s/hostname=''/hostname='360T7'/g" package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt-2.4G/cmcc/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i 's/ImmortalWrt-5G/cmcc_5G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
