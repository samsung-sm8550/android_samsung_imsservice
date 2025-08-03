.class public Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;
.super Landroid/os/Handler;
.source "CmcConnectivityController.java"

# interfaces
.implements Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;


# static fields
.field private static final DBG:Z

.field private static final EVENT_TRY_NSD_BIND:I = 0x3e9

.field private static final EVENT_TRY_NSD_BIND_DELAYED:I = 0x3ea

.field private static final IMS_PCSCF_IP:Ljava/lang/String; = "ims_pcscf_ip"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NSD_BIND_TIMEOUT:I = 0x2710

.field private static final SERVER_DOMAIN:Ljava/lang/String; = "p2p.samsungims.com"

.field private static final SIP_DOMAIN:Ljava/lang/String; = "samsungims.com"

.field private static final URN_PREFIX:Ljava/lang/String; = "urn:duid:"

.field private static final WIFI_HS_PCSCF_PREF:Ljava/lang/String; = "mobile_hotspot_pcscf"

.field private static final WIFI_HS_PDN_NAME:Ljava/lang/String; = "swlan"

.field private static final WIFI_HS_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_HS_PD"

.field private static final WIFI_PDN_NAME:Ljava/lang/String; = "wlan"

.field private static final WIFI_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_PD"

.field private static final WIFI_PROFILE_NAME_SD:Ljava/lang/String; = "SamsungCMC_WIFI_SD"

.field public static mWifiRegistered:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

.field private mFirstTrigger:Ljava/lang/String;

.field private mHotspotAuthToken:Ljava/lang/String;

.field private mHotspotHostPcscfIp:Ljava/lang/String;

.field private mHotspotIsConnect:Z

.field private mHotspotLocalIp:Ljava/lang/String;

.field private mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mHotspotRegistered:Z

.field private mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

.field private mNsdBound:Z

.field private mOwnDeviceId:Ljava/lang/String;

.field private mOwnDuid:Ljava/lang/String;

.field private mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

.field private mPhoneCount:I

.field private mPrimaryDuid:Ljava/lang/String;

.field private final mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mRetryCountBound:I

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mWifiAuthToken:Ljava/lang/String;

.field private mWifiHostPcscfIp:Ljava/lang/String;

.field private mWifiIsConnect:Z

.field private mWifiLocalIp:Ljava/lang/String;

