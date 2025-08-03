.class public Lcom/sec/internal/ims/core/cmc/CmcAccountManager;
.super Ljava/lang/Object;
.source "CmcAccountManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
.implements Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field private static final CMC_INFO_UPDATE_REASON_NEW_VALID_CMC_INFO:Ljava/lang/String; = "New valid CmcInfo "

.field private static final EVENT_CMC_DEVICE_CHANGED:I = 0x5

.field private static final EVENT_CMC_NW_PREF_CHANGED:I = 0x6

.field public static final EVENT_HOTSPOT_STATE_CHANGED:I = 0x9

.field public static final EVENT_HOTSPOT_STATE_UPDATE_TO_STACK:I = 0xa

.field private static final EVENT_SA_REQUEST:I = 0x1

.field private static final EVENT_SA_REQUEST_EXPIRED:I = 0x7

.field private static final EVENT_SA_REQUEST_FAILED:I = 0x8

.field private static final EVENT_SA_UPDATE:I = 0x2

.field private static final EVENT_START_CMC_REGISTRATION:I = 0x3

.field private static final EVENT_STOP_CMC_REGISTRATION:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CmcAccountManager"

.field private static mIsCmcServiceInstalled:Z = true


# instance fields
.field private mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

.field private mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

.field private mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

.field private mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

.field private mContext:Landroid/content/Context;

.field private mEmergencyNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

.field private mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

.field private mIsCmcProfileAdded:Z

.field private mPhoneCount:I

.field private mProfileManager:Lcom/sec/internal/ims/core/cmc/CmcProfileManager;

.field private mRegiEventNotifyHostInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSABindRetryCount:I

.field private mSARequestRetryCount:I

