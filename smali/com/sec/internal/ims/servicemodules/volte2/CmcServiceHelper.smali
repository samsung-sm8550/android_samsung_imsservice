.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;
.super Landroid/os/Handler;
.source "CmcServiceHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
.implements Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;


# static fields
.field private static final CMC_HANDOVER_TIMER_VALUE:I = 0x1770

.field private static final CMC_PD_CHECK_TIMER_VALUE:I = 0x14

.field private static final DIVIDABLE64:I = 0x3f

.field private static final DUMMY_CALL_DOMAIN:I = 0x9

.field private static final DUPLICATED_PUBLISH_DENY_TIME_IN_MILLI:J = 0x1f4L

.field public static final EVENT_OPTIONS_EVENT:I = 0x20

.field public static final EVENT_P2P_OPTIONS_EVENT:I = 0x1f

.field private static final EVT_CMC_HANDOVER_TIMER:I = 0x22

.field private static final EVT_CMC_INFO_EVENT:I = 0x23

.field private static final EVT_CMC_PD_CHECK_TIMER:I = 0x21

.field private static final LOG_TAG:Ljava/lang/String; = "CmcServiceHelper"

.field public static final P2P_DISCOVERY_RESULT:I = 0x1e


# instance fields
.field private mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

.field private final mCmcCallEstablishTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcHandoverTimer:Landroid/os/Message;

.field private mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

.field private final mCmcPdCheckTimeOut:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mCmcPdRat:I

.field private mCmcTotalMnoPullable:Z

.field private final mContext:Landroid/content/Context;

.field private final mCsPublishDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/PublishDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mExtConfirmedCsCallCnt:I

.field private mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field private final mIsCmcPdCheckRespReceived:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsP2pDiscoveryDone:Z

.field private mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

.field private mLastCmcEndCallReason:I

.field private mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

.field private mNeedP2pCommandForRatChange:Z

.field private mNeedToNotifyAfterP2pDiscovery:Z

.field private mNumOfActiveSDs:I

.field private mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

.field private mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

.field private mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;"
        }
    .end annotation
.end field

.field private mSendPublishDigest:Ljava/security/MessageDigest;

