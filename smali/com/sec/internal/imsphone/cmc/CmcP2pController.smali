.class public Lcom/sec/internal/imsphone/cmc/CmcP2pController;
.super Landroid/os/Handler;
.source "CmcP2pController.java"


# static fields
.field private static final DBG:Z

.field private static final EVENT_SHUT_DOWN_P2P:I = 0x3e9

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVER_DOMAIN:Ljava/lang/String; = "p2p.samsungims.com"

.field private static final SHUT_DOWN_P2P_TIMEOUT:I = 0x3e8

.field private static final SIP_DOMAIN:Ljava/lang/String; = "samsungims.com"

.field private static final WD_CMC_ACTIVATION:Ljava/lang/String; = "cmc_activation"

.field private static final WD_HOST_PCSCF_IP:Ljava/lang/String; = "192.168.49.1"

.field private static final WD_PDN_NAME:Ljava/lang/String; = "p2p-wlan"

.field private static final WD_PROFILE_NAME_PD:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_PD"

.field private static final WD_PROFILE_NAME_SD:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_SD"


# instance fields
.field private mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

.field private mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

.field private final mIsEnableP2pFeature:Z

.field private mNeedP2pCallSession:Z

.field private mOwnDeviceId:Ljava/lang/String;

.field private mP2pCallSessionId:I

.field private mPhoneCount:I

.field private mPrevAct:I

.field private mPrimaryDuid:Ljava/lang/String;

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mWifiDirectAuthToken:Ljava/lang/String;

.field private mWifiDirectEnabled:Z

.field private mWifiDirectIsConnect:Z

.field private mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mWifiDirectRegistered:Z

.field private mWifiLocalIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->DBG:Z

    .line 48
    const-class v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/imsphone/cmc/IpServiceManager;)V
    .locals 3

    .line 144
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIsEnableP2pFeature:Z

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    .line 69
    iput p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPhoneCount:I

    .line 70
    sget-object v1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 71
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mOwnDeviceId:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrimaryDuid:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiLocalIp:Ljava/lang/String;

    .line 75
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    .line 76
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectRegistered:Z

    .line 77
    iput-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectAuthToken:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 81
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mNeedP2pCallSession:Z

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mP2pCallSessionId:I

    .line 86
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrevAct:I

    .line 87
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectEnabled:Z

    .line 145
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mContext:Landroid/content/Context;

    .line 146
    iput-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 147
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 148
    iput-object p4, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    .line 150
    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 151
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPhoneCount:I

    .line 152
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 153
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mPhoneCount: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPhoneCount:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getWifiIpAddress()Ljava/lang/String;
    .locals 3

    .line 432
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    .line 433
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 435
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wlan"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 442
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 448
    :catch_0
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "error in parsing"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    :cond_3
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "returning empty ip address"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string p0, ""

    return-object p0
.end method

