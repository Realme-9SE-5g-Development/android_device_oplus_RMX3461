#!/bin/bash

banner(){
clear
echo "=================================="
echo "|                                |"
echo "|   Realme 9 5G SE Setup Script  |"
echo "|       Branch: Lineage          |"
echo "|    Maintained By: Cykeek       |"
echo "|                                |"
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
git clone https://github.com/Cykeek-Labs/android_kernel_sm8350 kernel/oplus/sm8350

# Clone Media Hals
banner 2>1
rm -rf hardware/qcom-caf/sm8350/audio
rm -rf hardware/qcom-caf/sm8350/media
rm -rf hardware/qcom-caf/sm8350/display
git clone https://github.com/Cykeek-Labs/android_hardware_qcom_audio hardware/qcom-caf/sm8350/audio
git clone https://github.com/Cykeek-Labs/android_hardware_qcom_media hardware/qcom-caf/sm8350/media
git clone https://github.com/Cykeek-Labs/android_hardware_qcom_display hardware/qcom-caf/sm8350/display
