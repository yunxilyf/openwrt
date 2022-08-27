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
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate #修改默认ip
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile   # 选择argon为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-nginx/Makefile   # 选择argon为默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci-ssl-nginx/Makefile   # 选择argon为默认主题
rm -rf  feeds/luci/themes/luci-theme-argon   # 删除自带argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon   # 替换新版argon
sed -i '/<tr><td width="33%"><%:CPU usage/a <tr><td width="33%"><%:Compiler author%></td><td>Nian</td></tr>' package/lean/autocore/files/x86/index.htm #添加编译作者
sed -i 's/OpenWrt/Nianwrt/g' package/base-files/files/bin/config_generate #修改主机名
sed -i '5a\msgid "Compiler author"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '6a\msgstr "编译作者"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '7a \\' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '/<tr><td width="33%"><%:Compiler author/a <tr><td width="33%"><%:Firmware Update%></td><td><a target="_blank" href="https://github.com/ligehhh/openwrt/releases">点这里</a></td></tr>' package/lean/autocore/files/x86/index.htm #添加固件更新地址
sed -i '8a\msgid "Firmware Update"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '9a\msgstr "固件更新"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '10a \\' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '/<tr><td width="33%"><%:CPU usage/a <tr><td width="33%"><%:oopp%></td><td > <iframe width="700" height="100" frameborder="0" scrolling="no" hspace="0" src="//ip.skk.moe/simple"></iframe>' package/lean/autocore/files/x86/index.htm #添加测速IP地址
sed -i '11a\msgid "oopp"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '12a\msgstr "网络IP地址"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '13a \\' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '/<tr><td width="33%"><%:Firmware Update/a <tr><td width="10%"><%:Urban weather%></td><td > <iframe width="900" height="120" frameborder="0" scrolling="no" hspace="0" src="//i.tianqi.com/?c=code&a=getcode&id=22&py= &icon=1"></iframe>' package/lean/autocore/files/x86/index.htm #添加天气
sed -i '14a\msgid "Urban weather"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '15a\msgstr "最近天气"' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
sed -i '16a \\' feeds/luci/modules/luci-base/po/zh-cn/base.po #添加汉化
