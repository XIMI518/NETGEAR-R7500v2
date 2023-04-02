#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# git checkout 1a86fc37114da97764e337908d05e0752941acb9

# Add a feed source
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# 修改高通加载源网址-原址已失效
# sed -i 's/source.codeaurora.org\/quic/git.codelinaro.org\/clo/g'  package/qca/nss/qca-nss-clients/Makefile
# sed -i 's/nss-clients/nss-clients.git/g'  package/qca/nss/qca-nss-clients/Makefile
# sed -i 's/source.codeaurora.org\/quic/git.codelinaro.org\/clo/g'  package/qca/nss/qca-nss-drv/Makefile
# sed -i 's/nss-drv/nss-drv.git/g'  package/qca/nss/qca-nss-drv/Makefile
# sed -i 's/source.codeaurora.org\/quic/git.codelinaro.org\/clo/g'  package/qca/nss/qca-nss-ecm/Makefile
# sed -i 's/qca-nss-ecm/qca-nss-ecm.git/g'  package/qca/nss/qca-nss-ecm/Makefile
# sed -i 's/source.codeaurora.org\/quic/git.codelinaro.org\/clo/g'  package/qca/nss/qca-nss-gmac/Makefile
# sed -i 's/nss-gmac/nss-gmac.git/g'  package/qca/nss/qca-nss-gmac/Makefile
# sed -i 's/source.codeaurora.org\/quic/git.codelinaro.org\/clo/g'  package/qca/qca-mcs/Makefile
# sed -i 's/qca-mcs/qca-mcs.git/g'  package/qca/qca-mcs/Makefile

echo '添加jerrykuku的argon-mod主题'
rm -rf package/lean/luci-theme-argon  
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
echo '=========Add argon-mod OK!========='
