.class public Lcom/samsung/android/cmcsetting/CmcSettingManager;
.super Ljava/lang/Object;
.source "CmcSettingManager.java"


# static fields
.field private static IS_DUAL_SIM_SUPPORTED:Z

.field private static IS_MORE_THAN_U_OS:Z


# instance fields
.field private context:Landroid/content/Context;

.field private eventManager:Lcom/samsung/android/cmcsetting/EventManager;

.field private globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

.field private providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_MORE_THAN_U_OS:Z

    const-string/jumbo v1, "ro.build.version.oneui"

    const/4 v2, -0x1

    .line 25
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v2, 0xc3b4

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_DUAL_SIM_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->eventManager:Lcom/samsung/android/cmcsetting/EventManager;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    return-void
.end method

.method private getCmcActivationForCommon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getParamWithDeviceId(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "get_activations"

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getIntResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method private getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;
    .locals 0

    const-string p0, "Phone"

    .line 1469
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1470
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PHONE:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    :cond_0
    const-string p0, "Tablet"

    .line 1472
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1473
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TABLET:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    :cond_1
    const-string p0, "BT-Watch"

    .line 1475
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "Watch"

    .line 1476
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Speaker"

    .line 1479
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1480
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_SPEAKER:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    :cond_3
    const-string p0, "PC"

    .line 1482
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1483
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_PC:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    :cond_4
    const-string p0, "TV"

    .line 1485
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1486
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_TV:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    :cond_5
    const-string p0, "Laptop"

    .line 1488
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1489
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_LAPTOP:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    :cond_6
    const-string p0, "VST"

    .line 1491
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1492
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_VST:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    .line 1494
    :cond_7
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0

    .line 1477
    :cond_8
    :goto_0
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;->DEVICE_CATEGORY_BT_WATCH:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-object p0
.end method

.method private getDeviceTypeFromPackageManager()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 1

    .line 478
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "com.samsung.feature.device_category_tablet"

    .line 480
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 0

    const-string/jumbo p0, "pd"

    .line 1459
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1460
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object p0

    :cond_0
    const-string/jumbo p0, "sd"

    .line 1462
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1463
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object p0

    .line 1465
    :cond_1
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object p0
.end method

.method private getNetworkModeInternal()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 2

    .line 564
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v0, "cmc_network_type"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbIntValue(Ljava/lang/String;)I

    move-result p0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "own network mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    .line 567
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 570
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    return-object p0

    .line 572
    :cond_1
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_UNDEFINED:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    return-object p0
.end method

.method private getParamWithDeviceId(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 1437
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "device_id"

    .line 1438
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private inspector(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1523
    sget-boolean p0, Lcom/samsung/android/cmcsetting/FeatureConstants;->SHIP_BUILD:Z

    if-eqz p0, :cond_0

    const-string/jumbo p0, "xxxxx"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isApiSupportedWithDualSimSupported()Z
    .locals 1

    .line 1451
    sget-boolean p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_DUAL_SIM_SUPPORTED:Z

    if-nez p0, :cond_0

    const-string p0, "CmcSettingManager"

    const-string v0, "invalid oneui version"

    .line 1452
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcPackageInstalled(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    .line 332
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.samsung.android.mdecservice"

    invoke-virtual {p1, v0, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmc package is not exist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcSettingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isExistEssentialObjects()Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "CmcSettingManager"

    if-nez v0, :cond_0

    const-string p0, "context is null"

    .line 70
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->eventManager:Lcom/samsung/android/cmcsetting/EventManager;

    if-nez v0, :cond_1

    const-string p0, "eventManager is null"

    .line 74
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    if-nez v0, :cond_2

    const-string/jumbo p0, "providerHelper is null"

    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 81
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    if-nez p0, :cond_3

    const-string p0, "globalDbHelper is null"

    .line 82
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isSignatureMatched(Landroid/content/Context;)Z
    .locals 1

    .line 341
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "android"

    const-string v0, "com.samsung.android.mdecservice"

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidPreCondition(Ljava/lang/Object;)Z
    .locals 1

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "CmcSettingManager"

    const-string p1, "listener is null"

    .line 276
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private registerListenerCommon(Ljava/lang/Object;)Z
    .locals 1

    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isValidPreCondition(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->eventManager:Lcom/samsung/android/cmcsetting/EventManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListenerCommon(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public deInit()V
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string v1, "deInit"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->unregisterListener()Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->eventManager:Lcom/samsung/android/cmcsetting/EventManager;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    return-void
.end method

.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 3

    .line 433
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "call_activation"

    .line 435
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcActivationForCommon(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCmcCallActivation : deviceId( : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), cmcActivation("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcSettingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public getCmcSupported()Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string v1, "getCmcSupported"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCmcPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isSignatureMatched(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDeviceIdList()Ljava/util/ArrayList;
    .locals 2

    .line 696
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 698
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v0, "get_device_id_list"

    const-string v1, "device_id_list"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getSerializableObjectResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceIdList : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;
    .locals 5

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getParamWithDeviceId(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "get_device_info"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getResultBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const-string/jumbo v3, "result"

    const/4 v4, -0x2

    .line 838
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 839
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getDeviceInfo fail : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "error_reason"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 843
    :cond_2
    new-instance v1, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    invoke-direct {v1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;-><init>()V

    .line 844
    invoke-virtual {v1, p1}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceId(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 847
    const-string v2, "device_name"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 848
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceName(Ljava/lang/String;)V

    .line 850
    :cond_3
    const-string v2, "device_category"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 851
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceCategoryInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V

    .line 853
    :cond_4
    const-string v2, "device_type"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 854
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V

    .line 856
    :cond_5
    const-string p0, "activation"

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 857
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_6

    move p0, v4

    goto :goto_0

    :cond_6
    move p0, v3

    :goto_0
    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setActivation(Z)V

    .line 859
    :cond_7
    const-string p0, "message_activation"

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 860
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_8

    move p0, v4

    goto :goto_1

    :cond_8
    move p0, v3

    :goto_1
    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageActivation(Z)V

    .line 862
    :cond_9
    const-string p0, "call_activation"

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 863
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_a

    move p0, v4

    goto :goto_2

    :cond_a
    move p0, v3

    :goto_2
    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallActivation(Z)V

    .line 865
    :cond_b
    const-string p0, "message_allowed_sd_by_pd"

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 866
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_c

    move p0, v4

    goto :goto_3

    :cond_c
    move p0, v3

    :goto_3
    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setMessageAllowedSdByPd(Z)V

    .line 868
    :cond_d
    const-string p0, "call_allowed_sd_by_pd"

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 869
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_e

    goto :goto_4

    :cond_e
    move v4, v3

    :goto_4
    invoke-virtual {v1, v4}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setCallAllowedSdByPd(Z)V

    .line 871
    :cond_f
    const-string p0, "emergency_supported"

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 872
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->setEmergencyCallSupported(Z)V

    :cond_10
    return-object v1
.end method

.method public getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 4

    .line 738
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    .line 741
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getParamWithDeviceId(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "get_device_type"

    const-string v3, "device_type"

    .line 740
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getStringResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceType : deviceId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), deviceType("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CmcSettingManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 4

    .line 616
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v2, "get_line_id"

    const-string v3, "line_id"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getStringResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLineImpu()Ljava/lang/String;
    .locals 4

    .line 683
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v2, "get_line_impu"

    const-string v3, "impu"

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getStringResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineImpu : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getLinePcscfAddrList()Ljava/util/ArrayList;
    .locals 3

    .line 656
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v1, "get_line_pcscf_addr_list"

    const-string/jumbo v2, "pcscf_addr_list"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getSerializableObjectResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLinePcscfAddrList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->inspector(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getOwnCmcActivation()Z
    .locals 3

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 372
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v0, "cmc_activation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbIntValue(Ljava/lang/String;)I

    move-result p0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOwnCmcActivation : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CmcSettingManager"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public getOwnDeviceId()Ljava/lang/String;
    .locals 3

    .line 491
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 493
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v0, "get_own_device_id"

    const-string/jumbo v2, "own_device_id"

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getStringResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOwnDeviceId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 3

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v1, "cmc_device_type"

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "own device type - db : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcSettingManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 466
    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeInternal(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    return-object p0

    .line 469
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceTypeFromPackageManager()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string/jumbo p0, "ro.build.characteristics"

    const-string v0, ""

    .line 472
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "own device type - characteristics : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "tablet"

    .line 474
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    :goto_0
    return-object p0
.end method

.method public getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string v1, "getOwnNetworkMode"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getNetworkModeInternal()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object p0

    return-object p0
.end method

.method public getOwnServiceVersion()Ljava/lang/String;
    .locals 2

    .line 517
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 519
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v0, "cmc_service_version"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOwnServiceVersion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;
    .locals 4

    const-string v0, "getSamsungAccountInfo"

    .line 1006
    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1009
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSaInfo;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;-><init>()V

    .line 1010
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v3, "get_sa_info"

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getResultBundle(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v2, "result"

    const/4 v3, -0x1

    .line 1013
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "samsung_user_id"

    .line 1015
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaUserId(Ljava/lang/String;)V

    const-string v2, "access_token"

    .line 1016
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->setSaAccessToken(Ljava/lang/String;)V

    const-string p0, "getSamsungAccountInfo success"

    .line 1017
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1019
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSamsungAccountInfo fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "error_reason"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getSelectedSimSlotsOnPd()Ljava/util/List;
    .locals 3

    const-string v0, "getSelectedSimSlotsOnPd"

    .line 1132
    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1134
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isApiSupportedWithDualSimSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1136
    :cond_1
    sget-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_MORE_THAN_U_OS:Z

    if-eqz v0, :cond_5

    .line 1137
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v2, "cmc_selected_sims_on_pd"

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_5

    .line 1139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedSimSlotsOnPd success with global db : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 1148
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1146
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 1144
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 1142
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 1153
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v0, "get_selected_sim_slots_on_pd"

    const-string/jumbo v1, "selected_sim_slots_on_pd"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getSerializableObjectResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_6

    .line 1155
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    return-object p0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 6

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init : CmcSettingManager version : 2.1.6, context : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "context is null"

    .line 40
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 43
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCmcPackageInstalled(Landroid/content/Context;)Z

    move-result v2

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isSignatureMatched(Landroid/content/Context;)Z

    move-result v3

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmc package installed("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "), isSignatureMatched("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 47
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/cmcsetting/EventManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->eventManager:Lcom/samsung/android/cmcsetting/EventManager;

    .line 49
    new-instance v0, Lcom/samsung/android/cmcsetting/ProviderHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/cmcsetting/ProviderHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    .line 50
    new-instance v0, Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 4

    .line 779
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    .line 782
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getParamWithDeviceId(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v2, "get_call_allowed_sd_by_pd"

    const-string v3, "call_allowed_sd_by_pd"

    .line 781
    invoke-virtual {v0, v2, v3, p0}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getIntResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallAllowedSdByPd : deviceId("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), callAllowedSdByPd("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcSettingManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method public isDualSimSupportedOnPd()Z
    .locals 4

    .line 1102
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isApiSupportedWithDualSimSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1105
    :cond_1
    sget-boolean v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->IS_MORE_THAN_U_OS:Z

    const-string v2, "CmcSettingManager"

    if-eqz v0, :cond_4

    .line 1106
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    .line 1108
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v0, v3, :cond_2

    .line 1109
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v3, "cmc_is_dual_sim_supported"

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbIntValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1110
    :cond_2
    sget-object v3, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v0, v3, :cond_3

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v3, "cmc_is_dual_sim_supported_on_pd"

    invoke-virtual {v0, v3}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbIntValue(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v3, -0x2

    if-eq v0, v3, :cond_4

    .line 1117
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDualSimSupportedOnPd success with global db : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-ne v0, p0, :cond_3

    move v1, p0

    :cond_3
    return v1

    .line 1122
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->providerHelper:Lcom/samsung/android/cmcsetting/ProviderHelper;

    const-string v0, "dual_sim_supported_on_pd"

    const/4 v1, 0x0

    const-string v3, "is_dual_sim_supported_on_pd"

    invoke-virtual {p0, v3, v0, v1}, Lcom/samsung/android/cmcsetting/ProviderHelper;->getBooleanResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    .line 1123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDualSimSupportedOnPd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isEmergencyCallSupported()Z
    .locals 10

    .line 1041
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result v0

    const-string v1, "CmcSettingManager"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "cmc activation is false"

    .line 1042
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1046
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1047
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto :goto_1

    .line 1052
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 1053
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo p0, "ownDeviceId is empty"

    .line 1054
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1060
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v2

    move v5, v4

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1061
    invoke-virtual {p0, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceInfo(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcDeviceInfo;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 1064
    :cond_4
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v8, v9, :cond_5

    .line 1065
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isEmergencyCallSupported()Z

    move-result v5

    .line 1067
    :cond_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1068
    invoke-virtual {v7}, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->isEmergencyCallSupported()Z

    move-result v4

    goto :goto_0

    .line 1071
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isOwnEmergencyCallSupported("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "), isPdEmergencyCallSupported("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    :cond_8
    :goto_1
    const-string p0, "deviceIdList is empty"

    .line 1048
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isSameWifiNetworkOnly()Z
    .locals 3

    .line 1029
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1031
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->globalDbHelper:Lcom/samsung/android/cmcsetting/GlobalDbHelper;

    const-string v0, "cmc_same_wifi_network_status"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsetting/GlobalDbHelper;->getGlobalDbIntValue(Ljava/lang/String;)I

    move-result p0

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSameWifiNetworkOnly sameWifiNetworkStatus : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CmcSettingManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcActivationInfoChangedListener"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListenerCommon(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcCallActivationInfoChangedListener"

    .line 132
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListenerCommon(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcDeviceInfoChangedListener"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListenerCommon(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcLineInfoChangedListener"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListenerCommon(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcNetworkModeInfoChangedListener"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListenerCommon(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;)Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcSameWifiNetworkStatusListener"

    .line 246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListenerCommon(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "registerListener : CmcSamsungAccountInfoChangedListener"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListenerCommon(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public unregisterListener()Z
    .locals 3

    const-string/jumbo v0, "unregisterListener : all"

    .line 287
    const-string v1, "CmcSettingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isExistEssentialObjects()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager;->eventManager:Lcom/samsung/android/cmcsetting/EventManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterAllListener()Z

    const/4 p0, 0x1

    return p0
.end method
