.class public Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;
.super Lcom/sec/internal/ims/core/handler/RegistrationHandler;
.source "ResipRegistrationManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ResipRegiMgr"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

.field protected mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mUaHandler:Landroid/os/Handler;

.field protected mUaHandlerThread:Landroid/os/HandlerThread;

.field protected final mUaList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3-DeQWFSwhyzaJccz6g8UpkjIUc(ILcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->lambda$configureRCS$0(ILcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_5kc6pk5Weu_zgNHdxdQpCo4Kbo(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->lambda$isUserAgentInRegistered$1(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/RegistrationHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    .line 117
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    .line 122
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 123
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 124
    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-void
.end method

.method private configureCmc(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;Landroid/os/Bundle;)V
    .locals 1

    .line 523
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;-><init>()V

    .line 524
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->setCmcType(I)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    .line 526
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;

    invoke-direct {v0, p3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;-><init>(Landroid/os/Bundle;)V

    .line 528
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->setAccessToken(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 529
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->get(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->setAuthServerUrl(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->RELAY_TYPE:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 530
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->get(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->setCmcRelayType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->EMERGENCY_CALL_NUMBERS:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 531
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->get(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->setCmcEmergencyNumbers(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SUPPORT_DUAL_SIM_CMC:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 532
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->get(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->setSupportDualSimCmc(Z)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    move-result-object p1

    sget-object p3, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->HOTSPOT_ADDRESSES:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 533
    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$BundleDataGetter;->get(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->setHotspotAddresses(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/CmcProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCmcProfile(Lcom/sec/internal/ims/core/handler/secims/CmcProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    return-void
.end method

.method private configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .locals 6

    .line 402
    const-string v0, "ResipRegiMgr"

    const-string v1, "configureMedia:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 407
    :try_start_0
    const-class v2, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object p0

    .line 409
    const-string v3, "getHwSupportedVideoCodecs"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 410
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoCodec()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const-string p0, ""

    .line 418
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x77

    const/16 v3, 0x78

    goto :goto_1

    :cond_0
    const/16 v2, 0x6f

    const/16 v3, 0x70

    .line 424
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 425
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 426
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioPortStart()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 427
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioDscp()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioDscp(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 428
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbbePayload()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 429
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnboaPayload()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 430
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbbePayload()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 431
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwboaPayload()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbOaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 432
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmropenPayload()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOpenPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 433
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfNbPayload()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 434
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfWbPayload()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfWbPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 435
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnboaMaxRed()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 436
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbbeMaxRed()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrBeMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 437
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwboaMaxRed()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrOaWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 438
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbbeMaxRed()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrBeWbMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 439
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsMaxRed()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsMaxRed(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 440
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrnbMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 441
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAmrwbMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAmrWbMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 442
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioAS()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 443
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRS()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 444
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRR()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 445
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPTime()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 446
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMaxPTime()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setMaxPTime(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object v4

    .line 447
    invoke-virtual {v4, p0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 448
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoPortStart()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 449
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getFramerate()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setFrameRate(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 450
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDisplayFormat(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 451
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDisplayFormatHevc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDisplayFormatHevc(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 452
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPacketizationMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setPacketizationMode(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 453
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265QvgaPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 454
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265QvgalPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 455
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265VgaPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 456
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265VgalPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 457
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265Hd720pPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265Hd720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 458
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH265Hd720plPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH265Hd720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 459
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264720pPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264720pPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 460
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264720plPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264720pLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 461
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264VgaPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264VgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 462
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264VgalPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264VgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 463
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264QvgaPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264QvgaPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 464
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264QvgalPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264QvgaLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 465
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264CifPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264CifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 466
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH264CiflPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH264CifLPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 467
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getH263QcifPayload()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setH263QcifPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 468
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getUseSpsForH264Hd()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setUseSpsForH264Hd(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 469
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoAS()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 470
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRS()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 471
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRR()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 472
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setT140PayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 473
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setT140RedPayloadType(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 474
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextAS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextAs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 475
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextRS()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextRs(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 476
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextRR()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextRr(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 477
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextPort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextPort(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 478
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioAvpf()I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 479
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioSrtp()I

    move-result v2

    if-ne v2, v1, :cond_2

    move v2, v1

    goto :goto_3

    :cond_2
    move v2, v0

    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 480
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoAvpf()I

    move-result v2

    if-ne v2, v1, :cond_3

    move v2, v1

    goto :goto_4

    :cond_3
    move v2, v0

    :goto_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 481
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoSrtp()I

    move-result v2

    if-ne v2, v1, :cond_4

    move v2, v1

    goto :goto_5

    :cond_4
    move v2, v0

    :goto_5
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 482
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextAvpf()I

    move-result v2

    if-ne v2, v1, :cond_5

    move v2, v1

    goto :goto_6

    :cond_5
    move v2, v0

    :goto_6
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextAvpf(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 483
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getTextSrtp()I

    move-result v2

    if-ne v2, v1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setTextSrtp(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 484
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSupportVideoCapabilities()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoCapabilities(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 485
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRTPTimeout()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setRtpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 486
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRTCPTimeout()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setRtcpTimeout(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 487
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getIgnoreRtcpTimeoutOnHoldCall()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setIgnoreRtcpTimeoutOnHoldCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 488
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRtcpOnActiveCall()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableRtcpOnActiveCall(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 489
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableAvSync()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableAvSync(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 490
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableScr()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableScr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 491
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAudioRtcpXr()I

    move-result v2

    if-ne v2, v1, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    move v2, v0

    :goto_8
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setAudioRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 492
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoRtcpXr()I

    move-result v2

    if-ne v2, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    :goto_9
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setVideoRtcpXr(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 493
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getDtmfMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setDtmfMode(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 494
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableEvsCodec()I

    move-result v2

    if-ne v2, v1, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEnableEvsCodec(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 495
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDiscontinuousTransmission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDiscontinuousTransmission(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 496
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDtxRecv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDtxRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 497
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsHeaderFull()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsHeaderFull(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 498
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsModeSwitch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsModeSwitch(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 499
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelSend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 500
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelRecv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelRecv(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 501
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsChannelAwareReceive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsChannelAwareReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 502
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsCodecModeRequest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsCodecModeRequest(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 503
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateSend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 504
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateReceive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 505
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSend()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthSend(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 506
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthReceive()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthReceive(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 507
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsPayload()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 508
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvs2ndPayload()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvs2ndPayload(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 509
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDefaultBandwidth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDefaultBandwidth(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 510
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsDefaultBitrate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsDefaultBitrate(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 511
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsPayloadExt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsPayloadExt(I)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 512
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateSendExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 513
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBitRateReceiveExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBitRateReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 514
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthSendExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthSendExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 515
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsBandwidthReceiveExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsBandwidthReceiveExt(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 516
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsLimitedCodec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsLimitedCodec(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 517
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEvsUseDefaultRtcpBw()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->setEvsUseDefaultRtcpBw(Z)Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;

    move-result-object p0

    .line 519
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/CallProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object p0

    return-object p0
.end method

.method private configureRCS(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 4

    .line 1187
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1188
    const-string v1, "ResipRegiMgr"

    const-string v2, "configureRCS:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1190
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 1191
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 1190
    invoke-interface {v1, v2, p1, v0, p0}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsConfig(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/constants/ims/config/RcsConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1193
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configRCS(ILcom/sec/internal/constants/ims/config/RcsConfig;)V

    :cond_0
    return-void
.end method

.method private configureTimerTS(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1

    .line 387
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 388
    sget-object p1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_0

    const/16 p0, 0x3e8

    goto :goto_1

    .line 391
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d00

    goto :goto_1

    :cond_2
    :goto_0
    const p0, 0x30d40

    .line 395
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "timerTS=%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResipRegiMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerTS(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    return-object p2
.end method

.method private createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 62
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;",
            ")",
            "Lcom/sec/internal/ims/core/handler/secims/UserAgent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 543
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    .line 544
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v12

    .line 545
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v13

    .line 546
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v14

    .line 547
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v15

    .line 548
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    const/16 v16, 0x0

    .line 550
    const-string v3, "ResipRegiMgr"

    if-nez v2, :cond_0

    .line 551
    const-string v0, "createUserAgent: ifacename is null"

    invoke-static {v3, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    .line 555
    :cond_0
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v12

    .line 556
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v12

    .line 557
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getUsePrecondition()I

    move-result v19

    move/from16 v20, v15

    if-eqz v19, :cond_1

    const/16 v22, 0x1

    goto :goto_0

    :cond_1
    const/16 v22, 0x0

    .line 558
    :goto_0
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getPrecondtionInitialSendrecv()Z

    move-result v15

    move/from16 v23, v15

    .line 559
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getSessionExpire()I

    move-result v15

    move/from16 v24, v15

    .line 560
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getMinSe()I

    move-result v15

    move/from16 v25, v15

    .line 561
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getSessionRefresher()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v15

    .line 562
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getRegExpire()I

    move-result v15

    move/from16 v27, v15

    .line 563
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getMssSize()I

    move-result v15

    move/from16 v28, v15

    .line 564
    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getPdnName(I)Ljava/lang/String;

    move-result-object v15

    .line 565
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v7

    move/from16 v29, v7

    .line 566
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getSipMobility()I

    move-result v7

    move/from16 v30, v7

    .line 567
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->isEnableGruu()Z

    move-result v7

    move/from16 v31, v7

    .line 568
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->isEnableVcid()Z

    move-result v7

    move/from16 v32, v7

    .line 569
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->isEnableSessionId()Z

    move-result v7

    move/from16 v33, v7

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getAudioEngineType()I

    move-result v7

    .line 572
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getSubscribeForReg()I

    move-result v34

    if-eqz v34, :cond_2

    move/from16 v34, v7

    const/16 v35, 0x1

    goto :goto_1

    :cond_2
    move/from16 v34, v7

    const/16 v35, 0x0

    .line 573
    :goto_1
    invoke-virtual {v11, v1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType(I)I

    move-result v7

    move/from16 v36, v7

    .line 574
    const-string/jumbo v7, "support_upgrade_precondition"

    invoke-virtual {v11, v7}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 575
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v37

    .line 576
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getEncrNullRoaming()Z

    move-result v6

    move/from16 v38, v6

    .line 577
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getAcb()Ljava/util/List;

    move-result-object v6

    move-object/from16 v39, v6

    .line 578
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSupportUpgradePrecondition "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v12, :cond_4

    .line 582
    const-string v6, "mmtel-video"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 583
    sget-object v6, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    move v8, v7

    invoke-static {v6}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 584
    sget-object v6, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 585
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v7, "createUserAgent: add mmtel, mmtel-video to Capabilities for E-REGI"

    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    move v8, v7

    .line 587
    sget-object v6, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 588
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v7, "createUserAgent: add mmtel to Capabilities for E-REGI"

    invoke-virtual {v6, v1, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 590
    :goto_2
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isRttModeOnFromCallSettings(Landroid/content/Context;I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRTTMode(Ljava/lang/Boolean;)V

    goto :goto_3

    :cond_4
    move v8, v7

    .line 593
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createUserAgent: ownCap= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v1, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 595
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v6

    move/from16 v40, v8

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    move-object/from16 v41, v11

    int-to-long v10, v8

    cmp-long v6, v6, v10

    if-nez v6, :cond_6

    .line 596
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    const-string/jumbo v6, "smsip"

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 597
    const-string v6, "createUserAgent: empty capabilities. smsip only registration"

    invoke-static {v3, v1, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 599
    :cond_5
    const-string v0, "createUserAgent: empty capabilities. fail to create"

    invoke-static {v3, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    .line 604
    :cond_6
    :goto_4
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 605
    new-instance v7, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v45

    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v44, v10

    move-object/from16 v46, v11

    move-object/from16 v47, v5

    move-object/from16 v48, v6

    move-object/from16 v49, v4

    invoke-direct/range {v42 .. v49}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/core/handler/secims/IStackIF;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserAgent: pdn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") services "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserAgent: uuid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 612
    invoke-virtual/range {v41 .. v41}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_9

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    goto :goto_5

    :cond_7
    if-nez v14, :cond_8

    const-wide/16 v4, 0x0

    goto :goto_6

    .line 618
    :cond_8
    invoke-virtual {v14}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    goto :goto_6

    .line 616
    :cond_9
    :goto_5
    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getP2pNetworkHandle(I)J

    move-result-wide v4

    .line 621
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createUserAgent: profile="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v41 .. v41}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " iface="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " NetId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 623
    invoke-virtual/range {v41 .. v41}, Lcom/sec/ims/settings/ImsProfile;->getRegistrationAlgorithm()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_a

    .line 625
    const-string v8, "md5"

    .line 628
    :cond_a
    invoke-virtual/range {v41 .. v41}, Lcom/sec/ims/settings/ImsProfile;->getAuthAlgorithm()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    .line 630
    const-string v10, "hmac-md5-96,hmac-sha-1-96,hmac-sha-2-256-128,hmac-sha-2-512-256"

    .line 632
    :cond_b
    invoke-virtual/range {v41 .. v41}, Lcom/sec/ims/settings/ImsProfile;->getEncAlgorithm()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_c

    .line 634
    const-string/jumbo v11, "null,des-ede3-cbc,aes-cbc,aes-gcm-16"

    :cond_c
    move-object/from16 v42, v14

    .line 639
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    move-object/from16 v43, v7

    move-object/from16 v7, v41

    invoke-static {v14, v1, v7}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v14

    .line 640
    invoke-static {v14}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfileType(Ljava/lang/String;)I

    move-result v14

    .line 645
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimer1()I

    move-result v41

    .line 646
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimer2()I

    move-result v44

    .line 647
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimer4()I

    move-result v45

    .line 648
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryBaseTime()I

    move-result v46

    .line 649
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getRegRetryMaxTime()I

    move-result v47

    .line 651
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getQValue()I

    move-result v48

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 652
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v49

    .line 653
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/sec/internal/helper/SimUtil;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    move/from16 v51, v13

    .line 660
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createUserAgent: task.getMno()="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " sm.getSimMno()="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v1, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v13

    if-eq v9, v13, :cond_d

    .line 662
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v9

    .line 663
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/internal/helper/SimUtil;->getMvnoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move/from16 v52, v14

    .line 664
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v53, v11

    const-string v11, "createUserAgent: Updated mno: "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " mvno: "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    :cond_d
    move-object/from16 v53, v11

    move/from16 v52, v14

    move-object/from16 v9, v49

    move-object/from16 v13, v50

    .line 666
    :goto_7
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v11

    .line 667
    invoke-static {v11}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isAutoConfigNeeded(Ljava/util/Set;)Z

    move-result v11

    .line 671
    const-string v14, ""

    if-nez v11, :cond_e

    .line 672
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getPassword()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v49, v13

    .line 673
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v50, v10

    const-string v10, "createUserAgent: AUTOCONFIG_NOT_NEEDED password="

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v1, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "CPM"

    move-wide/from16 v54, v4

    move-object/from16 v13, v16

    move-object/from16 v4, v17

    move/from16 v5, v41

    move/from16 v57, v44

    move/from16 v58, v45

    move/from16 v59, v46

    move/from16 v60, v47

    move-object/from16 v41, v8

    move-object v8, v14

    move-object/from16 v44, v15

    const/4 v15, 0x0

    goto/16 :goto_8

    :cond_e
    move-object/from16 v50, v10

    move-object/from16 v49, v13

    .line 675
    const-string/jumbo v10, "password"

    move-object/from16 v11, p11

    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 676
    const-string/jumbo v13, "realm"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v13

    .line 677
    const-string v13, "imMsgTech"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v41, v8

    .line 678
    const-string v8, "msrpTransType"

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v44, v15

    .line 679
    const-string/jumbo v15, "transport"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v45, v15

    .line 680
    const-string/jumbo v15, "useKeepAlive"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    move/from16 v46, v15

    .line 681
    const-string/jumbo v15, "qVal"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    .line 682
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v54, v4

    const-string v4, "getRcsConfig - password : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-static {v10}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", imMsgTech : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", msrpTransType : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 682
    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 684
    const-string v4, "Timer_T1"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 685
    const-string v5, "Timer_T2"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 686
    const-string v15, "Timer_T4"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v47, v4

    .line 687
    const-string v4, "RegRetryBaseTime"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v56, v4

    .line 688
    const-string v4, "RegRetryMaxTime"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v60, v4

    move/from16 v57, v5

    move-object v11, v10

    move-object v10, v13

    move/from16 v58, v15

    move-object/from16 v13, v17

    move-object/from16 v4, v45

    move/from16 v15, v46

    move/from16 v5, v47

    move/from16 v59, v56

    .line 696
    :goto_8
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-static {v7}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v17

    if-nez v17, :cond_f

    move/from16 v17, v5

    .line 697
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    .line 698
    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v5

    move-object/from16 p11, v5

    .line 699
    const-string v5, "createUserAgent: imsDmProfile from DmProfileLoader"

    invoke-static {v3, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v5, p11

    :goto_9
    move-object/from16 v45, v8

    goto :goto_a

    :cond_f
    move/from16 v17, v5

    .line 701
    invoke-direct {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureMedia(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    move-result-object v5

    goto :goto_9

    .line 705
    :goto_a
    const-string v8, "is_server_header_enabled"

    if-eqz v12, :cond_11

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v46

    if-nez v46, :cond_10

    move/from16 v46, v15

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v15

    invoke-static {v1, v15}, Lcom/sec/internal/ims/util/ImsUtil;->needForceToUsePsE911(IZ)Z

    move-result v15

    if-eqz v15, :cond_12

    goto :goto_b

    :cond_10
    move/from16 v46, v15

    .line 706
    :goto_b
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 707
    invoke-virtual {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 708
    const-string/jumbo v15, "sip:anonymous@anonymous.invalid"

    invoke-virtual {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 709
    invoke-virtual {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImsiBasedImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 710
    invoke-virtual {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 711
    invoke-virtual {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 712
    invoke-virtual {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    const/4 v14, 0x0

    .line 713
    invoke-virtual {v11, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 714
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isWifiPreConditionEnabled()Z

    move-result v15

    invoke-virtual {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    .line 715
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->shouldUseCompactHeader()Z

    move-result v15

    invoke-virtual {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    const/4 v15, 0x1

    .line 716
    invoke-virtual {v11, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v11

    iget-object v15, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 717
    invoke-interface {v15, v1, v8, v14}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v11, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v8

    move/from16 v47, v29

    move/from16 v29, v38

    move-object/from16 v38, v6

    goto/16 :goto_e

    :cond_11
    move/from16 v46, v15

    .line 719
    :cond_12
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v15, "empty"

    const-string/jumbo v47, "null"

    if-eqz v14, :cond_14

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUserAgent: impi is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p8

    if-nez v14, :cond_13

    move-object/from16 v15, v47

    :cond_13
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    :cond_14
    move-object/from16 v14, p8

    .line 723
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v56

    if-eqz v56, :cond_16

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createUserAgent: domain is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    if-nez v2, :cond_15

    move-object/from16 v15, v47

    :cond_15
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    :cond_16
    move-object/from16 v15, p6

    move/from16 v61, v38

    move-object/from16 v38, v6

    move/from16 v6, v61

    .line 728
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v47

    if-eqz v47, :cond_17

    move-object/from16 p11, v15

    goto :goto_c

    :cond_17
    move-object/from16 p11, v13

    .line 732
    :goto_c
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v13

    .line 733
    invoke-virtual {v13, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v13

    move-object/from16 v14, p7

    move/from16 v61, v29

    move/from16 v29, v6

    move/from16 v6, v61

    .line 734
    invoke-virtual {v13, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v13

    move/from16 v47, v6

    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    .line 735
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImsiBasedImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 736
    invoke-virtual {v6, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 737
    invoke-virtual {v6, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 738
    invoke-virtual {v6, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 739
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isIpSecEnabled()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v11

    invoke-interface {v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isIPSecAllow()Z

    move-result v11

    if-eqz v11, :cond_18

    const/4 v11, 0x1

    goto :goto_d

    :cond_18
    const/4 v11, 0x0

    :goto_d
    invoke-virtual {v6, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 740
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isWifiPreConditionEnabled()Z

    move-result v11

    invoke-virtual {v6, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 741
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->shouldUseCompactHeader()Z

    move-result v11

    invoke-virtual {v6, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    .line 742
    invoke-virtual {v6, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v6

    iget-object v11, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v13, 0x0

    .line 743
    invoke-interface {v11, v1, v8, v13}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v8

    move-object/from16 v13, p11

    .line 745
    :goto_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "###set profile id, id = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x4

    const/4 v11, 0x3

    move/from16 v14, v36

    if-ne v14, v6, :cond_1a

    .line 749
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v6

    if-eqz v6, :cond_19

    goto :goto_f

    :cond_19
    const/4 v6, 0x2

    move v11, v6

    goto :goto_f

    :cond_1a
    if-ne v14, v11, :cond_1c

    .line 755
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v11, 0x0

    goto :goto_f

    :cond_1c
    move v11, v14

    .line 762
    :goto_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TTY Type "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " convert to TextMode "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 764
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v14, "srvcc_version"

    const/4 v15, 0x0

    .line 765
    invoke-interface {v6, v1, v14, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v6

    .line 766
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 v36, v3

    const-string v3, "ignore_display_name"

    invoke-interface {v14, v1, v3, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 767
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move/from16 p6, v3

    const-string v3, "keep_alive_factor"

    invoke-interface {v14, v1, v3, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 769
    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move/from16 p7, v3

    const-string/jumbo v3, "support_uac"

    invoke-interface {v14, v1, v3, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->isCpSupportUac(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v15, 0x1

    goto :goto_10

    :cond_1d
    const/4 v15, 0x0

    .line 770
    :goto_10
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getUacList()Ljava/util/List;

    move-result-object v3

    .line 771
    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->filterUacSipListByCpUacType(ILjava/util/List;)V

    .line 773
    invoke-direct {v0, v1, v9, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getVowifi5gsaMode(ILcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;)I

    move-result v14

    move-object/from16 v21, v9

    .line 774
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object/from16 p8, v3

    const-string v3, "is_support_update_sa_mode_on_start"

    move/from16 v56, v15

    const/4 v15, 0x0

    .line 775
    invoke-interface {v9, v1, v3, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 776
    iget-object v9, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move/from16 p11, v3

    const-string v3, "is_support_update_sa_mode_on_airplane_mode"

    .line 777
    invoke-interface {v9, v1, v3, v15}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 778
    invoke-direct {v0, v12, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getTimerF(ZLcom/sec/ims/settings/ImsProfile;)I

    move-result v9

    .line 781
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIface(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v12

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setProfileId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move v12, v14

    move-wide/from16 v14, v54

    invoke-virtual {v2, v14, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNetId(J)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v14, v44

    invoke-virtual {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPdn(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v14, p4

    .line 782
    invoke-virtual {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setServiceList(Ljava/util/Set;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v14, p5

    .line 783
    invoke-virtual {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setQparam(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    iget-object v14, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 784
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getRemoteUriType()Ljava/lang/String;

    move-result-object v15

    move/from16 p2, v12

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v12

    invoke-static {v14, v15, v12, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getNetworkUriType(Landroid/content/Context;Ljava/lang/String;ZI)Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRemoteUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 785
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getControlDscp()I

    move-result v12

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setControlDscp(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 786
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTransportType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v12

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPcscfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v12, v41

    .line 787
    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegiAlgorithm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v12, v50

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAuthAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v12, v53

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEncrAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v15, v22

    .line 788
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrecondEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v12, v23

    .line 789
    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrecondInitialSendrecv(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v12, v24

    .line 790
    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSessionExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v12, v27

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v12, v25

    .line 791
    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMinSe(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 792
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSipUserAgent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 793
    invoke-virtual {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRealm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImMsgTech(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 794
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getRingbackTimer()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRingbackTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 795
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getRingingTimer()I

    move-result v10

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRingingTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 796
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 797
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsSoftphoneEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 798
    invoke-static {v5, v1}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsCdmalessEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v28

    .line 799
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMssSize(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v30

    .line 800
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSipMobility(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v31

    .line 801
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableGruu(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v32

    .line 802
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableVcid(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v33

    .line 803
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsEnableSessionId(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v34

    .line 804
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAudioEngineType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 805
    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTextMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 806
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isVceConfigEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVceConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v47

    .line 807
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setGcfConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    const/4 v5, 0x0

    .line 808
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNsdsServiceEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 809
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isMsrpBearerUsed()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMsrpBearerUsed(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 810
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSubscriberTimer()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscriberTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v35

    .line 811
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscribeReg(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v46

    .line 812
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseKeepAlive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 813
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSelfPort()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSelfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 814
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getScmVersion()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setScmVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 815
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setActiveDataPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v14, v45

    .line 816
    invoke-virtual {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMsrpTransType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 817
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getFullCodecOfferRequired()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsFullCodecOfferRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 818
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getRcsTelephonyFeatureTagRequired()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsRcsTelephonyFeatureTagRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v52

    .line 819
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRcsProfile(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 820
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getIsTransportNeeded()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsTransportNeeded(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v20

    .line 821
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 822
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getDbrTimer()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setDbrTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 823
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isTcpGracefulShutdownEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsTcpGracefulShutdownEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 824
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTcpRstUacErrorcode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTcpRstUacErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 825
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTcpRstUasErrorcode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTcpRstUasErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 826
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getPrivacyHeaderRestricted()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPrivacyHeaderRestricted(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 827
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getUsePemHeader()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUsePemHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 828
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportEct()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportEct(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 829
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getEarlyMediaRtpTimeoutTimer()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEarlyMediaRtpTimeoutTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 830
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerEpsFbWatchdog()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerEpsFbWatchdog(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 831
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getAddHistinfo()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAddHistinfo(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 832
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportedGeolocationPhase(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 833
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfSipMsg()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedPidfSipMsg(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 834
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getNeedPidfRat()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedPidfRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 835
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportAltitude()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportAltitude(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 836
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getValidLocationTime()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setValidLocationTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 837
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getUseSubcontactWhenResub()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseSubcontactWhenResub(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 838
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getUseProvisionalResponse100rel()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseProvisionalResponse100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 839
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getUse183OnProgressIncoming()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUse183OnProgressIncoming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 840
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getUseQ850causeOn480()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUseQ850causeOn480(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 841
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupport183ForIr92v9Precondition()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupport183ForIr92v9Precondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 842
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportImsNotAvailable()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportImsNotAvailable(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 843
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportLtePreferred()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportLtePreferred(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v40

    .line 844
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportUpgradePrecondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 845
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportReplaceMerge()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportReplaceMerge(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 846
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportAccessType()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportAccessType(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 847
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setLastPaniHeader(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 848
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getOipFromPreferred()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setOipFromPreferred(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 849
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSelectTransportAfterTcpReset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSelectTransportAfterTcpReset(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 850
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSrvccVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 851
    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsSimMobility(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 852
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getVideoCrbtSupportType()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVideoCrbtSupportType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 853
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getRetryInviteOnTcpReset()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRetryInviteOnTcpReset(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 854
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getEnableVerstat()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEanbleVerstat(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v17

    .line 855
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer1(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v57

    .line 856
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer2(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v15, v58

    .line 857
    invoke-virtual {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimer4(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 858
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerA()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerA(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 859
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerB()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerB(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 860
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerC()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerC(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 861
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerD()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerD(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 862
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerE()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerE(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 863
    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerF(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 864
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerG()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerG(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 865
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerH()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerH(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 866
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerI()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerI(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 867
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerJ()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerJ(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 868
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTimerK()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTimerK(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v59

    .line 869
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegRetryBaseTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v60

    .line 870
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setRegRetryMaxTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 871
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportDualRcs(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 872
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->isPttSupported()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPttSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 873
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getTryReregisterFromKeepalive()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setTryReregisterFromKeepalive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 874
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSslType()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSslType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 875
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupport199ProvisionalResponse()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupport199ProvisionalResponse(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 876
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSend18xReliably()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSend18xReliably(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v5, v39

    .line 877
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAcb(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, p6

    .line 878
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIgnoreDisplayName(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 879
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportNetworkInitUssi()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportNetworkInitUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 880
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSendByeForUssi()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSendByeForUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 881
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportRfc6337ForDelayedOffer()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportRfc6337ForDelayedOffer(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 882
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getUse200offerWhenRemoteNotSupport100rel()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUse200offerWhenRemoteNotSupport100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 883
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getHashAlgoType()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setHashAlgoType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, p2

    .line 884
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setVowifi5gsaMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 885
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getExcludePaniVowifiInitialRegi()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setExcludePaniVowifiInitialRegi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 886
    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSingleRegiEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 887
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getNeedCheckAllowedMethodForRefresh()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedCheckAllowedMethodForRefresh(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, p7

    .line 888
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setKeepAliveFactor(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v29

    .line 889
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setEncrNullRoaming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    .line 890
    invoke-static {v1, v5}, Lcom/sec/internal/ims/util/ImsUtil;->isAddMmtelCallComposerTag(ILandroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setAddMmtelCallComposerTag(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, v56

    .line 891
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportUac(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move-object/from16 v5, p8

    .line 892
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUacSipList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 893
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getNeedVoLteRetryInNr()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setNeedVolteRetryInNr(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 894
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNextImpuType()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setImpuPreference(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    move/from16 v5, p11

    .line 895
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsUpdateSaOnStartSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 896
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsUpdateSaOnAirplaneModeSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 897
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportDatachannelWithFeatureCaps()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportDatachannelWithFeatureCaps(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 898
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSupportB2cCallcomposerWithoutFeaturetag()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSupportB2cCallcomposerWithoutFeaturetag(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 899
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSignDigestResponseEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    .line 900
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isCmcExtendedContentSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCmcExtContentSupport(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v2, p12

    .line 902
    invoke-direct {v0, v7, v8, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureCmc(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;Landroid/os/Bundle;)V

    .line 904
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 905
    sget-object v2, Lcom/sec/internal/constants/Mno;->MDMN:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    :goto_11
    move-object/from16 v13, v49

    goto :goto_12

    .line 906
    :cond_1e
    invoke-interface/range {v38 .. v38}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 907
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    goto :goto_11

    :cond_1f
    move-object/from16 v9, v21

    .line 909
    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    goto :goto_11

    .line 911
    :goto_12
    invoke-virtual {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setMvnoName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v2, p9

    .line 912
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v2, p10

    .line 913
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createUserAgent: TransportType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v36

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 915
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUserAgent: sessionRefresher="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 917
    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSessionRefresher(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 920
    :cond_20
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 921
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setLinkedImpuList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 924
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUserAgent: hostname="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", P-CSCF="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 925
    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setHostname(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPcscfIp(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 928
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setContactDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 931
    invoke-virtual {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 933
    invoke-direct {v0, v7, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureTimerTS(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    move-object/from16 v3, v43

    move/from16 v2, v51

    .line 935
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setPdn(I)V

    move-object/from16 v2, v42

    .line 936
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setNetwork(Landroid/net/Network;)V

    .line 938
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v4

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v1, v7}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    .line 939
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 940
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NO_PANI_NO_USER_AGENT:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    move v4, v1

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiFailReason(I)V

    .line 941
    const-string v0, "createUserAgent: pani is null"

    invoke-static {v5, v4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v16

    :cond_22
    move v4, v1

    move-object/from16 v1, p1

    .line 945
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setCurPani(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 946
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/sec/internal/ims/xq/att/ImsXqReporter;->isXqEnabled(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsXqEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 948
    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->isVceConfigEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 949
    const-string v2, "enable subscribe dialog"

    invoke-static {v5, v4, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 950
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setSubscribeDialogEvent(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 953
    :cond_23
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 955
    const-string v6, "jibe"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->setIsRcsAsJibe(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    .line 958
    :cond_24
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 959
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setUaProfile(Lcom/sec/internal/ims/core/handler/secims/UaProfile;)V

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUserAgent:mno="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 962
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

    move-object/from16 v5, p13

    invoke-direct {v2, v0, v4, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->registerListener(Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;)V

    .line 1126
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->create()I

    return-object v3
.end method

.method private filterUacSipListByCpUacType(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1641
    invoke-static {p1}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getSupportUacType(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object v0

    .line 1642
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filterUacSipListByCpUacType : modem support type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1643
    sget-object p0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_NOT_SUPPORT:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-ne v0, p0, :cond_0

    .line 1644
    invoke-interface {p2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1645
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL15:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-ne v0, p0, :cond_1

    .line 1646
    const-string p0, "REGISTER"

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getP2pNetworkHandle(I)J
    .locals 11

    .line 1132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getP2pNetworkHandle, cmcType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1136
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v2, v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v0, v5

    .line 1137
    invoke-virtual {p0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    .line 1148
    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v8

    .line 1149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "netId (NetworkHandle): "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x7

    if-eq p1, v6, :cond_1

    const/16 v6, 0x8

    if-ne p1, v6, :cond_0

    goto :goto_1

    :cond_0
    move-wide v6, v8

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    const/4 v6, 0x1

    .line 1154
    invoke-virtual {v7, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found netId for cmcType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", netId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    .line 1159
    :cond_2
    const-string v6, "not found netId for wifi-direct"

    invoke-static {v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v6, v3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-wide v6
.end method

.method private getPdnName(I)Ljava/lang/String;
    .locals 1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_4

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    .line 1182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1178
    :cond_0
    const-string p0, "emergency"

    return-object p0

    .line 1174
    :cond_1
    const-string p0, "ims"

    return-object p0

    .line 1176
    :cond_2
    const-string/jumbo p0, "wifi"

    return-object p0

    .line 1172
    :cond_3
    const-string p0, "internet"

    return-object p0

    .line 1180
    :cond_4
    const-string p0, "default"

    return-object p0
.end method

.method private getTimerF(ZLcom/sec/ims/settings/ImsProfile;)I
    .locals 0

    if-eqz p1, :cond_1

    .line 1566
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    .line 1569
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result p0

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 1567
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result p0

    return p0
.end method

.method private getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 4

    .line 1497
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1498
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1499
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1501
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 1505
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_3

    .line 1507
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/NameAddr;

    .line 1508
    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    return-object v1

    :cond_4
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 1520
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method

.method private getVowifi5gsaMode(ILcom/sec/internal/constants/Mno;Lcom/sec/ims/settings/ImsProfile;)I
    .locals 10

    .line 1573
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "vowifi_5gsa_mode"

    .line 1578
    const-string v2, "ENABLE"

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "DEPRIORITIZE"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1580
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "support_vowifi_deprioritize_nr5g"

    .line 1581
    invoke-interface {v0, p1, v1, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 1582
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v4, "support_disable_vowifi_5gsa"

    .line 1583
    invoke-interface {v1, p1, v4, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 1587
    const-string v0, "DISABLE"

    goto :goto_0

    .line 1589
    :cond_2
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0

    .line 1593
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "EPDGHANDOVERENABLE"

    const-string/jumbo v5, "user_config"

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1595
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v6, "ONLYEPSFALLBACK"

    invoke-static {p1, v4, v5, v6, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    const/16 v6, 0x14

    .line 1597
    invoke-static {p3, v6}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    const/16 v6, 0x12

    invoke-static {p3, v6}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result p3

    if-eqz p3, :cond_4

    move p3, v7

    goto :goto_1

    :cond_4
    move p3, v3

    .line 1598
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v8, "NRPREFERREDMODE"

    invoke-static {p1, v6, v5, v8, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1600
    iget-object v8, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    const-string v9, "NRSAMODE"

    invoke-static {p1, v8, v5, v9, v7}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "vowifi5gsaMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", hoEnable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", onlyEpsFallback : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", needDisable5gsa : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isNrPreferredMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isNrSaMode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ResipRegiMgr"

    invoke-static {v8, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1604
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_5

    if-nez v4, :cond_6

    :cond_5
    if-eqz p3, :cond_d

    .line 1605
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_7

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    .line 1606
    :cond_7
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DEPRIORITIZE:I

    return p0

    .line 1608
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_a

    .line 1609
    const-string/jumbo p2, "ro.boot.hardware"

    const-string p3, ""

    invoke-static {p2, p3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "qcom"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1610
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0

    .line 1613
    :cond_9
    :try_start_0
    const-class p2, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    .line 1614
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;

    move-result-object p0

    .line 1615
    const-string p3, "getSupportVowifiDisable5gsa"

    new-array v0, v3, [Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1616
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 1617
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSupportVowifiDisable5gsa : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_d

    .line 1619
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DISABLE:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1622
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    if-nez v4, :cond_c

    :cond_b
    if-eqz p3, :cond_d

    :cond_c
    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    .line 1627
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DISABLE:I

    return p0

    .line 1631
    :cond_d
    :goto_2
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    return p0
.end method

.method private isCpSupportUac(I)Z
    .locals 0

    .line 1635
    invoke-static {p1}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getSupportUacType(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object p0

    .line 1636
    sget-object p1, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL15:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_SUPPORT_REL16:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$configureRCS$0(ILcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 0

    .line 1191
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isUserAgentInRegistered$1(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 1230
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->isRegistered(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private needRemoveEmergencyUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)Z
    .locals 3

    .line 313
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v1, "ResipRegiMgr"

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isAnonymousEmergencyCallRequired()Z

    move-result p0

    if-nez p0, :cond_0

    .line 314
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "Remove Emergency UserAgent to perform infinite retry"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 317
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_1

    return v2

    .line 320
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result p0

    if-lez p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, p2}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result p0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNumOfEmerPcscfIp()I

    move-result p2

    if-ge p0, p2, :cond_2

    .line 321
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string/jumbo p1, "pending Emergency Register msg, Remove Emergency UserAgent"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public configure(I)V
    .locals 4

    .line 1199
    const-string v0, "ResipRegiMgr"

    const-string v1, "configure:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1200
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    .line 1202
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    .line 1204
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1205
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_0

    .line 1206
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 1207
    :goto_0
    invoke-static {v1, v2}, Lcom/sec/internal/helper/os/DeviceUtil;->getFormattedDeviceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1209
    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configRegistration(ILjava/lang/String;)V

    .line 1210
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "srvcc_version"

    const/4 v2, 0x0

    invoke-interface {p0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->configSrvcc(II)V

    return-void
.end method

.method public deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 5

    .line 285
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 286
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 288
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deregisterInternal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",DEREGI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x11020002

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 294
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 296
    const-string/jumbo v3, "presence"

    invoke-virtual {v2, v3}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 299
    :goto_0
    const-string v3, "ResipRegiMgr"

    if-nez v1, :cond_1

    .line 300
    const-string p0, "deregisterInternal: UserAgent is null, can\'t deregister"

    invoke-static {v3, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 303
    :cond_1
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deregister(ZZ)V

    .line 305
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->needKeepEmergencyTask()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 306
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_4

    .line 307
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p2

    const-string v0, "Remove Emergency UserAgent on deregisterInternal"

    invoke-static {v3, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_4
    return-void
.end method

.method public dump()V
    .locals 6

    .line 1361
    const-string v0, "ResipRegiMgr"

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1362
    const-string v1, "Dump of UserAgents:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1364
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 1365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserAgent ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] State: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], Profile: ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(#"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1365
    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1369
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->dump()V

    .line 1370
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->dump()V

    return-void
.end method

.method protected getAudioEngineType()I
    .locals 1

    .line 1375
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getModemBoardName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SHANNON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1377
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getChipName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "unisoc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1419
    const-string p0, "ResipRegiMgr"

    const-string p1, "getImsiByUserAgent: ua is null!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1423
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1424
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getImsiByUserAgentHandle(I)Ljava/lang/String;
    .locals 0

    .line 1435
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1436
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2

    .line 1528
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1529
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1

    const/4 v0, 0x0

    .line 1472
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 5

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUserAgent, phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1479
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1480
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1482
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 1486
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserAgent, reg.getPhoneId()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1441
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgentByImsi : Argument imsi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResipRegiMgr"

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1444
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 1445
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1447
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_0

    .line 1451
    invoke-virtual {v5, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1452
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    .line 1453
    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    .line 1454
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserAgentByImsi, phoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",subId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1457
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserAgentByImsi imsi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1458
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_2
    return-object v0

    .line 1466
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 4

    .line 1548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1550
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1551
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 1552
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1554
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    .line 1557
    invoke-virtual {v2, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1558
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 1562
    new-array p0, p0, [Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public bridge synthetic getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2

    .line 1407
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1408
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentOnPdn(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 2

    .line 1538
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1539
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPdn()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgentOnPdn(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    return-object p0
.end method

.method public handleInactiveCiaOnMobileConnected(ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 4

    .line 1291
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] handleInactiveCiaOnMobileConnected() need CIA_Inactive = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1292
    const-string v3, "ResipRegiMgr"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 1296
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1297
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez p0, :cond_0

    .line 1299
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] handleInactiveCiaOnMobileConnected() task.getUserAgent() returned null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1302
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    :cond_1
    return-void
.end method

.method public handleInactiveCiaOnMobileDisconnected(ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6

    .line 1307
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] handleInactiveCiaOnMobileDisconnected() need CIA_Inactive = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    const-string v3, "ResipRegiMgr"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 1311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 1312
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1313
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez p0, :cond_0

    .line 1315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] handleInactiveCiaOnMobileDisconnected() task.getUserAgent() returned null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1318
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    :cond_1
    return-void
.end method

.method public init()V
    .locals 3

    .line 149
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UaHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    .line 150
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 151
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IPdnController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    .line 154
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V

    return-void
.end method

.method public isUserAgentInRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 1

    .line 1229
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda3;-><init>()V

    .line 1230
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1231
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZ)V
    .locals 0

    .line 359
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method

.method public onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V
    .locals 0

    .line 329
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 330
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->needRemoveEmergencyUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 331
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_0
    return-void

    .line 337
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p4

    sget-object p5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p4, p5, :cond_2

    sget-object p4, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    invoke-virtual {p4, p3}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 341
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result p3

    const-string p4, "ResipRegiMgr"

    if-eqz p3, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object p5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p3, p5, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 343
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "Dont Remove the user Agent for Refresh Reg ,Re-register to be triggered."

    invoke-static {p4, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-eqz p3, :cond_5

    .line 346
    invoke-virtual {p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p3

    if-ne p3, p2, :cond_5

    .line 347
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_0

    .line 348
    :cond_5
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 349
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "remove user agent not in the IRegisterTask: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    .line 351
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->terminate()V

    .line 352
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->unRegisterListener()V

    :cond_6
    :goto_0
    return-void
.end method

.method public registerInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 198
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v13

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerInternal: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pcscf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " services="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v12, "ResipRegiMgr"

    invoke-static {v12, v13, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v16

    .line 204
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->configureRCS(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 206
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-static {v0, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v17

    .line 207
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v0, :cond_3

    .line 209
    const-string/jumbo v0, "register: creating UserAgent."

    invoke-static {v12, v13, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    iget-object v11, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v18, v11

    move-object/from16 v11, p12

    move-object/from16 v19, v12

    move-object/from16 v12, p13

    move/from16 p2, v13

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v13}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->createUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v1, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)V

    .line 215
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 217
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->INITIAL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-interface {v15, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 218
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 219
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLogTimer;->setVolteRegisterStartTime(I)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEND SIP REGISTER <+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLogTimer;->getVolteRegisterStartTime(I)J

    move-result-wide v1

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnEndTime(I)J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v15, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_1
    const-string v0, "SEND SIP REGISTER"

    invoke-static {v15, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 228
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_a

    .line 229
    iget-object v0, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    invoke-interface {v0, v15, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    goto/16 :goto_4

    .line 232
    :cond_2
    const-string/jumbo v0, "register: fail creating UserAgent."

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v2, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_3
    move-object v2, v12

    move v1, v13

    .line 236
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object v6

    if-eqz v3, :cond_4

    .line 238
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setPcscfIp(Ljava/lang/String;)V

    .line 242
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "register: Re-Register with new services="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->RE_REGI:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-interface {v15, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 246
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    const-string v2, "mmtel-video"

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    sget-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL_VIDEO:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 249
    sget-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 250
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "createUserAgent: add mmtel, mmtel-video to Capabilities for E-REGI"

    invoke-virtual {v2, v1, v15, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_2

    .line 252
    :cond_5
    sget-object v2, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 253
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "createUserAgent : add mmtel to Capabilities for E-REGI"

    invoke-virtual {v2, v1, v15, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 257
    :cond_6
    :goto_2
    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)V

    .line 258
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setServiceList(Ljava/util/Set;)V

    .line 259
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setLinkedImpuList(Ljava/util/List;)V

    move-object/from16 v2, p7

    .line 260
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setImpu(Ljava/lang/String;)V

    .line 261
    invoke-static {v1}, Lcom/sec/internal/ims/util/ImsUtil;->isSingleRegiAppConnected(I)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setSingleRegiEnabled(Z)V

    .line 263
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_7

    .line 264
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->isAddMmtelCallComposerTag(ILandroid/content/Context;)Z

    move-result v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setAddMmtelCallComposerTag(Z)V

    .line 267
    :cond_7
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 268
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 269
    :goto_3
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setImMsgTech(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {v16 .. v16}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v2, p11

    .line 272
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->setThirdPartyFeatureTags(Ljava/util/List;)V

    .line 276
    :cond_9
    iget-object v2, v14, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyReRegistering(ILjava/util/Set;)V

    .line 277
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->register()I

    :cond_a
    :goto_4
    const/4 v0, 0x1

    return v0
.end method

.method public removePreviousLastPani(I)V
    .locals 0

    .line 1324
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->removePreviousPlani(I)V

    return-void
.end method

.method public removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 6

    .line 1385
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeUserAgent: task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResipRegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1387
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v0

    .line 1388
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v1, :cond_0

    .line 1390
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string/jumbo v0, "removeUserAgent: UserAgent null"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1391
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUserAgent()V

    return-void

    .line 1395
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeUserAgent: UserAgent handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1396
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->terminate()V

    .line 1397
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mUaList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUserAgent()V

    return-void
.end method

.method public sendDmState(IZ)V
    .locals 1

    .line 1215
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendDmState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResipRegiMgr"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1216
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    .line 1217
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendDmState(IZ)V

    return-void
.end method

.method public sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDnsQuery: handle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResipRegiMgr"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setEventLog(Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method public setPdnController(Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-void
.end method

.method public setRegistrationHandler(Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .locals 1

    .line 1222
    const-string p0, "ResipRegiMgr"

    const-string/jumbo v0, "setSilentLogEnabled:"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    .line 1224
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->setSilentLogEnabled(Z)V

    return-void
.end method

.method public setSimManagers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;)V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mSimManagers:Ljava/util/List;

    return-void
.end method

.method public suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z
    .locals 6

    .line 364
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 366
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getSuspendState()Z

    move-result v1

    if-eq v1, p2, :cond_3

    .line 367
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v5, "Suspend : "

    goto :goto_0

    :cond_0
    const-string v5, "Resume : "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 369
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->suspended(Z)V

    if-eqz p2, :cond_1

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->removeRecoveryAction()V

    goto :goto_1

    .line 375
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_2

    .line 376
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getTimerF()I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public updateGeolocation(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
    .locals 0

    .line 1350
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1351
    const-string p0, "ResipRegiMgr"

    const-string/jumbo p1, "updateGeolocation: ua is null. return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1355
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1356
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    return-void
.end method

.method public updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 6

    .line 1242
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1243
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1244
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v2

    .line 1246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 1250
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setLkcForLastPani(ILjava/lang/String;Lcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)V

    .line 1252
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 1255
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 1258
    const-string v4, "IEEE-802.11"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1259
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v0, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1260
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1261
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updateTimeInPlani(J)V

    goto :goto_0

    .line 1258
    :cond_3
    const-string v4, ""

    .line 1265
    :cond_4
    :goto_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getUaProfile()Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->setCurPani(Ljava/lang/String;)V

    .line 1266
    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->updatePani(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-interface {p1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPaniSet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRat(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 0

    .line 1329
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 1333
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1334
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateRat(I)V

    return-void
.end method

.method public updateTimeInPlani(ILcom/sec/ims/settings/ImsProfile;)V
    .locals 13

    .line 1272
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1273
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 1275
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getCid(I)J

    move-result-wide v3

    .line 1276
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isChangedPlani(ILjava/lang/String;)Z

    move-result p2

    .line 1278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTimeInPlani: plani "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", time "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ResipRegiMgr"

    invoke-static {v8, p1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1279
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getTimeInPlani(I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    if-nez v5, :cond_0

    .line 1280
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v5, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    :cond_0
    cmp-long v3, v3, v11

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    .line 1284
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mPaniGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setTimeInPlani(IJ)V

    .line 1285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 0

    .line 1339
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1340
    const-string p0, "ResipRegiMgr"

    const-string/jumbo p1, "updateVceConfig: no pending task, simply return"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1344
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 1345
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateVceConfig(Z)V

    return-void
.end method