.method private imsDeregister()V
    .locals 4

    .line 387
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "imsDeregister()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-boolean v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v0, :cond_1

    move v0, v1

    .line 389
    :goto_0
    iget v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPhoneCount:I

    if-ge v0, v2, :cond_2

    .line 390
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-interface {v2, v3, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mNeedP2pCallSession:Z

    const/4 v0, -0x1

    .line 394
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mP2pCallSessionId:I

    :cond_2
    return-void
.end method

.method private imsRegister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 339
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imsRegister(), mDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mContext:Landroid/content/Context;

    const-string v1, "MDMN"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 342
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SamsungCMC_P2P"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setPdn(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1, p2}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    .line 346
    const-string/jumbo p1, "p2p.samsungims.com"

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 348
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPrimaryDuid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mOwnDeviceId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mOwnDeviceId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectAuthToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrimaryDuid:Ljava/lang/String;

    .line 356
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrimaryDuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mOwnDeviceId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 359
    const-string/jumbo p1, "sip:D2D@samsungims.com"

    .line 360
    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 361
    const-string p1, "D2D@samsungims.com"

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 362
    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setSslType(I)V

    const/16 p1, 0xd

    .line 364
    invoke-virtual {v1, p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/4 p1, 0x3

    .line 365
    invoke-virtual {v1, p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p1, 0xa

    .line 366
    invoke-virtual {v1, p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p1, 0xf

    .line 367
    invoke-virtual {v1, p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p1, 0x8

    .line 368
    invoke-virtual {v1, p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    const/16 p1, 0x9

    .line 369
    invoke-virtual {v1, p1, v2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 371
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 372
    const-string p2, "192.168.49.1"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 374
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    add-int/lit16 p1, p1, 0x2710

    invoke-virtual {v1, p1}, Lcom/sec/ims/settings/ImsProfile;->setId(I)V

    .line 377
    iput-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 378
    :goto_0
    iget p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPhoneCount:I

    if-ge v2, p1, :cond_2

    .line 379
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-interface {p1, p2, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isExistCalls()Z
    .locals 1

    .line 409
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 411
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReadyToWifiDirectRegister()Z
    .locals 1

    .line 399
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->isExistCalls()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 400
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "there are calls with [wifi], releaseP2pNetwork!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private onShutDownP2p()V
    .locals 2

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mNeedP2pCallSession:Z

    const/4 v1, -0x1

    .line 158
    iput v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mP2pCallSessionId:I

    .line 160
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->onWifiDirectConnectionChanged(ZLjava/lang/String;)V

    return-void
.end method

.method private onWifiDirectConnectionChanged(ZLjava/lang/String;)V
    .locals 5

    .line 274
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiDirectConnectionChanged(), mDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "wlan0"

    const-string v2, "192.168.49.1"

    const-string v3, "local_network"

    if-eqz p1, :cond_4

    .line 276
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiDirectIsConnect: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mWifiDirectRegistered: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectRegistered:Z

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectRegistered:Z

    if-eqz p1, :cond_1

    .line 278
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    if-eqz p1, :cond_0

    .line 279
    const-string p0, "already wifi direct is registered, maybe it\'ll be connected for 3rd SD"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->imsDeregister()V

    :cond_1
    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mNeedP2pCallSession:Z

    .line 288
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    .line 289
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectAuthToken:Ljava/lang/String;

    .line 291
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string/jumbo v4, "p2p-wlan"

    if-ne p2, v0, :cond_3

    .line 292
    const-string p1, "SamsungCMC_WIFI_P2P_PD"

    invoke-direct {p0, v4, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->imsRegister(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    invoke-virtual {p1, v3, v2}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result p1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isWifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->getWifiIpAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiLocalIp:Ljava/lang/String;

    .line 302
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_3
    sget-object p2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 308
    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->setCmcActivation(Z)V

    .line 310
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->isReadyToWifiDirectRegister()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 311
    const-string p1, "SamsungCMC_WIFI_P2P_SD"

    invoke-direct {p0, v4, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->imsRegister(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_4
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    if-eqz p1, :cond_6

    .line 316
    const-string/jumbo p1, "the Wifi-Direct are all disconnected"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    sget-object p2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p1, p2, :cond_5

    .line 318
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    invoke-virtual {p1, v3, v2}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiLocalIp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 320
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiLocalIp:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->imsDeregister()V

    :cond_6
    const/4 p1, 0x0

    .line 326
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    .line 327
    const-string p2, ""

    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectAuthToken:Ljava/lang/String;

    .line 328
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiLocalIp:Ljava/lang/String;

    .line 329
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectRegistered:Z

    .line 330
    sget-object p2, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    .line 334
    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->setCmcActivation(Z)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
    .locals 3

    .line 219
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceType, mDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    return-object p0
.end method

.method public getP2pCallSessionId()I
    .locals 0

    .line 228
    iget p0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mP2pCallSessionId:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 418
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "EVENT_SHUT_DOWN_P2P"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->onShutDownP2p()V

    :goto_0
    return-void
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isExistP2pConnection()Z
    .locals 3

    .line 214
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExistP2pConnection, mWifiDirectIsConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectIsConnect:Z

    return p0
.end method

.method public needP2pCallSession(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mNeedP2pCallSession:Z

    return-void
.end method

.method public onDeregistered(I)V
    .locals 3

    .line 255
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeregistered, cmcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 256
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mNeedP2pCallSession:Z

    const/4 v1, -0x1

    .line 257
    iput v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mP2pCallSessionId:I

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    const-string/jumbo p0, "wifi-direct disconnect, releaseP2pNetwork!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onRegistered(I)V
    .locals 3

    .line 236
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered, cmcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 241
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mWifiDirectRegistered:Z

    if-ne p1, v0, :cond_1

    .line 243
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mNeedP2pCallSession:Z

    if-eqz p1, :cond_1

    .line 244
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mIpServiceManager:Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    const-string p1, "local_network"

    const-string v0, "192.168.49.1"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCmcActivation(Z)V
    .locals 3

    .line 193
    const-string v0, "cmc_activation"

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrevAct:I

    .line 195
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connected, mPrevAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrevAct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 198
    :cond_0
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnected, mPrevAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrevAct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrevAct:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrevAct:I

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    iput v1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mPrevAct:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setP2pCallSessionId(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mP2pCallSessionId:I

    return-void
.end method

.method public setP2pPD()V
    .locals 2

    .line 209
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setP2pPD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    return-void
.end method

.method public startP2pBind()V
    .locals 0

    .line 0
    return-void
.end method

.method public stopP2p()V
    .locals 3

    .line 186
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopP2p: curDeviceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->mDeviceType:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> None"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    const-wide/16 v1, 0x3e8

    .line 189
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
