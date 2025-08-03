.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;
.super Ljava/lang/Object;
.source "ImsCallSipErrorFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSipErrorFactory"


# instance fields
.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private final mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 49
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 50
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-void
.end method

.method private needRejectByTerminalSs(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Z
    .locals 4

    .line 422
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 423
    invoke-static {p1, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v1

    .line 424
    const-string/jumbo v2, "ss_callbarring_by_network"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 427
    invoke-virtual {p0, p1, v0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForBarring(Landroid/content/Context;II)Lcom/sec/ims/util/SipError;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    if-ne p3, v1, :cond_0

    return v2

    .line 432
    :cond_0
    invoke-static {p1, v0}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p3

    const-string/jumbo v1, "ss_callwaiting_by_network"

    .line 433
    invoke-virtual {p3, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_1

    .line 435
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    if-nez p2, :cond_1

    .line 436
    const-string p2, "enable_call_wait"

    invoke-static {p1, v0, p2, v2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result p1

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceHelper()Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    move-result-object p0

    invoke-interface {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getSessionCountByCmcType(II)I

    move-result p0

    if-lt p0, v2, :cond_1

    if-nez p1, :cond_1

    .line 440
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needRejectByTerminalSs: Terminal CW : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " callCount : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " reject call"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v3
.end method

.method private needRejectCallBeforeEULA(Landroid/content/Context;)Z
    .locals 1

    .line 450
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isMainlandChinaOmcCode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string p0, "com.sec.android.app.SecSetupWizard"

    .line 451
    invoke-static {p1, p0}, Lcom/sec/internal/helper/os/PackageUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "samsung_eula_agree"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method


# virtual methods
.method protected checkHasCallAndCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;
    .locals 5

    .line 458
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;)V

    .line 459
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v2, :cond_1

    .line 461
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 465
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    .line 466
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v4, :cond_2

    .line 467
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->setHasIncall(Ljava/lang/Boolean;)V

    .line 468
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->setInCalltype(I)V

    goto :goto_1

    .line 469
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 470
    :cond_3
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->setHasHoldCall(Ljava/lang/Boolean;)V

    .line 473
    :cond_4
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 474
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->setHasConfCall(Ljava/lang/Boolean;)V

    .line 477
    :cond_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_6

    .line 479
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->setHasTtyCall(Ljava/lang/Boolean;)V

    .line 482
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v3, v2, :cond_0

    .line 484
    :cond_7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->setIsModifyOngoing(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 488
    :cond_8
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSipErrorAsHasCall(Lcom/sec/ims/ImsRegistration;ZZZIIILcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 7

    .line 249
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 p3, 0x2

    if-lt p7, p3, :cond_5

    .line 252
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, p1, :cond_2

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isEnableCallWaitingRule()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 259
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    .line 261
    :cond_2
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE_IRELAND:Lcom/sec/internal/constants/Mno;

    filled-new-array/range {v1 .. v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 266
    :cond_3
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 262
    :cond_4
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkRejectIncomingCall: 3rd incoming call handling in OneHold and OneActive"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_9

    .line 269
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "checkRejectIncomingCall: hasInCallType: "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, " callType: "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PS-LTE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    if-eq p5, p3, :cond_6

    if-ne p6, p3, :cond_7

    .line 274
    :cond_6
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 277
    :cond_7
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {p5}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {p6}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 278
    :cond_8
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 284
    :cond_9
    :goto_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    if-ne p4, p0, :cond_a

    .line 285
    sget-object p8, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 286
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkRejectIncomingCall: error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object p8
.end method

.method public getSipErrorAsModifying(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 225
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectIncomingCall: Reject call while Call modifying"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    .line 227
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 234
    const-string p1, "checkRejectIncomingCall: Reject upgrade call for pulling by SD"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    .line 235
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reject(I)V

    .line 236
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 241
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRejectIncomingCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getSipErrorAsSessionState(IIZZILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 6

    .line 376
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 377
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v3, :cond_2

    if-nez p2, :cond_2

    .line 379
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPreAlerting()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 381
    :cond_1
    :goto_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkRejectIncomingCall: found incoming PD session "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result p1

    invoke-virtual {p0, p2, p1, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_2
    if-eqz v3, :cond_0

    .line 386
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 390
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 391
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    .line 392
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_6

    .line 393
    invoke-static {v4}, Lcom/sec/internal/helper/ImsCallUtil;->isDialingCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    if-eq p4, v4, :cond_5

    if-ne p3, v4, :cond_0

    .line 400
    :cond_5
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p0, p5, v0, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorDuringCall(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    goto/16 :goto_0

    .line 394
    :cond_6
    :goto_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "checkRejectIncomingCall: found dialing session "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget p1, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mCmcType:I

    invoke-virtual {p0, p2, p1, p6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object p0

    monitor-exit v1

    return-object p0

    .line 404
    :cond_7
    monitor-exit v1

    return-object v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSipErrorDuringCall(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 2

    .line 409
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 410
    sget-object v0, Lcom/sec/internal/constants/Mno;->VIVA_KUWAIT:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p3, v0, :cond_0

    if-ne p2, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 413
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 414
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-eq p3, p1, :cond_1

    sget-object p1, Lcom/sec/internal/constants/Mno;->OOREDOO_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne p3, p1, :cond_2

    :cond_1
    if-ne p2, v1, :cond_2

    .line 416
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public getSipErrorForBarring(Landroid/content/Context;II)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 308
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkRejectIncomingCall: Call barring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 311
    const-string/jumbo p3, "ss_video_cb_pref"

    invoke-static {p1, p2, p3, v2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 314
    :cond_0
    const-string/jumbo p3, "ss_volte_cb_pref"

    invoke-static {p1, p2, p3, v2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p1

    :goto_0
    and-int/lit8 p2, p1, 0x8

    const/16 p3, 0x8

    if-ne p2, p3, :cond_1

    .line 320
    const-string p0, "checkRejectIncomingCall: Incoming call is barried"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object p0

    :cond_1
    const/16 p2, 0xa

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_2

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 325
    const-string p0, "checkRejectIncomingCall: Incoming call is barried in roaming condition"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object p0

    .line 331
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getSipErrorForCheckRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v12

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 96
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_0

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 97
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isMmtelAcquiredEver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, v12}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 101
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->TRYING:Lcom/sec/ims/util/SipError;

    .line 102
    const-string v0, "mmtel"

    invoke-virtual {v10, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    move/from16 v13, p3

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {v9, v10, v13}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForNoMmtel(Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    if-eq v0, v1, :cond_1

    return-object v0

    .line 109
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->needRejectByTerminalSs(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->needRejectCallBeforeEULA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 113
    :cond_2
    invoke-virtual {v9, v12}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->checkHasCallAndCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;

    move-result-object v14

    .line 114
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasIncall()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasHoldCall()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v5, p3

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorAsSessionState(IIZZILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;

    move-result-object v8

    .line 117
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getCmcServiceModule()Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;

    move-result-object v0

    invoke-virtual {v0, v12, v10}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v0

    :goto_0
    move v7, v0

    goto :goto_1

    .line 120
    :cond_3
    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionCount(I)I

    move-result v0

    goto :goto_0

    .line 123
    :goto_1
    sget-object v15, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRejectIncomingCall: numPsCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasIncall()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasHoldCall()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 126
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasConfCall()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getInCalltype()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v6, p3

    .line 125
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorAsHasCall(Lcom/sec/ims/ImsRegistration;ZZZIIILcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    .line 127
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasIncall()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasHoldCall()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v9, v10, v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorOnCsNetwork(Lcom/sec/ims/ImsRegistration;ZZLcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v5

    .line 129
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_4

    .line 130
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getIsModifyOngoing()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getHasTtyCall()Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForVzw(Lcom/sec/ims/ImsRegistration;ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    move-result-object v5

    goto :goto_3

    .line 131
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_5

    iget-object v0, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 132
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 135
    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory$CallDetailInfo;->getIsModifyOngoing()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 136
    invoke-virtual {v9, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorAsModifying(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 138
    :cond_6
    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v12}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v9, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v1, v12}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 139
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_9

    .line 140
    const-string v0, "checkRejectIncomingCall: hasCsCall"

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v11, v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-eq v11, v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-eq v11, v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_7

    goto :goto_2

    .line 144
    :cond_7
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_3

    .line 142
    :cond_8
    :goto_2
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    :cond_9
    :goto_3
    return-object v5

    .line 110
    :cond_a
    :goto_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    return-object v0
.end method

.method public getSipErrorForNoMmtel(Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;
    .locals 7

    .line 335
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 336
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 337
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkRejectIncomingCall: no mmtel registration."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    .line 339
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v5, "checkRejectIncomingCall: no mmtel or mmtel-video registered."

    const-string v6, "mmtel-video"

    if-ne v1, v4, :cond_5

    .line 344
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 345
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 347
    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v2, :cond_0

    .line 348
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 350
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 352
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 353
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 355
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 356
    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 357
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 359
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 362
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v1, p0, :cond_7

    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, p0, :cond_6

    goto :goto_0

    .line 368
    :cond_6
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 363
    :cond_7
    :goto_0
    invoke-virtual {p1, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 364
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    :cond_8
    :goto_1
    return-object v3
.end method

.method public getSipErrorForVzw(Lcom/sec/ims/ImsRegistration;ILjava/lang/Boolean;Ljava/lang/Boolean;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 5

    .line 176
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 177
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    .line 179
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 180
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->VIDEO_UPGRADE_REQUEST_IN_PROGRESS:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    :cond_0
    const/4 p3, 0x2

    .line 181
    const-string v2, ""

    const/16 v3, 0x1e6

    const/16 v4, 0x12

    if-ne p2, p3, :cond_4

    .line 182
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getTtyMode(I)I

    move-result p1

    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 183
    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getTtyMode(I)I

    move-result p1

    sget p2, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-ne p1, p2, :cond_2

    .line 184
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 185
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string p2, "checkRejectIncomingCall: VT not allowed during TTY is on."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->TTY_ON:Lcom/sec/ims/util/SipError;

    goto/16 :goto_1

    .line 189
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 190
    invoke-interface {p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 192
    new-instance p5, Lcom/sec/ims/util/SipError;

    invoke-direct {p5, v3, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p3, 0x1

    if-eq p2, p3, :cond_5

    const/16 p3, 0xe

    if-ne p2, p3, :cond_9

    .line 198
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getDataAccessNetwork(I)I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 199
    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p2

    iget-object p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object p3, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne p2, p3, :cond_6

    goto :goto_0

    .line 210
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "mmtel"

    .line 211
    invoke-virtual {p1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 212
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 200
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 201
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 202
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    goto :goto_1

    .line 205
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 207
    new-instance p5, Lcom/sec/ims/util/SipError;

    invoke-direct {p5, v3, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 216
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->hasCsCall(I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 218
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    const-string p1, "checkRejectIncomingCall: hasCsCall"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object p5, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

    :cond_a
    return-object p5
.end method

.method protected getSipErrorIncomingCallWithVolteOff(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;ZLcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 293
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 294
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->SERVICE_UNAVAILABLE:Lcom/sec/ims/util/SipError;

    .line 295
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    if-eqz p3, :cond_0

    .line 297
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorForCheckRejectIncomingCall(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;I)Lcom/sec/ims/util/SipError;

    move-result-object v1

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0, p2, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->getSipErrorIncomingCallWithVolteOffForVzw(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;

    move-result-object v1

    goto :goto_0

    .line 301
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_2

    .line 302
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getSipErrorIncomingCallWithVolteOffForVzw(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/SipError;
    .locals 3

    .line 74
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

    .line 75
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 76
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v2, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-eq v1, v2, :cond_0

    .line 77
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 79
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getCallType()I

    move-result p1

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isCallBarredBySSAC(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 81
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->acceptCallWhileSmsipRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 83
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 85
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isVowifiEnabled(I)Z

    move-result p0

    if-nez p0, :cond_4

    .line 86
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getSipErrorOnCsNetwork(Lcom/sec/ims/ImsRegistration;ZZLcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
    .locals 6

    .line 152
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 154
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v2

    .line 155
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSipErrorOnCsNetwork: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v5, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 156
    invoke-interface {v5, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v4, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v4

    iget v4, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 159
    invoke-interface {v4, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mVolteServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 160
    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getNetwork(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v4, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v2, v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 162
    :goto_0
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 163
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v2, :cond_4

    .line 164
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    return-object p0

    .line 167
    :cond_4
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSipErrorFactory;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v2, :cond_5

    .line 168
    const-string p0, "for VODAFONE getSipErrorOnCsNetwork"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    return-object p0

    :cond_5
    return-object p4
.end method

.method public getSipErrorOnDialingState(IILcom/sec/internal/constants/Mno;)Lcom/sec/ims/util/SipError;
    .locals 0

    .line 54
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->TRYING:Lcom/sec/ims/util/SipError;

    .line 55
    sget-object p0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p3, p0, :cond_0

    .line 56
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 58
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 59
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p3, p0, :cond_2

    .line 60
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorUscc;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    goto :goto_0

    .line 62
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->BUSY_HERE:Lcom/sec/ims/util/SipError;

    :goto_0
    if-nez p1, :cond_3

    .line 66
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p3

    if-nez p3, :cond_4

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 68
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    :cond_5
    return-object p0
.end method