.field private mSendPublishHashedXml:[B

.field private mSendPublishInvokeCount:I

.field private mSendPublishInvokeTime:J

.field private mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;


# direct methods
.method public static synthetic $r8$lambda$3szsNwyO42O1ZobDPkREjx90sYM(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->lambda$hasActiveExternalCsCall$0(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$J08WL3rbJ6Kd25kCei3miwsecVc(Ljava/util/Map$Entry;)Ljava/util/stream/IntStream;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->lambda$hasActiveExternalCsCall$1(Ljava/util/Map$Entry;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iZOPrkJRFXzjhtWukBG2QpOoe_A(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->lambda$getActiveSessionByCmcType$3(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$kQp3pHxOS4cJKAQeuF2JECE7lfU(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->lambda$hasActiveExternalCsCall$2(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3

    .line 117
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v1, 0xc8

    .line 88
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedP2pCommandForRatChange:Z

    .line 94
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v1, 0x0

    .line 106
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 107
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 108
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 109
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdRat:I

    .line 118
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/constants/ims/servicemodules/Registration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;",
            "Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;",
            "Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;",
            "Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;",
            "I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 79
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    .line 83
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    .line 84
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    .line 85
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    .line 86
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    const/16 v2, 0xc8

    .line 88
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    .line 89
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 90
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedP2pCommandForRatChange:Z

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    const-wide/16 v2, 0x0

    .line 106
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 107
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 108
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 109
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdRat:I

    .line 126
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    .line 127
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    .line 128
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    .line 129
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    .line 130
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 131
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 132
    new-array p3, p8, [Lcom/sec/ims/DialogEvent;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    .line 133
    invoke-static {p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 134
    new-instance p3, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

    invoke-direct {p3, p2, p1, p8, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    .line 137
    :try_start_0
    const-string p1, "SHA-1"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private checkIgnorePublishDialogCase(IZZ)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1095
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CallType is unknown"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkPdAvailability(ILandroid/os/Bundle;)V
    .locals 8

    .line 1468
    const-string/jumbo v0, "uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1469
    const-string/jumbo v0, "reg_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1470
    const-string v0, "is_first_check"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1472
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPdAvailability(), isFirstCheck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1474
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1479
    :cond_0
    const-string p2, "no 200 OK(OPTION) response from PD, remove pulling UI"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1481
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    aget-object p1, p2, p1

    if-eqz p1, :cond_1

    .line 1483
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1484
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    :cond_1
    const/16 p1, 0xc8

    .line 1486
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_1

    .line 1475
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {p2, p1, v5, v6}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->requestSendCmcCheckMsg(IILjava/lang/String;)V

    const-wide/16 v3, 0x4e20

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    .line 1476
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    .line 1477
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private clearAllCallsForCmcHandover(I)V
    .locals 3

    .line 271
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllCallsForCmcHandover cmcType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->removeSessionByCmcType(I)V

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->clearAllCallInternal(I)V

    return-void
.end method

.method private getActiveCmcCallEstablishTime()J
    .locals 4

    .line 870
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 871
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveCmcCallEstablishTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 0

    .line 1103
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    .line 1105
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "forced InCall state change for fast establishment [delayed ACK case]"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    :cond_0
    return-object p1
.end method

.method private getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I
    .locals 2

    .line 1120
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "session.mRemoteHeld : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isHoldCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1125
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isActiveCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method private getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I
    .locals 0

    .line 1113
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 411
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 412
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 414
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 417
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveCmcCallsession(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external VoLTE Call."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 421
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 422
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Send Publish for external CS call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    goto :goto_0

    .line 425
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendDummyPublishDialog because do not have external call."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto :goto_0

    .line 429
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "exist Active PD callsession. do not send PUBLISH msg."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isDuplicatedPublishDialog(Ljava/lang/String;)Z
    .locals 6

    .line 893
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 894
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 895
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    .line 896
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 897
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 900
    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeTime:J

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v4, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    .line 901
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 902
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    and-int/lit8 v1, v0, 0x3f

    if-nez v1, :cond_0

    .line 903
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[%d] sendPublishDialog duplicated."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    const/16 p0, 0x32

    if-le v0, p0, :cond_2

    .line 907
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 908
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many sendPublishDialog is called in very short time!\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return v1

    .line 912
    :cond_3
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishInvokeCount:I

    .line 913
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mSendPublishHashedXml:[B

    :cond_4
    return v1
.end method

.method private static synthetic lambda$getActiveSessionByCmcType$3(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)Z
    .locals 1

    .line 345
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 347
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 348
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 350
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 352
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 353
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq p0, v0, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$hasActiveExternalCsCall$0(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 197
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasActiveExternalCsCall$1(Ljava/util/Map$Entry;)Ljava/util/stream/IntStream;
    .locals 0

    .line 198
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasActiveExternalCsCall$2(I)Z
    .locals 1

    .line 0
    if-lez p0, :cond_0

    const/4 v0, 0x7

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 1

    .line 1593
    new-instance p0, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/DefaultCallProfileBuilder;-><init>()V

    .line 1596
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setReplaceSipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1597
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1598
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setPhoneId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1599
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setAlertInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1600
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getEmergencyRat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setEmergencyRat(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1601
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setUrn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1602
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCLI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCLI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1603
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setConferenceCall(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1604
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1605
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setLineMsisdn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1606
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1607
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcBoundSessionId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1608
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1609
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setForceCSFB(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1610
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setDialingNumber(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1611
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setNetworkType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1612
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isSamsungMdmnCall()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->setSamsungMdmnCall(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;

    move-result-object p0

    .line 1613
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->build()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    .line 1617
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    goto :goto_0

    .line 1620
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1587
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCmcHandoverTimerExpired handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1588
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1589
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    return-void
.end method

.method private printP2pList()V
    .locals 6

    .line 434
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 437
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P2P list size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:duid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;

    .line 441
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "PD"

    goto :goto_1

    :cond_1
    const-string v2, "SD"

    .line 442
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "line id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", device id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7000000b

    .line 443
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .locals 5

    .line 1387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1388
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_0

    .line 1390
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasSipCallId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1391
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1395
    :cond_1
    new-instance p0, Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1396
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/DialogEvent;->setPhoneId(I)V

    .line 1397
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/ims/DialogEvent;->setRegId(I)V

    return-object p0
.end method

.method public forwardCmcRecordingEventToSD(IIII)V
    .locals 3

    .line 1492
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forwardCmcRecordingEventToSD, recordEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->convertRecordEventForCmcInfo(I)I

    move-result p2

    .line 1495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordInfoMsgEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1499
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1501
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1502
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result p1

    .line 1503
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1506
    const-string/jumbo v1, "send CmcRecordingEvent to SD during cmc call relay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object p1

    .line 1509
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1510
    const-string/jumbo v1, "record_event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1511
    const-string p2, "extra"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1512
    const-string/jumbo p2, "sip_call_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-interface {p0, p4, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->sendCmcInfo(ILandroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method public getActiveSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 1

    .line 344
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 345
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 355
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    return-object p0
.end method

.method getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/ims/ImsRegistration;",
            "Ljava/util/List<",
            "Lcom/sec/ims/Dialog;",
            ">;Z)[I"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x3

    .line 989
    new-array v2, v2, [I

    .line 990
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v4, :cond_10

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 991
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 992
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 998
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v6

    .line 1001
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v7

    const/4 v14, 0x1

    const/16 v27, 0x0

    if-eqz v7, :cond_1

    .line 1002
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Emergency call, ignore to send PUBLISH msg"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 1004
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1005
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v14

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v5, v27

    .line 1010
    :goto_2
    sget-object v13, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canSendPublish: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10

    .line 1012
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    .line 1013
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sip:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";gr="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1014
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1015
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1018
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    .line 1022
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    iget-boolean v10, v4, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    invoke-direct {v0, v8, v10}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallstateForPublishDialog(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    .line 1026
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v10

    xor-int/lit8 v20, v10, 0x1

    .line 1030
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyAudioCall(I)Z

    move-result v10

    .line 1031
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isEmergencyVideoCall(I)Z

    move-result v11

    .line 1033
    invoke-direct {v0, v6, v10, v11}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkIgnorePublishDialogCase(IZZ)Z

    move-result v10

    if-eqz v10, :cond_3

    goto/16 :goto_0

    .line 1039
    :cond_3
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1041
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    .line 1042
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v11

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v10, v27

    goto :goto_4

    .line 1043
    :cond_4
    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isRttCall(I)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v6}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    .line 1048
    :cond_5
    invoke-direct {v0, v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogDirection(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v10

    move/from16 v23, v10

    move v10, v14

    move/from16 v24, v27

    goto :goto_4

    .line 1044
    :cond_6
    :goto_3
    const-string/jumbo v10, "pullable false for RTT/TTY call"

    invoke-static {v13, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, v27

    move/from16 v23, v10

    move/from16 v24, v23

    .line 1051
    :goto_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1053
    const-string v7, "Conference call"

    move-object/from16 v21, v7

    move/from16 v10, v27

    goto :goto_5

    :cond_7
    move-object/from16 v21, v7

    .line 1057
    :goto_5
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isRemoteHeld()Z

    move-result v7

    invoke-direct {v0, v8, v7}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getDialogCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;Z)I

    move-result v15

    if-eq v15, v14, :cond_8

    move/from16 v10, v27

    :cond_8
    if-eqz v10, :cond_a

    if-nez p4, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v7, v27

    goto :goto_7

    :cond_a
    :goto_6
    move v7, v14

    .line 1063
    :goto_7
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1064
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    move/from16 v25, v14

    goto :goto_8

    :cond_b
    move/from16 v25, v7

    .line 1068
    :goto_8
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isDuringCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1070
    aget v7, v2, v14

    add-int/2addr v7, v14

    aput v7, v2, v14

    goto :goto_9

    .line 1071
    :cond_c
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v7, :cond_d

    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const/4 v7, 0x2

    .line 1072
    aget v10, v2, v7

    add-int/2addr v10, v14

    aput v10, v2, v7

    .line 1075
    :cond_e
    :goto_9
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->convertImsCallStateToDialogState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)I

    move-result v18

    .line 1077
    new-instance v10, Lcom/sec/ims/Dialog;

    move-object v7, v10

    .line 1079
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v22

    const/16 v26, 0x0

    const-string/jumbo v11, "test_local_tag"

    const-string/jumbo v12, "test_remote_tag"

    const-string v4, ""

    move/from16 v28, v15

    move-object v15, v4

    const-string v16, ""

    move-object v8, v5

    move-object v4, v10

    move-object v10, v5

    move-object v0, v13

    move-object/from16 v13, v17

    move/from16 v29, v14

    move-object/from16 v14, v19

    move-object/from16 v17, v21

    move/from16 v19, v20

    move/from16 v20, v6

    move/from16 v21, v28

    invoke-direct/range {v7 .. v26}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 1080
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object/from16 v0, p3

    .line 1083
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move-object/from16 v0, p3

    .line 1085
    :goto_a
    aget v4, v2, v27

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v27

    :goto_b
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p3

    goto :goto_b

    :cond_11
    return-object v2
.end method

.method public getCmcCallEstablishTime(Ljava/lang/String;)J
    .locals 4

    if-nez p1, :cond_0

    .line 851
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "callid is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 858
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callId is not integer type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getActiveCmcCallEstablishTime()J

    move-result-wide p0

    return-wide p0

    .line 862
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mCmcCallEstablishTimeMap is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 9

    .line 1628
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getCmcCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result v0

    .line 1632
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1634
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1635
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v5

    if-lez v5, :cond_0

    .line 1636
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    .line 1637
    :goto_0
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_2

    move v4, v5

    goto :goto_2

    .line 1639
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_5

    .line 1640
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v7, :cond_3

    goto :goto_1

    .line 1642
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    .line 1643
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    .line 1644
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    .line 1645
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->EndedCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v5, v7, :cond_4

    const/4 v4, 0x3

    goto :goto_2

    .line 1647
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ReadyToCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v5, v7, :cond_7

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isPullCall()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    :goto_1
    move v4, v6

    goto :goto_2

    :cond_6
    move v2, v4

    :cond_7
    :goto_2
    if-nez v4, :cond_8

    .line 1654
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    const/16 v3, 0x1777

    if-ne p0, v3, :cond_8

    const/4 v4, 0x4

    .line 1658
    :cond_8
    new-instance p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    invoke-direct {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    .line 1659
    invoke-virtual {p0, v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1660
    invoke-virtual {p0, v2}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1661
    invoke-virtual {p0, v4}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1662
    invoke-virtual {p0, v1}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    move-result-object p0

    .line 1664
    invoke-virtual {p0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->build()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public getCmcPdRegPhoneId()I
    .locals 3

    .line 1555
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 1556
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1557
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1558
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1545
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    .line 1546
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1547
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcRegistration: found regId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;
    .locals 1

    const/4 v0, 0x0

    .line 1541
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1528
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v0, :cond_0

    .line 1529
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-eq v1, p1, :cond_1

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1530
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 1531
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 1532
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCsCallPhoneIdByState(I)I
    .locals 6

    .line 516
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCsCallPhoneIdByState state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 518
    const-string p0, "empty mCsPublishDialogMap"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 522
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 523
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PublishDialog;

    .line 525
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v3

    .line 526
    invoke-virtual {v0}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 528
    aget v5, v0, v4

    if-ne v5, p1, :cond_2

    .line 529
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "phone id for cs call : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 534
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "external CS call is not found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

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

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 300
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 2

    .line 312
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

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

    check-cast v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 313
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSessionCountByCmcType(II)I
    .locals 3

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 378
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 381
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 382
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I
    .locals 3

    if-eqz p2, :cond_0

    .line 881
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    .line 882
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    .line 883
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curCmcType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result p0

    return p0

    .line 886
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "curReg null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1670
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1764
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1765
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;

    .line 1766
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Received EVT_CMC_INFO_EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    goto/16 :goto_1

    .line 1760
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->onCmcHandoverTimerExpired(Lcom/sec/ims/ImsRegistration;)V

    goto/16 :goto_1

    .line 1722
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->checkPdAvailability(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    .line 1726
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1727
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1728
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received EVENT_OPTIONS_EVENT, isSuccess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1733
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    .line 1735
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "optionEvent regi handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cmcType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1738
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    goto/16 :goto_1

    .line 1739
    :cond_1
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1740
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1741
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1742
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1744
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR Resopnse, remove pulling UI, optionFailReason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1746
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p1, v0, p1

    if-eqz p1, :cond_3

    .line 1748
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1749
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 1751
    :cond_3
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto/16 :goto_1

    .line 1754
    :cond_4
    const-string p0, "CmcPdCheckTimer is not running"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1771
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1772
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 1773
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received EVENT_P2P_OPTIONS_EVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p1

    aget-object p0, p0, p1

    .line 1775
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/google/SecImsNotifier;->onP2pPushCallEvent(Lcom/sec/ims/DialogEvent;)V

    goto/16 :goto_1

    .line 1673
    :pswitch_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P2P Discovery result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    const/4 p1, 0x1

    .line 1675
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 1676
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedP2pCommandForRatChange:Z

    if-eqz v3, :cond_5

    .line 1677
    const-string/jumbo v3, "send p2p command for rat change after p2p discovery"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7000000c

    .line 1678
    const-string/jumbo v4, "tx, 102,1002"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1679
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    const/16 v4, 0x66

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->sendP2pCommand(II)V

    .line 1682
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v3, :cond_9

    .line 1683
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1684
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    if-eqz v3, :cond_9

    .line 1685
    const-string v3, "Notify pending DIALOG event after P2P discovery done"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    aget-object v0, v0, v3

    if-eqz v0, :cond_9

    .line 1688
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 1690
    invoke-virtual {v0}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    if-eqz v4, :cond_6

    .line 1691
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getState()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 1698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@samsungims.com;gr=urn:duid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1699
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1700
    invoke-virtual {v0}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v7

    const/4 v9, 0x1

    const-wide/16 v5, 0x4e20

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    goto :goto_0

    .line 1702
    :cond_7
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "No cofirmed Dilaog in nofity"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-virtual {v0}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1704
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    goto :goto_0

    .line 1709
    :cond_8
    const-string p1, "Notify empty DIALOG event after P2P discovery done"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_9

    .line 1712
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    .line 1713
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsNotifier;->onDialogEvent(Lcom/sec/ims/DialogEvent;)V

    .line 1717
    :cond_9
    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 1718
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedP2pCommandForRatChange:Z

    :cond_a
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasActiveCmcCallsession(I)Z
    .locals 3

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ModifyRequested:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HoldingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->VideoHeld:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->ResumingVideo:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 335
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v2

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hasActiveExternalCsCall(I)Z
    .locals 1

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 197
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 198
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 199
    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method hasDialingOrIncomingCall()Z
    .locals 2

    .line 1246
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1247
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    .line 1248
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method hasInternalCallToIgnorePublishDialog(I)Z
    .locals 4

    .line 1134
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1135
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 1139
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1141
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1142
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v2, v3, :cond_2

    .line 1144
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public init()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const/16 v1, 0x23

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->init()V

    return-void
.end method

.method public isCallServiceAvailableOnSecondary(ILjava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 1206
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz p3, :cond_0

    if-eqz v1, :cond_0

    .line 1208
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCallServiceAvailableOnSecondary phoneId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", service="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-virtual {v1, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1212
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "disallow Call Service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCmcRegExist(I)Z
    .locals 3

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mRegistrationList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/Registration;

    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 364
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/Registration;->getImsRegi()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 366
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z
    .locals 6

    .line 491
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 495
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "urn:duid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 496
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PD deviceId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 499
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;

    .line 500
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 501
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "p2p deviceId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    const-string p0, "PD and SD are in P2P area"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 508
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method isNeedDelayToSendPublishDialog(I)Z
    .locals 4

    .line 1156
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    if-eqz v1, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 1157
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1163
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1164
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1165
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getEndReason()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    return v0
.end method

.method isP2pDiscoveryDone()Z
    .locals 0

    .line 483
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    return p0
.end method

.method public needEndCallDuringDeregistering(Lcom/sec/ims/ImsRegistration;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    return v3

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(II)I

    move-result v1

    if-nez v1, :cond_2

    return v3

    .line 228
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v1

    const/16 v4, 0x17

    if-ne v1, v4, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    .line 229
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->hasEstablishedCall(II)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    .line 231
    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p0

    if-eq p0, v2, :cond_4

    .line 232
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p0

    if-eq p0, v4, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method

.method onCallEndedWithSendPublish(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 10

    .line 1321
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1325
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_a

    const/4 v3, 0x0

    .line 1331
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 1333
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1334
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v3

    :goto_2
    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    .line 1338
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-nez v6, :cond_6

    .line 1339
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcBoundSessionId()I

    move-result v3

    .line 1340
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getUnmodifiableSessionMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 1341
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v8

    if-ne v8, v2, :cond_3

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v8

    if-eq v8, v3, :cond_3

    .line 1342
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->OutGoingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v8, v9, :cond_4

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v7, v8, :cond_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-nez v5, :cond_9

    .line 1347
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_9

    if-eqz p2, :cond_9

    .line 1349
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v6

    if-ne v6, v2, :cond_9

    .line 1350
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getActiveExtCallCount()I

    move-result v6

    if-lez v6, :cond_8

    if-nez v5, :cond_8

    .line 1351
    iget-boolean v5, p2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsEstablished:Z

    if-eqz v5, :cond_7

    .line 1353
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result v5

    const/16 v6, 0x1777

    if-ne v5, v6, :cond_8

    .line 1354
    :cond_7
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    .line 1357
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 1358
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v4

    const-string v5, "99991111222"

    invoke-virtual {p0, v4, v5, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendCmcCallStateForRcs(ILjava/lang/String;Z)V

    :cond_9
    :goto_4
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :cond_a
    if-eqz p2, :cond_b

    .line 1363
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1364
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getErrorCode()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    .line 1366
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->removeOldP2pSipHistoryAndCommand(I)V

    :cond_c
    return-void
.end method

.method public onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
    .locals 4

    .line 392
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCmcDtmfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-gt v1, v0, :cond_2

    .line 403
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 405
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;->getEvent()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcDtmfEvent(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    return-void
.end method

.method onCmcImsDialogEvent(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;
    .locals 9

    .line 1402
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1404
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->filterOngoingDialogFromDialogEvent(Lcom/sec/ims/DialogEvent;)Lcom/sec/ims/DialogEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1406
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Filter DialogEvent"

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    .line 1410
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    if-eqz v2, :cond_1

    .line 1411
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 1417
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1418
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1419
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isP2pDiscoveryDone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1420
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Do not send OPTIONS until P2P discovery done"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1422
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isInP2pArea(Lcom/sec/ims/ImsRegistration;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1423
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "PD and SD are not in P2P area"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@samsungims.com;gr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPriDeviceIdWithURN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsCmcPdCheckRespReceived:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v6

    const/4 v8, 0x1

    const-wide/16 v4, 0x4e20

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcPdCheckTimer(IJILjava/lang/String;Z)V

    goto :goto_2

    .line 1434
    :cond_5
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No cofirmed Dilaog in nofity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    const/16 p1, 0xc8

    .line 1436
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcEndCallReason:I

    .line 1438
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->getPhoneId()I

    move-result p1

    aput-object p2, p0, p1

    :cond_6
    return-object p2
.end method

.method public onCmcRecordingInfo(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V
    .locals 2

    .line 1520
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCmcRecordingInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 1521
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1523
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->notifyCmcInfoEvent(Lcom/sec/internal/constants/ims/servicemodules/volte2/CmcInfoEvent;)V

    :cond_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 204
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeregistered reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    const-string/jumbo v1, "stop Nsd when deregistered"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->stop()V

    const/4 p2, 0x0

    .line 209
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mIsP2pDiscoveryDone:Z

    .line 210
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    .line 211
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedP2pCommandForRatChange:Z

    .line 212
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 213
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mLastCmcDialogEvent:[Lcom/sec/ims/DialogEvent;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aget-object p2, p2, v1

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p2}, Lcom/sec/ims/DialogEvent;->clearDialogList()V

    :cond_0
    const/4 p2, 0x2

    if-ne v0, p2, :cond_1

    .line 219
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 p2, 0x16

    if-ne p1, p2, :cond_1

    .line 220
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 236
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeregistering reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    .line 238
    invoke-static {v1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 240
    const-string/jumbo v2, "onDeregistering: Send dummy publish dialog before deregistered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendDummyPublishDialog(II)V

    .line 243
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->needEndCallDuringDeregistering(Lcom/sec/ims/ImsRegistration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 244
    const-string v2, "Do not end SD call while deregistering"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 246
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V

    :cond_1
    if-ne v1, v3, :cond_2

    .line 250
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    .line 251
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_2
    return-void
.end method

.method onImsCallEventWhenEstablished(ILcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    .line 1256
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_6

    const/4 v3, 0x0

    .line 1262
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1263
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v4

    if-nez v4, :cond_5

    .line 1265
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1267
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1268
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 1272
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    .line 1276
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1277
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    .line 1279
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionCountByCmcType(ILcom/sec/ims/ImsRegistration;)I

    move-result v4

    .line 1280
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    .line 1281
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v5

    if-eq v5, v1, :cond_4

    if-le v4, v1, :cond_5

    .line 1283
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_6
    return-void
.end method

.method onImsCallEventWithHeldBoth(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    if-eqz p2, :cond_3

    .line 1293
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    .line 1297
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-gt v1, v0, :cond_3

    const/4 v2, 0x0

    .line 1303
    invoke-virtual {p0, p2, v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1304
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCmcType()I

    move-result v3

    if-nez v3, :cond_2

    .line 1306
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1308
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v3, v4, :cond_1

    goto :goto_2

    .line 1313
    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_3
    return-void
.end method

.method onImsIncomingCallEvent(II)V
    .locals 7

    .line 1221
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_4

    const/4 v3, 0x0

    .line 1227
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_3

    .line 1230
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v5

    .line 1231
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {p0, v2, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v6

    if-eqz v5, :cond_1

    move v3, v1

    :cond_1
    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-nez v3, :cond_3

    .line 1236
    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 1240
    :cond_4
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1241
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 258
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 259
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRegEventContactUriNotification prevNumOfActiveSDs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mNumOfActiveSDs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->startP2pDiscovery(Ljava/util/List;)V

    .line 263
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 264
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    if-lez v2, :cond_0

    if-eq v2, v0, :cond_0

    .line 265
    const-string/jumbo v0, "send Publish when registered"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->handlePublishDialog(Lcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5

    .line 151
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 152
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRegistered currentRat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCmcPdRat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcSupportedOnHotspot()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 155
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isHotspotEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdRat:I

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 158
    const-string v2, "need to send p2p command for rat change after p2p discovery"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedP2pCommandForRatChange:Z

    :cond_0
    if-ne v0, v3, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 162
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mP2pRegiInfo:Lcom/sec/ims/ImsRegistration;

    :cond_1
    const/4 v0, 0x0

    .line 165
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNumOfActiveSDs:I

    .line 166
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdRat:I

    goto/16 :goto_0

    .line 167
    :cond_2
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v1, :cond_4

    .line 170
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "do cmc handover"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v1, 0x0

    .line 172
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 173
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 175
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 176
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->makeReplaceProfile(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->createSession(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 179
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    .line 180
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->replaceRegistrationInfo(Lcom/sec/ims/ImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 182
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    .line 183
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 188
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mmtel Registered ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mmtel"

    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1, v2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasActiveExternalCsCall(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method

.method sendCmcCallStateForRcs(ILjava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1371
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1373
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendCmcCallStateForRcs"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1375
    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    const-string v3, "EXTRA_IS_INCOMING"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1377
    const-string v0, "EXTRA_TEL_NUMBER"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1378
    const-string p2, "EXTRA_PHONE_ID"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1379
    :goto_0
    const-string p2, "EXTRA_CALL_EVENT"

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1380
    const-string p1, "EXTRA_IS_CMC_CALL"

    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1381
    const-string p1, "EXTRA_IS_CMC_CONNECTED"

    invoke-virtual {v2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1382
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public sendDummyPublishDialog(II)V
    .locals 4

    .line 278
    new-instance v0, Lcom/android/internal/telephony/PublishDialog;

    invoke-direct {v0}, Lcom/android/internal/telephony/PublishDialog;-><init>()V

    const/4 v1, 0x1

    .line 279
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->setCallCount(I)V

    const/16 v2, 0x270f

    .line 280
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallId(I)V

    const/16 v2, 0x9

    .line 281
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDomain(I)V

    const/4 v2, 0x0

    .line 282
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallStatus(I)V

    .line 283
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallType(I)V

    .line 284
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallDirection(I)V

    .line 285
    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallRemoteUri(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PublishDialog;->addCallPullable(Z)V

    .line 287
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallNumberPresentation(I)V

    .line 288
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapNamePresentation(I)V

    .line 289
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/PublishDialog;->addCallCnapName(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PublishDialog;->addCallMpty(Z)V

    const-wide/16 v1, 0x0

    .line 291
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PublishDialog;->addConnectedTime(J)V

    .line 292
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    return-void
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V
    .locals 52

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p3

    .line 540
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v13

    .line 541
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallId()[I

    move-result-object v12

    .line 542
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDomain()[I

    move-result-object v11

    .line 543
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v21

    .line 544
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallType()[I

    move-result-object v22

    .line 545
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallDirection()[I

    move-result-object v23

    .line 546
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallRemoteUri()[Ljava/lang/String;

    move-result-object v24

    .line 547
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallPullable()[Z

    move-result-object v1

    .line 548
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallNumberPresentation()[I

    move-result-object v25

    .line 549
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getConnectedTime()[J

    move-result-object v2

    .line 550
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/PublishDialog;->getCallMpty()[Z

    move-result-object v26

    .line 552
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_30

    .line 557
    array-length v3, v12

    const/4 v7, 0x1

    if-lt v3, v7, :cond_30

    if-eqz v11, :cond_30

    array-length v3, v11

    if-ge v3, v7, :cond_0

    goto/16 :goto_1e

    :cond_0
    const/4 v4, 0x0

    .line 562
    aget v3, v11, v4

    const/4 v9, 0x3

    const/4 v6, 0x2

    if-ne v3, v7, :cond_6

    .line 564
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PublishDialog;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PublishDialog;->getCallStatus()[I

    move-result-object v3

    .line 566
    aget v5, v21, v4

    if-ne v5, v9, :cond_2

    aget v3, v3, v4

    if-eq v5, v3, :cond_2

    goto :goto_0

    .line 571
    :cond_1
    aget v3, v21, v4

    if-ne v3, v9, :cond_2

    .line 577
    :goto_0
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    invoke-virtual {v0, v14, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 579
    sget-object v5, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Send 180 Ringing msg for CMC CS call."

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result v3

    invoke-interface {v5, v3}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->handleCmcCsfb(I)I

    .line 584
    :cond_2
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCsPublishDialogMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v10, p2

    invoke-interface {v3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    move v5, v3

    :goto_1
    if-ge v3, v13, :cond_4

    .line 588
    aget v10, v21, v3

    invoke-static {v10}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v10

    if-ne v10, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 592
    :cond_4
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mExtConfirmedCsCallCnt: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", extConfirmedCsCallCnt: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    if-eq v3, v5, :cond_5

    .line 594
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mOptionsSvcIntf:Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;

    invoke-interface {v3, v15, v5}, Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;->updateCmcExtCallCount(II)I

    .line 596
    :cond_5
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mExtConfirmedCsCallCnt:I

    .line 600
    :cond_6
    invoke-virtual {v0, v15, v4, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v27

    if-nez v27, :cond_7

    return-void

    .line 605
    :cond_7
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    move v3, v4

    .line 606
    :goto_2
    const-string v9, ","

    if-ge v3, v13, :cond_9

    .line 607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v12, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v11, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v21, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v22, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v23, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v10, v1, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v25, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v10, v26, v3

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v2, v3

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v9, 0x70000001

    invoke-static {v9, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 610
    aget v5, v21, v3

    if-ne v5, v7, :cond_8

    .line 611
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    aget v9, v12, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-wide v17, v2, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 615
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->hasInternalCallToIgnorePublishDialog(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 616
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : PD has internal call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 620
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isNeedDelayToSendPublishDialog(I)Z

    move-result v28

    .line 622
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v29

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 625
    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    .line 626
    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eqz v1, :cond_c

    move v10, v4

    .line 628
    :goto_3
    array-length v7, v1

    if-ge v10, v7, :cond_c

    .line 629
    aget-boolean v7, v1, v10

    if-nez v7, :cond_b

    .line 630
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    goto :goto_4

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    move v1, v4

    move v7, v1

    move v10, v7

    move/from16 v31, v10

    const/16 v30, 0x1

    .line 641
    :goto_5
    const-string v4, ";gr="

    if-ge v7, v13, :cond_26

    .line 661
    sget-object v6, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    move-object/from16 p2, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v8

    const-string v8, "[CallInfo #"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] callId: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v12, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", domain: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v11, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callState: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v21, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callType: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v22, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", callDirections: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v23, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", remoteUris: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v24, v7

    .line 662
    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", cmcType: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", phoneId: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    aget v2, v11, v7

    const/4 v8, 0x2

    if-ne v2, v8, :cond_e

    .line 667
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-eq v5, v2, :cond_d

    .line 668
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Trying call sendPublishDialogInternal(). CmcTotalMnoPullable changed : %s ==> %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-virtual {v0, v15, v14}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(II)V

    move-object/from16 v48, p2

    move-object/from16 v49, v3

    move-object/from16 v47, v9

    move/from16 v51, v13

    move-object/from16 v15, v32

    const/16 v37, 0x0

    move-object/from16 v32, v11

    goto/16 :goto_17

    :cond_d
    move-object/from16 v37, v3

    goto :goto_7

    :cond_e
    if-eq v2, v8, :cond_25

    .line 676
    aget v2, v12, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 679
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 681
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v2

    aget-object v2, v24, v7

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 683
    aget v8, v25, v7

    move-object/from16 v34, v2

    const/4 v2, 0x2

    if-ne v8, v2, :cond_f

    .line 684
    const-string v2, "anonymous"

    goto :goto_6

    .line 686
    :cond_f
    aget-object v2, v24, v7

    .line 689
    :goto_6
    aget v8, v23, v7

    .line 690
    aget v35, v21, v7

    invoke-static/range {v35 .. v35}, Lcom/sec/internal/helper/ImsCallUtil;->convertCsCallStateToDialogState(I)I

    move-result v35

    move-object/from16 v36, v2

    .line 692
    aget v2, v22, v7

    move-object/from16 v37, v3

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_10

    .line 693
    const-string v2, "ignore publish dialog when call type is 911 (Emergency)"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move-object/from16 v48, p2

    move/from16 v46, v5

    move v0, v7

    move-object/from16 v47, v9

    move-object/from16 v36, v12

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v49, v37

    :goto_8
    const/16 v37, 0x0

    move-object/from16 v32, v11

    goto/16 :goto_16

    .line 695
    :cond_10
    aget-boolean v3, v26, v7

    move-object/from16 v39, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 697
    aget v2, v21, v7

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    move-object/from16 v48, p2

    move/from16 v46, v5

    move v0, v7

    move-object/from16 v47, v9

    move-object/from16 v36, v12

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v49, v37

    const/16 v30, 0x2

    :goto_9
    const/16 v31, 0x1

    goto :goto_8

    :cond_11
    if-eqz v2, :cond_13

    const/4 v3, 0x7

    if-eq v2, v3, :cond_13

    const/16 v3, 0x8

    if-ne v2, v3, :cond_12

    goto :goto_a

    :cond_12
    move-object/from16 v48, p2

    move/from16 v46, v5

    move v0, v7

    move-object/from16 v47, v9

    move-object/from16 v36, v12

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v49, v37

    goto :goto_9

    :cond_13
    :goto_a
    move-object/from16 v48, p2

    move/from16 v46, v5

    move v0, v7

    move-object/from16 v47, v9

    move-object/from16 v36, v12

    move/from16 v51, v13

    move-object/from16 v15, v32

    move-object/from16 v49, v37

    const/16 v30, 0x0

    goto :goto_9

    :cond_14
    if-eqz v2, :cond_1c

    const/16 v3, 0x38f

    if-ne v2, v3, :cond_15

    move v4, v3

    move/from16 v16, v8

    const/4 v3, 0x3

    const/4 v8, 0x1

    goto :goto_f

    :cond_15
    const/4 v4, 0x1

    if-eq v2, v4, :cond_17

    const/4 v3, 0x2

    if-eq v2, v3, :cond_17

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    goto :goto_b

    :cond_16
    move/from16 v16, v8

    const/4 v2, 0x0

    const/16 v17, 0x0

    const/16 v38, 0x0

    move v8, v4

    goto :goto_11

    :cond_17
    const/4 v3, 0x3

    :goto_b
    if-eq v2, v4, :cond_1a

    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    if-eq v2, v3, :cond_18

    const/4 v2, 0x0

    goto :goto_c

    :cond_18
    const/4 v2, 0x2

    goto :goto_c

    :cond_19
    const/4 v2, 0x4

    goto :goto_c

    :cond_1a
    move v2, v3

    .line 731
    :goto_c
    aget v4, v21, v7

    move/from16 v16, v8

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1b

    move/from16 v17, v3

    move/from16 v38, v17

    const/4 v4, 0x0

    goto :goto_11

    :cond_1b
    const/4 v4, 0x0

    :goto_d
    const/16 v17, 0x0

    :goto_e
    const/16 v38, 0x0

    goto :goto_11

    :cond_1c
    move/from16 v16, v8

    const/4 v3, 0x3

    const/4 v8, 0x1

    const/16 v4, 0x38f

    :goto_f
    if-ne v2, v4, :cond_1d

    const/4 v4, 0x7

    goto :goto_10

    :cond_1d
    move v4, v8

    .line 710
    :goto_10
    aget v2, v21, v7

    if-ne v2, v8, :cond_1e

    move/from16 v17, v3

    move v2, v4

    move v4, v8

    goto :goto_e

    :cond_1e
    move v2, v4

    move v4, v8

    goto :goto_d

    .line 743
    :goto_11
    aget v3, v21, v7

    if-ne v3, v8, :cond_1f

    move/from16 v19, v4

    move/from16 v43, v8

    const/4 v4, 0x2

    goto :goto_12

    :cond_1f
    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    move/from16 v43, v4

    const/16 v19, 0x0

    goto :goto_12

    :cond_20
    const/16 v19, 0x0

    const/16 v43, 0x0

    :goto_12
    if-eqz v19, :cond_22

    .line 752
    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    if-nez v4, :cond_21

    goto :goto_13

    :cond_21
    const/4 v4, 0x0

    goto :goto_14

    :cond_22
    :goto_13
    move v4, v8

    :goto_14
    if-eqz v3, :cond_23

    const/4 v8, 0x7

    if-eq v3, v8, :cond_23

    const/16 v8, 0x8

    if-ne v3, v8, :cond_24

    :cond_23
    add-int/lit8 v10, v10, 0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    move/from16 v41, v4

    move-object/from16 v4, v20

    move-object/from16 v3, v33

    move-object/from16 v8, v34

    move/from16 v40, v38

    move/from16 v33, v1

    move/from16 v34, v10

    move/from16 v38, v17

    move/from16 v17, v2

    move-object v2, v4

    goto :goto_15

    :cond_25
    move-object/from16 v37, v3

    .line 675
    const-string v2, ""

    const-string/jumbo v3, "primary_device_dialog_id"

    move/from16 v33, v1

    move-object v4, v2

    move-object v8, v4

    move-object/from16 v36, v8

    move-object/from16 v39, v36

    move/from16 v34, v10

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v35, 0x0

    const/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v43, 0x0

    move-object v2, v3

    move-object/from16 v3, v39

    .line 762
    :goto_15
    new-instance v10, Lcom/sec/ims/Dialog;

    move-object v1, v10

    const-string v20, ""

    move-object/from16 v44, v10

    move-object/from16 v10, v20

    const/16 v20, 0x0

    const-string/jumbo v45, "test_local_tag"

    move/from16 v46, v5

    move-object/from16 v5, v45

    const-string/jumbo v45, "test_remote_tag"

    move-object v0, v6

    move-object/from16 v6, v45

    const-string v19, ""

    move-object/from16 v47, v9

    move-object/from16 v9, v19

    move-object/from16 v48, p2

    move-object/from16 v49, v37

    const/16 v18, 0x1

    const/16 v37, 0x0

    move-object/from16 v42, v0

    move v0, v7

    move-object/from16 v7, v39

    move-object/from16 v50, v32

    move-object/from16 v32, v11

    move-object/from16 v11, v36

    move-object/from16 v36, v12

    move/from16 v12, v35

    move/from16 v51, v13

    move/from16 v13, v16

    move/from16 v14, v17

    move/from16 v15, v43

    move/from16 v16, p1

    move/from16 v17, v38

    move/from16 v18, v40

    move/from16 v19, v41

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v44 .. v44}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v42

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, v44

    move-object/from16 v15, v50

    .line 766
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v33

    move/from16 v10, v34

    :goto_16
    add-int/lit8 v7, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v14, p3

    move-object v8, v15

    move-object/from16 v11, v32

    move-object/from16 v12, v36

    move/from16 v5, v46

    move-object/from16 v9, v47

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    move/from16 v13, v51

    const/4 v6, 0x2

    move/from16 v15, p1

    goto/16 :goto_5

    :cond_26
    move-object/from16 v48, v2

    move-object/from16 v49, v3

    move-object v15, v8

    move-object/from16 v47, v9

    move-object/from16 v32, v11

    move/from16 v51, v13

    const/16 v37, 0x0

    .line 769
    :goto_17
    aget v0, v32, v37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2a

    move/from16 v0, v51

    if-lt v0, v2, :cond_2a

    if-eqz v31, :cond_2a

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v49

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 777
    aget v0, v22, v37

    const/4 v14, 0x1

    if-eq v0, v14, :cond_28

    const/4 v4, 0x2

    if-eq v0, v4, :cond_28

    const/4 v4, 0x3

    if-ne v0, v4, :cond_27

    goto :goto_18

    :cond_27
    const/4 v0, 0x5

    move/from16 v18, v37

    goto :goto_19

    :cond_28
    const/4 v4, 0x3

    :goto_18
    const/4 v0, 0x6

    move/from16 v18, v4

    :goto_19
    if-nez v30, :cond_29

    add-int/lit8 v10, v10, 0x1

    :cond_29
    move/from16 v21, v10

    add-int/lit8 v22, v1, 0x1

    .line 791
    new-instance v13, Lcom/sec/ims/Dialog;

    move-object v1, v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual/range {v27 .. v27}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v2, "999"

    const-string v4, "999"

    const-string/jumbo v5, "test_local_tag"

    const-string/jumbo v6, "test_remote_tag"

    const-string v8, "Conference call"

    const-string v9, ""

    const-string v10, ""

    const-string v11, "Conference call"

    const/4 v12, 0x2

    const/16 v16, 0x0

    move-object/from16 p2, v13

    move/from16 v13, v16

    const/16 v17, 0x3

    move v14, v0

    move-object v0, v15

    move/from16 v15, v30

    move/from16 v16, p1

    invoke-direct/range {v1 .. v20}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V

    .line 795
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/Dialog;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p2

    .line 796
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v21

    move/from16 v1, v22

    goto :goto_1a

    :cond_2a
    move-object v0, v15

    .line 802
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v48

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\">\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 805
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/Dialog;

    sub-int v6, v1, v10

    const/4 v7, 0x1

    if-le v6, v7, :cond_2b

    .line 807
    invoke-virtual {v5, v7}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 809
    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_2c
    const/4 v7, 0x1

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</dialog-info>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 815
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-object/from16 v3, p0

    move/from16 v5, p3

    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-eqz v2, :cond_2d

    goto :goto_1c

    :cond_2d
    move/from16 v7, v37

    .line 819
    :goto_1c
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cmcPdCallCnt: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", extCsCallCount: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endedCallCnt: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-direct {v3, v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->isDuplicatedPublishDialog(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    aget v1, v32, v37

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2e

    return-void

    :cond_2e
    if-nez v7, :cond_2f

    .line 825
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2f

    .line 826
    iget-object v2, v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const-string v5, "displayName"

    const/16 v7, 0x1770

    move/from16 v3, v29

    move/from16 v8, v28

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    .line 827
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/Dialog;

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v3, v47

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x70000002

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_1d

    :cond_2f
    return-void

    .line 558
    :cond_30
    :goto_1e
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ignore sendPublishDialog : Array parameters are empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendPublishDialogInternal(II)V
    .locals 0

    .line 836
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 838
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;)V
    .locals 1

    const/4 v0, 0x0

    .line 919
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V

    return-void
.end method

.method sendPublishDialogInternal(ILcom/sec/ims/ImsRegistration;Z)V
    .locals 11

    .line 923
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPublishDialogInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    .line 931
    const-string p0, "Ignore sendPublishDialogInternal : PD is not registered"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 935
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 937
    sget-object v5, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    if-ne v5, v3, :cond_2

    .line 938
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 940
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 941
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    const-string v6, "*77"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 942
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasTwoPhonePrefix="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasNumberPlus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    if-eqz v5, :cond_2

    .line 944
    :cond_1
    const-string p0, "Ignore sendPublishDialogInternal in two phone mode"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 951
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 952
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sip:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 954
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcTotalMnoPullable:Z

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCallCountForSendPublishDialog(ILcom/sec/ims/ImsRegistration;Ljava/util/List;Z)[I

    move-result-object p1

    .line 955
    aget p2, p1, v2

    .line 956
    aget v2, p1, v4

    const/4 v5, 0x2

    .line 957
    aget p1, p1, v5

    .line 961
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\" xmlns:sa=\"urn:ietf:params:xml:ns:sa-dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 964
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/Dialog;

    sub-int v8, p2, p1

    if-le v8, v4, :cond_3

    .line 966
    invoke-virtual {v7, v4}, Lcom/sec/ims/Dialog;->setIsExclusive(Z)V

    .line 968
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 969
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->getCallState()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/ims/Dialog;->isExclusive()Z

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x70000003

    invoke-static {v8, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_0

    .line 971
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "</dialog-info>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 973
    sget-object v4, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extPsCallCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", validCallCnt: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", endedCallCnt: "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 976
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mVolteSvcIntf:Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    const-string v4, "displayName"

    const/16 v6, 0x1770

    move v2, v0

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;->publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    :cond_5
    return-void
.end method

.method public setCallEstablishTimeExtra(J)V
    .locals 1

    .line 844
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcCallEstablishTimeMap:Ljava/util/Map;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setNeedToNotifyAfterP2pDiscovery(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mNeedToNotifyAfterP2pDiscovery:Z

    return-void
.end method

.method public setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method startCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 1565
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1566
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "already start cmc handover timer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1569
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cmc handover timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x22

    .line 1570
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1571
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method protected startCmcPdCheckTimer(IJILjava/lang/String;Z)V
    .locals 3

    .line 1444
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->stopCmcPdCheckTimer(I)V

    .line 1446
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCmcPdCheckTimer: millis "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1448
    const-string/jumbo v1, "reg_id"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1449
    const-string/jumbo p4, "uri"

    invoke-virtual {v0, p4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const-string p4, "is_first_check"

    invoke-virtual {v0, p4, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p4, 0x21

    const/4 p5, -0x1

    .line 1451
    invoke-virtual {p0, p4, p1, p5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 1452
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p5, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p4, p2, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method public startP2p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->startP2p(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public startP2pDiscovery(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->startDiscovery(Ljava/util/List;Landroid/os/Handler;)V

    return-void
.end method

.method public stopCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1575
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1577
    iget-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    .line 1579
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop cmc handover timer handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1581
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcHandoverTimer:Landroid/os/Message;

    .line 1582
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->clearAllCallsForCmcHandover(I)V

    :cond_1
    return-void
.end method

.method protected stopCmcPdCheckTimer(I)V
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1461
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopCmcPdCheckTimer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcPdCheckTimeOut:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Message;

    .line 1464
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method updateAudioInterfaceByCmc(II)Lcom/sec/ims/ImsRegistration;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne p2, v2, :cond_2

    .line 1179
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x7

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-gt p2, v2, :cond_3

    .line 1185
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1187
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mMediaController:Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;->bindToNetwork(Landroid/net/Network;)V

    return-object v1

    :cond_1
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 1192
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAudioInterface for CMC SD call."

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    .line 1193
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->getCmcRegistration(IZI)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method updateCmcP2pList(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 4

    .line 463
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcP2pList currentRat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->printP2pList()V

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->mCmcP2pHelperManager:Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 469
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 470
    const-string p0, "Do not set p2p list in case of CMC handover"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 472
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 473
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;

    .line 474
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getLineId()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@samsungims.com;gr="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 478
    :cond_2
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setP2p(Ljava/util/List;)V

    :cond_3
    :goto_1
    return-void
.end method