.field private mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHotspotStrategy(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStartCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStopCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStopCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSAServiceInternal(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAServiceInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 81
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 85
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 86
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    .line 113
    const-string v0, "CmcAccountManager create"

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x64

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 116
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    .line 117
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerFactory;->createCmcSettingManager(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    .line 118
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    .line 119
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    .line 120
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcServiceInstalled()Z

    move-result p1

    sput-boolean p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    .line 121
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    return-void
.end method

.method private checkCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 2

    .line 430
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getChangedCmcInfoType(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Ljava/util/List;

    move-result-object p1

    .line 431
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getUpdateReasonWithChangedCmcInfoTypes(Ljava/util/List;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Ljava/lang/String;

    move-result-object p2

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;)V

    invoke-interface {p1, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 433
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 436
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    const-string p2, "New valid CmcInfo "

    .line 439
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkCmcInfoEqual: false - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcAccountManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private checkCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 3

    .line 420
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getCmcInfoFailReason()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    .line 425
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCmcInfoValid: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcAccountManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getCmcCallActivation(Ljava/lang/String;)Z
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;
    .locals 3

    .line 459
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->getServerUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcInfo: LineId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PcscfAddrList: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCmcRelayType()Ljava/lang/String;
    .locals 0

    .line 384
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 385
    const-string/jumbo p0, "priv-p2p"

    return-object p0

    .line 387
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getEmergencyCallNumberString()Ljava/lang/String;
    .locals 3

    .line 756
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 758
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    .line 762
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method private getEmergencyCallNumberString(I)Ljava/lang/String;
    .locals 4

    .line 767
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 770
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    .line 771
    const-string v0, "CmcAccountManager"

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 775
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 776
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 780
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 781
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 782
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 784
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 785
    const-string p0, ","

    invoke-static {p0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 787
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyCallNumberString: slot("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ecall numbers result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 777
    :cond_5
    :goto_1
    const-string p0, "getEmergencyCallNumberString: ecall list empty"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 772
    :cond_6
    :goto_2
    const-string p0, "getEmergencyCallNumberString: ecall list map empty"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileManager:Lcom/sec/internal/ims/core/cmc/CmcProfileManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method private getUpdateReasonWithChangedCmcInfoTypes(Ljava/util/List;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;",
            ">;",
            "Lcom/sec/internal/ims/core/cmc/CmcInfo;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 446
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    .line 448
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->isDumpPrintAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_0
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 454
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getUpdateReasonWithChangedCmcInfoTypes: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasCallForkingService()Z
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private initHotspotStrategy()V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcSupportedOnHotspot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "initHotspotStrategy: CmcHotspotSupportStrategy"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotNonSupportStrategy;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "initHotspotStrategy: CmcHotspotNonSupportStrategy"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 793
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCmcRegistrationRequired()Z
    .locals 3

    .line 297
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CmcAccountManager"

    if-nez v0, :cond_0

    .line 298
    const-string p0, "isCmcRegistrationRequired: CMC not activated"

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result p0

    if-nez p0, :cond_1

    .line 303
    const-string p0, "isCmcRegistrationRequired: CMC Call forking disabled"

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcServiceInstalled()Z
    .locals 3

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isCmcServiceInstalled: true"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 808
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isCmcServiceInstalled: false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isEmergencyNumberInternal(Ljava/lang/String;IZ)Z
    .locals 4

    .line 733
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p2, p2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 734
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 737
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergencyNumberInternal: current emergencyNumbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 740
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 742
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 746
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private isPdHasCallForkingService()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isPdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyRegisterP2p()Z
    .locals 3

    const/4 v0, 0x0

    .line 328
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 330
    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 332
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 334
    const-string v1, "d2d_trial"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 339
    const-string v1, "CmcAccountManager"

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isRegisterTaskAllowedToStartSA()Z
    .locals 4

    .line 566
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 570
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    .line 571
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSABindRetryOver()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isSABindRetryOver()Z
    .locals 1

    .line 897
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSdHasCallForkingService()Z
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: deviceId is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 487
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: isCallAllowedSdByPd false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 491
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 492
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: Device CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 495
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result v0

    if-nez v0, :cond_3

    .line 496
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 5

    .line 814
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 815
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->NETWORK_PREF:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "CmcAccountManager"

    if-eqz v0, :cond_0

    .line 816
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v4, 0x12

    if-ne v0, v4, :cond_0

    .line 817
    const-string p0, "needDeregiOnDeviceChange: false with WiFi"

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACCESS_TOKEN:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 821
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->PCSCF_ADDR_LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 822
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    if-eqz p0, :cond_2

    .line 824
    const-string p0, "needDeregiOnDeviceChange: false: access token or pcscf update in call state"

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setHasPendingDeregister(Z)V

    return v2

    :cond_2
    return v1
.end method

.method private onSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;)V
    .locals 2

    .line 614
    const-string/jumbo v0, "onSaUpdated: "

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->update(Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;)V

    .line 616
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 621
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-nez p1, :cond_1

    .line 622
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    goto :goto_0

    .line 624
    :cond_1
    const-string/jumbo p1, "onSaUpdated: notifyCmcDeviceChanged with access token"

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    :goto_0
    return-void
.end method

.method private onStartCmcRegistration()V
    .locals 6

    .line 248
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-nez v0, :cond_0

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "onStartCmcRegistration: Cmc service not installed"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_1

    .line 253
    const-string/jumbo p0, "onStartCmcRegistration: Cmc Profile is already added"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    const-string/jumbo p0, "onStartCmcRegistration: CMC registration is not required"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 262
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    const-string v2, "Start VoLteService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->start()V

    .line 267
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 268
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 269
    const-string/jumbo p0, "onStartCmcRegistration: updateCmcProfile failed"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    .line 273
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_6

    .line 274
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 275
    const-string/jumbo p0, "onStartCmcRegistration: manual deregister is ongoing"

    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartCmcRegistration: registerProfile CMC: same WiFi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ecall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyCallSupported()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 282
    :goto_1
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_7

    .line 283
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    .line 285
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 287
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    invoke-interface {v2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->onStartCmcRegistration()V

    if-eqz v0, :cond_8

    .line 290
    const-string/jumbo v2, "onStartCmcRegistration: update lineId and deviceId for p2p"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:duid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private onStopCmcRegistration()V
    .locals 4

    .line 346
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    .line 347
    const-string/jumbo p0, "onStopCmcRegistration: no profile added"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 351
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_2

    .line 352
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v3

    if-nez v3, :cond_1

    .line 353
    const-string/jumbo p0, "onStopCmcRegistration: manual register is ongoing"

    invoke-static {v1, v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopCmcRegistration: deregisterProfile: activation["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] isSD["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] hasCallForking["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result v1

    if-nez v1, :cond_3

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->stopRegi()V

    .line 364
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return-void

    :cond_3
    move v1, v0

    .line 368
    :goto_1
    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v1, v2, :cond_5

    .line 369
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 371
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-interface {v3, v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    :cond_5
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 375
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->onStopCmcRegistration()V

    return-void
.end method

.method private registerProfile(I)V
    .locals 3

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo p1, "registerProfile: ready to D2D register"

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->startRegi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProfile("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 321
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    :cond_1
    return-void
.end method

.method private resetSARetryCount()V
    .locals 2

    .line 966
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSABindRetryOver()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 967
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    .line 969
    :cond_0
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    return-void
.end method

.method private startDelayedCmcRegistration(I)V
    .locals 2

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSAServiceInternal(Z)V
    .locals 0

    .line 540
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->resetSARetryCount()V

    .line 541
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->connectToSamsungAccountService(Z)V

    return-void
.end method

.method private stopCmcRegistration()V
    .locals 1

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateCmcProfile()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 392
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 393
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->clearChangedCmcInfoList()V

    .line 395
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->checkCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcProfile: Invalid CmcInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 397
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->checkCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    const-string v0, "CmcAccountManager"

    const-string/jumbo v1, "updateCmcProfile: Same CmcInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileManager:Lcom/sec/internal/ims/core/cmc/CmcProfileManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->updateProfile(Lcom/sec/internal/ims/core/cmc/CmcInfo;)V

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcProfile: Update CmcInfo: Line["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 410
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 1011
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCmcPhoneId()I
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getCmcRegiConfigForUserAgent()Landroid/os/Bundle;
    .locals 4

    .line 660
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;-><init>()V

    .line 661
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->RELAY_TYPE:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 662
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRelayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->EMERGENCY_CALL_NUMBERS:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 663
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SUPPORT_DUAL_SIM_CMC:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 664
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    .line 665
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->buildCmcRegiConfig(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;)V

    .line 666
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->buildBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 3

    .line 639
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 640
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 642
    const-string p0, "CmcAccountManager"

    const-string v0, "getCmcRegisterTask: rtl is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 645
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 646
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getCurrentLineOwnerDeviceId()Ljava/lang/String;
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLineSlotIndex()I
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    return p0
.end method

.method public getHotspotAddress()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1007
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->getHotspotAddress()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRegiEventNotifyHostInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-object p0
.end method

.method public handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V
    .locals 5

    .line 929
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 931
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 932
    const-string v1, "CmcAccountManager"

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 933
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSARequestFailed: ignore fail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSARequestFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", retry("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 940
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAError;->isReason(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAError;->isReason(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 941
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAError;->isReason(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 945
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAError;->isReason(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 947
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 948
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 949
    const-string v0, "handleSARequestFailed: release throttle"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 952
    :cond_2
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    goto :goto_1

    .line 953
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    if-ge p1, v2, :cond_4

    .line 955
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->tryGetAccessToken()V

    goto :goto_1

    .line 957
    :cond_4
    const-string p1, "handleSARequestFailed: max count"

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 943
    :cond_5
    :goto_0
    const-string p1, "handleSARequestFailed: stop requesting"

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 960
    :goto_1
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    if-lt p1, v2, :cond_6

    .line 961
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->disconnectToSamsungAccountService()V

    :cond_6
    return-void
.end method

.method public hasSecondaryDevice()Z
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->hasSecondaryDevice()Z

    move-result p0

    return p0
.end method

.method public initSequentially()V
    .locals 4

    .line 126
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->init()V

    .line 128
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileManager:Lcom/sec/internal/ims/core/cmc/CmcProfileManager;

    .line 129
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initHotspotStrategy()V

    .line 130
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "CmcAccountManager"

    const-string v1, "initSequentially: start cmc registration for wifi only model"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 132
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startDelayedCmcRegistration(I)V

    :cond_0
    return-void
.end method

.method public isCmcActivated()Z
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result p0

    return p0
.end method

.method public isCmcEnabled()Z
    .locals 3

    .line 576
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    .line 577
    const-string p0, "isCmcEnabled: Not installed "

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 580
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result p0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmcEnabled: CmcActivated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isCmcProfileAdded()Z
    .locals 0

    .line 416
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return p0
.end method

.method public isCmcSupportedOnHotspot()Z
    .locals 2

    .line 994
    const-string/jumbo v0, "persist.cmc.support_hotspot"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 995
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmergencyCallSupported()Z
    .locals 2

    .line 690
    const-string/jumbo v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 694
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isEmergencyNumber(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 720
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 721
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isEmergencyNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isHotspotEnabled()Z
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->isHotspotEnabled()Z

    move-result p0

    return p0
.end method

.method public isPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 727
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 728
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPotentialEmergencyNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isProfileUpdateFailed()Z
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p0

    return p0
.end method

.method public isSecondaryDevice()Z
    .locals 4

    .line 587
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    const/4 v0, 0x0

    const-string v1, "CmcAccountManager"

    if-nez p0, :cond_0

    .line 588
    const-string p0, "isSecondaryDevice : cmcsetting is null"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    .line 592
    const-string p0, "isSecondaryDevice: by cmcsetting"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 595
    :cond_1
    const-string/jumbo p0, "ro.cmc.device_type"

    const-string v3, ""

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 596
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 597
    const-string p0, "isSecondaryDevice: by prop"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    return v0
.end method

.method public isSupportDualSimCMC()Z
    .locals 2

    .line 680
    const-string/jumbo v0, "persist.cmc.enable_dualsim_cmc"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportDualSimCMC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    return p0
.end method

.method public isSupportSameWiFiOnly()Z
    .locals 2

    .line 671
    const-string/jumbo v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 675
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result p0

    return p0
.end method

.method public isWifiOnly()Z
    .locals 1

    .line 527
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyCmcDeviceChanged()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyCmcNwPrefChanged()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onChangedSamsungAccountInfo(Ljava/lang/String;)V
    .locals 2

    .line 545
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    .line 546
    const-string/jumbo p0, "onChangedSamsungAccountInfo: CmcProfile is not added state"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->isSAServiceIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    const-string/jumbo p0, "onChangedSamsungAccountInfo: SA service not IDLE state"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 553
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isRegisterTaskAllowedToStartSA()Z

    move-result v0

    if-nez v0, :cond_2

    .line 554
    const-string/jumbo p0, "onChangedSamsungAccountInfo: CmcTask is not allowed for start SA"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 557
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->hasSameToken(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 561
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "onChangedSamsungAccountInfo: startSAService"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 562
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAService(Z)V

    return-void

    .line 558
    :cond_4
    :goto_0
    const-string/jumbo p0, "onChangedSamsungAccountInfo: AccessToken is empty or same with the previous one"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCmcDeviceChanged()V
    .locals 8

    .line 175
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 176
    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    .line 177
    const-string/jumbo p0, "onCmcDeviceChanged: RegistrationManagerBase is null"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 181
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_2

    .line 182
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 183
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    .line 184
    const-string/jumbo p0, "onCmcDeviceChanged: deregistering"

    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v3

    .line 191
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 193
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 194
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v5

    if-nez v5, :cond_3

    .line 195
    const-string/jumbo v0, "onCmcDeviceChanged: stopCmcRegistration"

    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->stopCmcRegistration()V

    return-void

    .line 198
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isNotUpdated()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    const-string/jumbo p0, "onCmcDeviceChanged: Not updated"

    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 203
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 207
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 208
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_1

    :cond_5
    move v5, v3

    .line 211
    :goto_1
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 212
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eq v5, v3, :cond_6

    const/4 v2, 0x1

    .line 214
    :cond_6
    const-string v3, "CMC profile updated"

    const/16 v6, 0x1d

    invoke-virtual {p0, v4, v3, v6, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->triggerDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 216
    :cond_7
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 217
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCmcDeviceChanged: stopPdn slot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 218
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-interface {v0, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 219
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 222
    :cond_8
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 224
    const-string/jumbo v3, "onCmcDeviceChanged: update lineId and deviceId for p2p"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:duid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v2, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-wide/16 v1, 0x1f4

    .line 229
    invoke-interface {v0, v5, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegsiter(IJ)V

    goto :goto_3

    .line 231
    :cond_a
    const-string/jumbo v0, "onCmcDeviceChanged: startCmcRegistration"

    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    :goto_3
    return-void
.end method

.method public onDeregistrationDone(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 980
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 981
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->onDeregistrationDone()V

    return-void
.end method

.method public onRegistrationDone(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 974
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 975
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotStrategy:Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->onRegistrationDone()V

    return-void
.end method

.method public onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V
    .locals 1

    .line 925
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSARequested()V
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onSARequested: expire 31 secs"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 903
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x7

    const-wide/16 v1, 0x7918

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSAServiceBindResult(ZZ)V
    .locals 3

    if-eqz p1, :cond_0

    .line 878
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "onSAServiceBindResult: success"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 879
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    return-void

    .line 884
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    .line 886
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSABindRetryOver()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "onSAServiceBindResult: retry over"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 891
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSAServiceBindResult: retry ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "secs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 893
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onSAUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onSAUpdated"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->disconnectToSamsungAccountService()V

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mAccessTokenStorage:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->hasSameToken(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->isLocalCachedAccessTokenRequestState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 914
    const-string v0, "Same updated token with the previous one. Set force update"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setForceUpdate()V

    .line 918
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onSAUpdated: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSimRefresh(I)V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimRefresh("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSimRefresh: RegisterTask is already in the slot ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcAccountManager"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    :cond_1
    return-void
.end method

.method public setEmergencyNumbers(Ljava/lang/String;)V
    .locals 8

    .line 699
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    .line 700
    const-string/jumbo p0, "setEmergencyNumbers: no numbers"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 704
    const-string v0, "\""

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 705
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\\,"

    if-eqz v3, :cond_2

    .line 706
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 707
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_3

    .line 708
    aget v5, v0, v3

    .line 709
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 710
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEmergencyNumbers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegiEventNotifyHostInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 610
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-void
.end method

.method public startCmcRegistration()V
    .locals 1

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startSAService(Z)V
    .locals 4

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSAService: request SA, isLocal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public triggerDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;IZ)V
    .locals 1

    .line 986
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 987
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 988
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "triggerDeregister: deregister slot["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] reason["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] isLocal["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 p3, 0x0

    invoke-interface {p0, p1, p4, p3, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    return-void
.end method