.field private mWifiProfile:Lcom/sec/ims/settings/ImsProfile;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHotspotHostPcscfIp(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIpServiceManager(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/imsphone/cmc/IpServiceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmP2pController(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/imsphone/cmc/CmcP2pController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRm(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiProfile(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHotspotRegistered(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetHSPref(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->getHSPref()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mretryWifiRegister(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->retryWifiRegister(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHSPref(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->setHSPref(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->DBG:Z

    .line 53
    const-class v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    sput-boolean v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 4

    .line 107
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    const/4 v1, 0x0

    .line 78
    iput v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    .line 79
    sget-object v2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    iput-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 80
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mFirstTrigger:Ljava/lang/String;

    .line 81
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    .line 83
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mNsdBound:Z

    .line 85
    iput v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRetryCountBound:I

    .line 88
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 90
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 96
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 97
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    .line 98
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotLocalIp:Ljava/lang/String;

    .line 99
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 100
    iput-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 227
    new-instance v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;-><init>(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 110
    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 111
    new-instance v1, Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    invoke-direct {v1, v0}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    .line 114
    new-instance v1, Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    invoke-direct {v1, p1, p0, p2, v3}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;-><init>(Landroid/os/Looper;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/imsphone/cmc/IpServiceManager;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "cmc_device_type"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    const-string/jumbo p2, "pd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 118
    sget-object p1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    goto :goto_0

    .line 119
    :cond_0
    const-string/jumbo p2, "sd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    sget-object p1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    goto :goto_0

    .line 122
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-eq p1, v2, :cond_2

    .line 126
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->registerP2pListener()V

    .line 129
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    .line 130
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPhoneCount: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getHSPref()Ljava/lang/String;
    .locals 3

    .line 619
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "ims_pcscf_ip"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 622
    const-string v0, "mobile_hotspot_pcscf"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getIpAddress(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;)Ljava/lang/String;
    .locals 3

    .line 654
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    .line 655
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 656
    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    if-ne p1, v1, :cond_1

    .line 658
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "swlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 661
    :cond_1
    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    if-ne p1, v1, :cond_2

    .line 663
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 666
    :cond_2
    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Internet:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    if-ne p1, v1, :cond_3

    .line 668
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rmnet0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 673
    :cond_3
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 674
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 676
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 677
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 682
    :catch_0
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "error in parsing"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_5
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "returning empty ip address"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string p0, ""

    return-object p0
.end method

.method private hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 435
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 436
    iput-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 437
    sget-object p1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->getIpAddress(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 439
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->isReadyToHotspotRegister()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 440
    const-string/jumbo p2, "swlan"

    const-string p3, "SamsungCMC_WIFI_HS_PD"

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 443
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    if-eqz p1, :cond_3

    .line 444
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "the Hotspot are all disconnected"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 447
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    const-string p2, "local_network"

    iget-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    .line 449
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    .line 450
    const-string p2, ""

    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotLocalIp:Ljava/lang/String;

    .line 451
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    .line 452
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    .line 453
    iget-boolean p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz p2, :cond_2

    move p2, p1

    .line 454
    :goto_0
    iget p3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge p2, p3, :cond_2

    .line 455
    iget-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p3, v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 458
    :cond_2
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private imsRegister(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 464
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "MDMN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 465
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 466
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SamsungCMC_P2P"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 467
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setPdn(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v1, p3}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    .line 470
    const-string/jumbo p2, "p2p.samsungims.com"

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 471
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 472
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 474
    const-string/jumbo p2, "sip:D2D@samsungims.com"

    .line 475
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 476
    const-string p2, "D2D@samsungims.com"

    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 477
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setSslType(I)V

    const/16 p2, 0xd

    .line 479
    invoke-virtual {v1, p2, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/4 p3, 0x3

    .line 480
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0xa

    .line 481
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0xf

    .line 482
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0x8

    .line 483
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p3, 0x9

    .line 484
    invoke-virtual {v1, p3, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/4 p3, 0x1

    .line 485
    invoke-virtual {v1, p3}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    sget-object v3, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_1

    .line 489
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 491
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 493
    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 494
    :goto_0
    iget p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge v2, p1, :cond_2

    .line 495
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-interface {p1, p2, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 497
    :cond_1
    sget-object v3, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi_HS:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    if-ne p1, v3, :cond_2

    .line 498
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 500
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 503
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 504
    const-string v0, "mmtel"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {v1, p2, p1}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 506
    invoke-virtual {v1, p2, p3}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 508
    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 509
    :goto_1
    iget p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge v2, p1, :cond_2

    .line 510
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-interface {p1, p2, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private isReadyToHotspotRegister()Z
    .locals 3

    .line 584
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHotspotIsConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mHotspotRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotIsConnect:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 589
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz v1, :cond_1

    return v2

    .line 593
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotHostPcscfIp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    .line 597
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiRegistered: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-boolean p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz p0, :cond_3

    .line 599
    const-string p0, "There is already [wifi] registration. don\'t mobile-hotspot registration"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyToWifiPDRegister()Z
    .locals 4

    .line 558
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->isReadyToWifiRegister()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 562
    :cond_0
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHotspotRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mHotspotRegistered:Z

    if-eqz p0, :cond_1

    .line 564
    const-string p0, "There is already [mobile-hotspot] registration. don\'t wifi registration"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyToWifiRegister()Z
    .locals 3

    .line 519
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiIsConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWifiRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-boolean v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 525
    :cond_0
    sget-boolean v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v0, :cond_1

    return v1

    .line 529
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyToWifiSDRegister()Z
    .locals 2

    .line 571
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->isReadyToWifiRegister()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 575
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result p0

    if-lez p0, :cond_1

    .line 577
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "There is already cmc registration. don\'t wifi registration"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private onShutDownNsd(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 343
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->onWifiDirectConnectionChanged(ZLjava/lang/String;)V

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0, v0, v1, v1, v2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x3ea

    const-wide/16 v0, 0x2710

    .line 348
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private onWifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_0

    return-void

    .line 360
    :cond_0
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWifiConnectionChanged()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object v2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    if-eqz p4, :cond_4

    .line 362
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 372
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 374
    const-string/jumbo p4, "wifi register by priority (WIFI > MOBILE-HOTSPOT)"

    invoke-static {v0, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_2
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryRegister intf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string/jumbo v0, "wlan0"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 383
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 388
    :cond_3
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_4
    :goto_0
    const-string/jumbo p1, "there are no network interface, all disconnect"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->hotspotConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct {p0, v1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 394
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onWifiDirectConnectionChanged(ZLjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method private registerP2pListener()V
    .locals 2

    .line 640
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerP2pListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 644
    :catch_0
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerP2pListener failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private retryWifiRegister(Ljava/lang/String;)V
    .locals 3

    .line 606
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryWifiRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string/jumbo v2, "wlan"

    if-ne v0, v1, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->isReadyToWifiPDRegister()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->isReadyToWifiSDRegister()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHSPref(Ljava/lang/String;)V
    .locals 3

    .line 626
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mContext:Landroid/content/Context;

    const-string v1, "ims_pcscf_ip"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 628
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 630
    const-string v0, "mobile_hotspot_pcscf"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 632
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHSPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterImsRegistrationListener()V
    .locals 1

    .line 649
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unregisterImsRegistrationListener"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private wifiConnectionChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 401
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 402
    iput-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 404
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object p2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string/jumbo p3, "wlan"

    if-ne p1, p2, :cond_0

    .line 405
    sget-object p1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->getIpAddress(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 406
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->isReadyToWifiPDRegister()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 407
    const-string p2, "SamsungCMC_WIFI_PD"

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 410
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->isReadyToWifiSDRegister()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 411
    sget-object p1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;->Wifi:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;

    const-string p2, "SamsungCMC_WIFI_SD"

    invoke-direct {p0, p1, p3, p2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->imsRegister(Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$ConnectType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    if-eqz p1, :cond_3

    .line 417
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "the Wifi are all disconnected"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 418
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiIsConnect:Z

    .line 419
    const-string p2, ""

    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiLocalIp:Ljava/lang/String;

    .line 420
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiHostPcscfIp:Ljava/lang/String;

    .line 421
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiAuthToken:Ljava/lang/String;

    .line 422
    sget-boolean p2, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz p2, :cond_2

    move p2, p1

    .line 423
    :goto_0
    iget p3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge p2, p3, :cond_2

    .line 424
    iget-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p3, v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 427
    :cond_2
    sput-boolean p1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    return-object p0
.end method

.method public getP2pCallSessionId()I
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->getP2pCallSessionId()I

    move-result p0

    return p0
.end method

.method public getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->isEnabledWifiDirectFeature()Z

    move-result p0

    return p0
.end method

.method public isExistP2pConnection()Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->isExistP2pConnection()Z

    move-result p0

    return p0
.end method

.method public isWifiRegistered()Z
    .locals 0

    .line 690
    sget-boolean p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    return p0
.end method

.method public needP2pCallSession(Z)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->needP2pCallSession(Z)V

    return-void
.end method

.method public setCmcActivation(Z)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->setCmcActivation(Z)V

    return-void
.end method

.method public setP2pCallSessionId(I)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->setP2pCallSessionId(I)V

    return-void
.end method

.method public setP2pPD()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->setP2pPD()V

    return-void
.end method

.method public startNsdBind()V
    .locals 2

    .line 194
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNsdBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    .line 195
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startP2pBind()V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->startP2pBind()V

    return-void
.end method

.method public startRegi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 200
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mOwnDeviceId:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:duid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    .line 203
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "ownDuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mOwnDuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primaryDuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", deviceType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object p2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p1, p2, :cond_0

    .line 207
    const-string p1, "SamsungCMC_WIFI_SD"

    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->retryWifiRegister(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopP2p()V
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mP2pController:Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->stopP2p()V

    return-void
.end method

.method public stopRegi()V
    .locals 5

    .line 213
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopRegi, mWifiRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne v0, v1, :cond_1

    .line 216
    sget-boolean v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 217
    :goto_0
    iget v2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    sput-boolean v0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    :cond_1
    return-void
.end method
