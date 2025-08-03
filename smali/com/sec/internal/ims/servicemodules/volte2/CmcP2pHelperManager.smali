.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;
.super Landroid/os/Handler;
.source "CmcP2pHelperManager.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;


# static fields
.field private static final CMC_P2P_SIP_DELAY_CHECK_TIMER_VALUE:I = 0xa

.field private static final EVENT_SIP_INCOMING_MESSAGE:I = 0x24

.field private static final EVENT_SIP_OUTGOING_MESSAGE:I = 0x25

.field private static final EVT_CMC_P2P_SIP_DELAY_CHECK_TIMER:I = 0x26

.field private static final LOG_TAG:Ljava/lang/String; = "CmcP2pHelperManager"

.field private static final REMOVE_MESSAGE_TIME_THRESHOLD:I = 0x493e0


# instance fields
.field private mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

.field private final mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

.field private final mCmcServiceHelper:Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

.field private final mContext:Landroid/content/Context;

.field private final mDateFormatOfCmcSendTime:Ljava/text/SimpleDateFormat;

.field private mIsIPv6:Z

.field private mLastCmcOutoingCallId:[Ljava/lang/String;

.field private mLastCmcSendTime:[Ljava/lang/String;

.field private mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

.field private mP2pCommandListener:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;

.field private final mP2pCommandMsgSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mP2pDiscoveryResultHandler:Landroid/os/Handler;

.field private final mP2pSipHistorySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/SipMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6biMTTx66_Sdv5pL8IZgThnui2s(Landroid/os/Message;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$removeOldP2pSipHistoryAndCommand$10(Landroid/os/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6rBMslwfWFdVY-S5D890xrjm0DE(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$sendP2pCommand$4(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AieHGK8DwEIXTVqHufzW7wQ6xN0(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$sendP2pCommand$0(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Hl9ij8J77LOVzJN5svK-sulX9Kk(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$sendP2pCommand$3(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$K4zzGFzmHoghq618eE-Qh5cDY_U(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$handleP2pCommandForServerError$5(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NNdr0Xp-t98uYg14fx7HDXF48E4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/SipMsg;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$removeSipHistoryMsg$7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/SipMsg;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$USCSvMHrxNGvoZ9stBqf7FQHB4c(Lcom/sec/internal/constants/ims/SipMsg;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$removeOldP2pSipHistoryAndCommand$9(Lcom/sec/internal/constants/ims/SipMsg;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$e04XGSigZfralPj5Vy-Oxnm-0Bg(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$sendP2pCommand$1(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sgeJQr9IgCCV2S9NKZwvThZPud8(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$removeP2pCommandMsg$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$shKu1_RlsZfgS5tt3VchQ_j5txA(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;ILjava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$removeP2pMsgSet$8(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u_DMHdp43pWc85B-4JRSy-cD4x0(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->lambda$sendP2pCommand$2(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleP2pCommandForOutgoingState(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->handleP2pCommandForOutgoingState(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleP2pCommandForServerError(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->handleP2pCommandForServerError()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;)V
    .locals 2

    .line 74
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    .line 57
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    .line 58
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yyyy HH:mm:ss.SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mDateFormatOfCmcSendTime:Ljava/text/SimpleDateFormat;

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    const/4 p2, 0x0

    .line 64
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mIsIPv6:Z

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mCmcServiceHelper:Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getCmcHandler()Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    .line 79
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 80
    new-instance p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandListener:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;

    .line 81
    new-array p1, p3, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcSendTime:[Ljava/lang/String;

    .line 82
    new-array p1, p3, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcOutoingCallId:[Ljava/lang/String;

    return-void
.end method

.method private handleP2pCommandForOutgoingState(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V
    .locals 5

    .line 363
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pCommandForOutgoingState, mP2pSipHistories size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 365
    iget-object v2, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->removeSipHistoryMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->isProcessingP2pCommandNeeded(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 370
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 371
    const-string/jumbo v2, "sid"

    iget-object v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "method"

    iget-object v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v2, "time"

    iget-object p1, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x26

    .line 374
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 376
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    const-string v1, "CMC P2P SIP DELAY TIMER started, waiting time(s): 10"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void
.end method

.method private handleP2pCommandForServerError()V
    .locals 2

    .line 382
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleP2pCommandForServerError()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private isProcessingP2pCommandNeeded(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;I)Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-gt p2, p0, :cond_0

    iget-object p0, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isProcessingSipMsgNeeded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 172
    const-string p0, "INVITE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleP2pCommandForServerError$5(Landroid/os/Message;)V
    .locals 3

    .line 384
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method private static synthetic lambda$removeOldP2pSipHistoryAndCommand$10(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    .line 463
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    .line 464
    const-string/jumbo v0, "time"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$removeOldP2pSipHistoryAndCommand$9(Lcom/sec/internal/constants/ims/SipMsg;)Ljava/lang/String;
    .locals 0

    .line 457
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg;->getCmcSendTime()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$removeP2pCommandMsg$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)Z
    .locals 4

    .line 392
    iget-object v0, p5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 393
    const-string/jumbo v1, "sid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    const-string v2, "method"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 397
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 398
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 399
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeP2pCommandMsg, time: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    .line 401
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$removeP2pMsgSet$8(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;ILjava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mDateFormatOfCmcSendTime:Ljava/text/SimpleDateFormat;

    invoke-interface {p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 439
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mDateFormatOfCmcSendTime:Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcSendTime:[Ljava/lang/String;

    aget-object p0, p0, p2

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 441
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    .line 442
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed time: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    .line 447
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CmcSendTime parse exception!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static synthetic lambda$removeSipHistoryMsg$7(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/SipMsg;)Z
    .locals 1

    .line 410
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipMsg;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 411
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 412
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipMsg;->getCmcSendTime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 413
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeSipHistoryMsg, time: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/SipMsg;->getCmcSendTime()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$sendP2pCommand$0(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Z
    .locals 0

    .line 279
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$sendP2pCommand$1(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)V
    .locals 3

    .line 280
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "targetDeviceIdList added for 2nd call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$sendP2pCommand$2(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Ljava/lang/String;
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$sendP2pCommand$3(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Z
    .locals 0

    .line 285
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$sendP2pCommand$4(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Ljava/lang/String;
    .locals 0

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private processSipRequestMessage(ILcom/sec/internal/constants/ims/SipMsg;)V
    .locals 4

    .line 176
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getCmcSendTime()Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->isProcessingSipMsgNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcSendTime:[Ljava/lang/String;

    aput-object v1, v3, p1

    .line 184
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v3, 0x1

    .line 185
    invoke-direct {p0, v2, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->removeP2pCommandMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 188
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Save incoming SIP message in P2pSipHistoryList"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private processSipResponseMessage(ILcom/sec/internal/constants/ims/SipMsg;)V
    .locals 3

    .line 194
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 195
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asStatusLine()Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->getCode()I

    move-result v1

    .line 197
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcOutoingCallId:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x190

    if-lt v1, p1, :cond_1

    const/16 p1, 0x258

    if-lt v1, p1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->getBuilder()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    const/16 v0, 0x65

    .line 200
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setEventType(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    const/16 v0, 0x5a

    .line 201
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setState(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/SipMsg;->getCSeqMethod()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setMethod(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mDateFormatOfCmcSendTime:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 203
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setCmcSendTime(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->build()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;

    move-result-object p1

    .line 205
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->sendP2pCommand(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeP2pCommandMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    new-instance v7, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v7}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private removeP2pMsgSet(Ljava/util/Set;Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate<",
            "TE;>;I)V"
        }
    .end annotation

    .line 436
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;I)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private removeSipHistoryMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 409
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method


# virtual methods
.method public getLastCmcOutoingCallId()[Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcOutoingCallId:[Ljava/lang/String;

    return-object p0
.end method

.method public getLastCmcSendTime()[Ljava/lang/String;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcSendTime:[Ljava/lang/String;

    return-object p0
.end method

.method public getP2pCommandListener()Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandListener:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;

    return-object p0
.end method

.method public getP2pCommandMsgSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    return-object p0
.end method

.method public getP2pSipHistorySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/SipMsg;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    return-object p0
.end method

.method public getSupportDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 471
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 484
    :pswitch_0
    const-string v1, "Received EVT_CMC_P2P_SIP_DELAY_CHECK_TIMER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 486
    const-string/jumbo v0, "sid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    const-string v1, "method"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    const-string/jumbo v2, "time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 490
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->removeP2pCommandMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 492
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->resetConnection()V

    .line 493
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->getBuilder()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    const/16 v0, 0x66

    .line 494
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setEventType(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    const/16 v0, 0x3e9

    .line 495
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setReason(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mDateFormatOfCmcSendTime:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 496
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setCmcSendTime(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    .line 497
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->build()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;

    move-result-object p1

    const v0, 0x7000000c

    .line 498
    const-string/jumbo v1, "tx, 102,1001"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 499
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->sendP2pCommand(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 480
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->onSipOutgoingMessageEvent(Landroid/os/Bundle;)V

    goto :goto_0

    .line 474
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 475
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->onSipIncomingMessageEvent(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mCmcMediaIntf:Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    const/16 v1, 0x25

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public onSipIncomingMessageEvent(Landroid/os/Bundle;)V
    .locals 3

    .line 209
    const-string/jumbo v0, "phoneId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 210
    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rawContents"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/sec/internal/constants/ims/SipMsg;->from(Ljava/lang/String;Z[B)Lcom/sec/internal/constants/ims/SipMsg;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isWellFormed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSipMessageEvent: Wrong SIP message! SIP Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string v1, "Unknown!"

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v1

    .line 217
    instance-of v2, v1, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    if-eqz v2, :cond_1

    .line 218
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->processSipRequestMessage(ILcom/sec/internal/constants/ims/SipMsg;)V

    goto :goto_0

    .line 219
    :cond_1
    instance-of v1, v1, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    if-eqz v1, :cond_2

    .line 220
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->processSipResponseMessage(ILcom/sec/internal/constants/ims/SipMsg;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSipOutgoingMessageEvent(Landroid/os/Bundle;)V
    .locals 6

    .line 225
    const-string/jumbo v0, "phoneId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 226
    const-string v1, "message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rawContents"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/sec/internal/constants/ims/SipMsg;->from(Ljava/lang/String;Z[B)Lcom/sec/internal/constants/ims/SipMsg;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isWellFormed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSipMessageEvent: Wrong SIP message! SIP Message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string v1, "Unknown!"

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v1

    .line 234
    instance-of v3, v1, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    if-nez v3, :cond_1

    return-void

    .line 238
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCmcSendTime()Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->isProcessingSipMsgNeeded(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 243
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sipMsg sendTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCmcSendTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->getBuilder()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object v4

    const/16 v5, 0x65

    .line 245
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setEventType(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object v4

    .line 246
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getSessionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setSessionId(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 247
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setState(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object v4

    .line 248
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setMethod(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object v1

    .line 249
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCmcSendTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setCmcSendTime(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->build()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;

    move-result-object v1

    .line 251
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->sendP2pCommand(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phoneId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Call-ID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mLastCmcOutoingCallId:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    aput-object p1, v1, v0

    .line 257
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result p1

    if-nez p1, :cond_4

    .line 258
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getRegiEventNotifyHostInfo()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->startP2pDiscovery(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public removeOldP2pSipHistoryAndCommand(I)V
    .locals 3

    .line 455
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOldP2pSipHistoryAndCommand, mP2pSipHistories size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pSipHistorySet:Ljava/util/Set;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->removeP2pMsgSet(Ljava/util/Set;Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;I)V

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeOldP2pSipHistoryAndCommand, mP2pCommandMsgSet size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandMsgSet:Ljava/util/Set;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->removeP2pMsgSet(Ljava/util/Set;Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$messageDate;I)V

    return-void
.end method

.method public resetConnection()V
    .locals 5

    .line 307
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 309
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mCmcServiceHelper:Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcPhoneId()I

    move-result v1

    invoke-interface {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 312
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    .line 313
    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetConnection, cmcType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " handle "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " phoneId "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcPhoneId()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    .line 316
    sget-object p0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;->EVENT_CALL_CMC_P2P_COMMAND:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V

    :cond_2
    return-void
.end method

.method public sendP2pCommand(II)V
    .locals 1

    .line 422
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->getBuilder()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setEventType(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    .line 424
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setReason(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mDateFormatOfCmcSendTime:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 425
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->setCmcSendTime(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->build()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;

    move-result-object p1

    .line 427
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->sendP2pCommand(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V

    return-void
.end method

.method public sendP2pCommand(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V
    .locals 7

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v1

    const-string/jumbo v2, "urn:duid:"

    if-eqz v1, :cond_0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->getSupportDevices()Ljava/util/Collection;

    move-result-object v1

    .line 269
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 271
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P2P list size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineOwnerDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 274
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mCmcServiceHelper:Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;->getActiveSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 275
    iget v6, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    if-ne v6, v5, :cond_2

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda1;-><init>()V

    .line 280
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda2;-><init>()V

    .line 281
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 282
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 278
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 284
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda3;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda4;-><init>()V

    .line 286
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 287
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 284
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "do not send p2p command because targetDeviceIdList is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 296
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendP2pCommand, event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mReason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", targetDeviceIdList size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->makeJsonP2pMessage()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->sendCommand(Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 302
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setNsdWrapper(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    return-void
.end method

.method public setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 98
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-nez p0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V

    return-void
.end method

.method public startDiscovery(Ljava/util/List;Landroid/os/Handler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    const-string v1, " hostList "

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pDiscoveryResultHandler:Landroid/os/Handler;

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v2, 0x1e

    invoke-virtual {p0, p2, v2, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startDiscovery(Landroid/os/Handler;ILjava/util/ArrayList;)I

    move-result p0

    .line 144
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDiscovery result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_1
    :goto_0
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDiscovery fail : mNsd "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startP2p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 106
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p isIPv6 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsIPv6 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mIsIPv6:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mIsIPv6:Z

    if-eq v1, p3, :cond_2

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p lineId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startP2p deviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 111
    sget-object v1, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV6_GLOBAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV4_LOCAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    .line 112
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startP2p ipType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {v4, p1, p2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    .line 114
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pCommandListener:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;

    invoke-virtual {v2, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->setCommandListener(Lcom/samsung/android/cmcp2phelper/CommandListener;)V

    .line 116
    :cond_2
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mIsIPv6:Z

    .line 117
    const-string/jumbo p1, "start Nsd"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->start()V

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

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mP2pDiscoveryResultHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 129
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startDiscovery fail mP2pDiscoveryResultHandler not registered"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->startDiscovery(Ljava/util/List;Landroid/os/Handler;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->mNsd:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->stop()V

    return-void
.end method
