#!/bin/bash

banner(){
clear
echo "=================================="
echo "|                                |"
echo "|   Realme 9 5G SE Setup Script  |"
echo "|       Branch: Lineage          |"
echo "|    Maintained By: Cykeek &     |"
echo "|          ZirgomHaidar          |"
echo "=================================="
}

banner 2>1

#Clone vibrator HAL
banner 2>1
rm -rf vendor/qcom/opensource/vibrator
git clone https://github.com/itsxrp/android_vendor_qcom_opensource_vibrator.git vendor/qcom/opensource/vibrator

# Clone Hardware Oplus
banner 2>1
rm -rf hardware/oplus
git clone https://github.com/Cykeek-Labs/android_hardware_oplus hardware/oplus

# Clone Kernel
banner 2>1
git clone https://github.com/ZirgomHaidar/kernel_oplus_sm8350 kernel/oplus/sm8350

# Clone Telephony
rm -rf vendor/codeaurora/telephony
git clone https://github.com/VoltageOS/vendor_codeaurora_telephony vendor/codeaurora/telephony

# Clone Gcam GO
git clone https://github.com/ArrowOS-Devices/android_packages_apps_GCamGOPrebuilt packages/apps/GCamGOPrebuilt
