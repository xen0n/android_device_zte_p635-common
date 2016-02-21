# inherit from the proprietary version
-include vendor/zte/p635b32/BoardConfigVendor.mk

DEVICE_FOLDER_COMMON := device/zte/p635-common

# Platform
TARGET_BOARD_PLATFORM := mt6735
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

TARGET_LDPRELOAD += libxlog.so

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true

ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader and partitions
TARGET_BOOTLOADER_BOARD_NAME := mt6735
BOARD_DONT_USE_MTK_BOOTIMG := true

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
    --base 0x40078000 \
    --pagesize 2048 \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x03f88000 \
    --second_offset 0x00e88000 \
    --tags_offset 0x0df88000 \
    --board P635B32V1.0.0B0

TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER_COMMON)/prebuilt/kernel
#BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER_COMMON)/boot.mk

TARGET_KMODULES := true

COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
BOARD_EGL_CFG := $(DEVICE_FOLDER_COMMON)/configs/egl.cfg
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# misc
USE_MINIKIN := true

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

#BOARD_HAVE_OPENSOURCE_IMMVIBE := true
#BOARD_HARDWARE_CLASS := $(DEVICE_FOLDER_COMMON)/cmhw

# RIL
# moved to forked frameworks_opt_telephony repo
#BOARD_RIL_CLASS := ../../../$(DEVICE_FOLDER)/ril/

BOARD_CONNECTIVITY_VENDOR := MediaTek
BOARD_CONNECTIVITY_MODULE := MT6630

# WIFI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# CWM
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER_COMMON)/root/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBA_8888"
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
#BOARD_CUSTOM_GRAPHICS := $(DEVICE_FOLDER)/recovery/graphics.cwmt.c
RECOVERY_FONT := roboto_15x24.h

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun%d/file"


# SELinux
BOARD_SEPOLICY_DIRS := \
    $(DEVICE_FOLDER_COMMON)/sepolicy

#SELinux: MTK added
BOARD_SEPOLICY_UNION := \
    app.te \
    device.te \
    domain.te \
    file.te \
    file_contexts \
    fs_use \
    installd.te \
    net.te \
    netd.te \
    te_macros \
    vold.te \
    untrusted_app.te \
    platform_app.te \
    system_app.te \
    zygote.te \
    aal.te \
    aee_core_forwarder.te \
    akmd09911.te \
    akmd8963.te \
    akmd8975.te \
    ami304d.te \
    ist8303.te \
    st480.te \
    af7133e.te \
    mc6470d.te \
    qmcX983d.te \
    atcid.te \
    atci_service.te \
    audiocmdservice_atci.te \
    batterywarning.te \
    bmm050d.te \
    bmm056d.te \
    boot_logo_updater.te \
    br_app_data_service.te \
    BGW.te \
    ccci_fsd.te \
    ccci_mdinit.te \
    statusd.te \
    flashlessd.te \
    ccci_rpcd.te \
    eemcs_fsd.te \
    eemcs_mdinit.te \
    dhcp6c.te \
    dm_agent_binder.te \
    dualmdlogger.te \
    dumpstate.te \
    em_svr.te \
    enableswap.te \
    factory.te \
    fota1.te \
    fuelgauged.te \
    geomagneticd.te \
    GoogleOtaBinder.te \
    gsm0710muxdmd2.te \
    gsm0710muxd.te \
    guiext-server.te \
    ipod.te \
    matv.te \
    mc6420d.te \
    mdlogger.te \
    mdnsd.te \
    memsicd3416x.te \
    memsicd.te \
    meta_tst.te \
    mmc_ffu.te \
    mmp.te \
    mnld.te \
    mobile_log_d.te \
    mpud6050.te \
    msensord.te \
    mmc3524xd.te \
    mtk_6620_launcher.te \
    mtk_agpsd.te \
    mtkbt.te \
    muxreport.te \
    netdiag.te \
    nvram_agent_binder.te \
    nvram_daemon.te \
    orientationd.te \
    permission_check.te \
    poad.te \
    pppd_dt.te \
    pppd_via.te \
    pq.te \
    recovery.te \
    resmon.te \
    mtkrild.te \
    mtkrildmd2.te \
    viarild.te \
    s62xd.te \
    sn.te \
    epdg_wod.te \
    ipsec.te \
    terservice.te \
    thermald.te \
    thermal_manager.te \
    thermal.te \
    tiny_mkswap.te \
    tiny_swapon.te \
    vdc.te \
    volte_imcb.te \
    volte_ua.te \
    volte_stack.te \
    vtservice.te \
    wmt_loader.te \
    icusbd.te \
    xlog.te \
    mobicore.te \
    install_recovery.te \
    program_binary.te \
    genfs_contexts

BOARD_SEPOLICY_UNION += \
    adbd.te \
    bluetooth.te \
    bootanim.te \
    clatd.te \
    debuggerd.te \
    drmserver.te \
    dhcp.te \
    dnsmasq.te \
    gpsd.te \
    hci_attach.te \
    healthd.te \
    hostapd.te \
    inputflinger.te \
    init.te \
    init_shell.te \
    isolated_app.te \
    keystore.te \
    kernel.te \
    lmkd.te \
    logd.te \
    mediaserver.te \
    mtp.te \
    nfc.te \
    racoon.te \
    radio.te \
    rild.te \
    runas.te \
    sdcardd.te \
    servicemanager.te \
    shared_relro.te \
    shell.te \
    system_app.te \
    system_server.te \
    surfaceflinger.te \
    tee.te \
    ueventd.te \
    uncrypt.te \
    watchdogd.te \
    wpa_supplicant.te \
    wpa.te \
    property.te \
    property_contexts \
    service.te \
    dmlog.te \
    MtkCodecService.te \
    ppl_agent.te \
    pvrsrvctl.te \
    wifi2agps.te \
    dex2oat.te \
    emdlogger.te \
    autokd.te \
    ppp.te \
    launchpppoe.te \
    sbchk.te \
    service_contexts \
    ril-3gddaemon.te \
    usbdongled.te \
    zpppd_gprs.te \
    md_ctrl.te \
    cmddumper.te \
    tunman.te \
    xen0n.te
