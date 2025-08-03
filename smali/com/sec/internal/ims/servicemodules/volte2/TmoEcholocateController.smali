.class public Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;
.super Landroid/os/Handler;
.source "TmoEcholocateController.java"


# static fields
.field private static final EVENT_CALL_STATUS_CHANGE_EVENT:I = 0x4

.field private static final EVENT_ECHOLOCATE_EMERGENCY_TIMER_STATE_RECEIVED:I = 0x7

.field private static final EVENT_ECHOLOCATE_HANDOVER_RECEIVED:I = 0x8

.field private static final EVENT_ECHOLOCATE_RECEIVED:I = 0x1

.field protected static final EVENT_ECHOLOCATE_REMOVE_CALLID_CACHE:I = 0x3

.field protected static final EVENT_ECHOLOCATE_SIP_RECEIVED:I = 0x2

.field private static final EVENT_HANDOVER_SUCCESS:I = 0x5

.field private static final EVENT_PDN_DISCONNECT:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "Echolocate_Controller"


# instance fields
.field protected mCallIDList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallOffhook:Z

.field private mCallState:I

.field private final mContext:Landroid/content/Context;

.field private mDiffTime:J

.field private mEPSFBsuccess:[Z

.field protected mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

.field protected mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

.field private mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private mPhoneCount:I

.field private mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

.field private mSalesCode:Ljava/lang/String;

.field private mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallOffhook(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallOffhook:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEPSFBsuccess(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSignalStrength(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;)[Lcom/sec/internal/helper/os/SignalStrengthWrapper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallOffhook(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallOffhook:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDiffTime(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mDiffTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IPdnController;ILandroid/os/Looper;)V
    .locals 2

    .line 122
    invoke-direct {p0, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p5, 0x0

    .line 53
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    .line 55
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 59
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    .line 60
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    .line 61
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    const/4 p5, 0x1

    .line 64
    iput p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneCount:I

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mDiffTime:J

    const/4 p5, 0x0

    .line 66
    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallOffhook:Z

    .line 123
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 124
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getMiscHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    move-result-object p5

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    .line 126
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneCount:I

    .line 128
    new-array p5, p4, [Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    .line 129
    new-array p4, p4, [Z

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    .line 132
    new-instance p4, Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    const/16 p5, 0x120

    invoke-direct {p4, p1, p5}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    .line 133
    new-instance p4, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-direct {p4, p1, p0, p3, p2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;Lcom/sec/internal/interfaces/ims/core/IPdnController;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;)V

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    .line 134
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-direct {p2, p1, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    return-void
.end method

.method private handleEcholocateEventReceived(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 8

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkSecurity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;

    .line 246
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->signalMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    if-ne v0, v1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getSignalData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 249
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall()Z

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getPhoneIdFromSessionId(I)I

    move-result p1

    .line 251
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkType(IZ)Ljava/lang/String;

    move-result-object v6

    .line 253
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    .line 254
    invoke-virtual {v2, p1, v0, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    .line 255
    invoke-virtual {v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 256
    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getType()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;->rtpMsg:Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateType;

    if-ne v0, v1, :cond_2

    .line 258
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent;->getRtpData()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;

    move-result-object p1

    .line 259
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendTmoEcholocateRTP(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateRtpMessage;)V

    goto :goto_0

    .line 262
    :cond_1
    const-string p0, "Echolocate_Controller"

    const-string p1, "Do not broadcast. ICDV or Signature key is wrong"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private handleRemoveCallId(Ljava/lang/String;)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "Echolocate_Controller"

    const-string v1, "Remove Call id on cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private setSalesCode()V
    .locals 3

    .line 412
    const-string v0, "Echolocate_Controller"

    :try_start_0
    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    const-string v1, "Problem getting sales code!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 417
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sales_code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected getCallState()I
    .locals 0

    .line 391
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    return p0
.end method

.method protected getDiffTime()J
    .locals 2

    .line 403
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mDiffTime:J

    return-wide v0
.end method

.method protected getEPSFBsuccess(I)Z
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEPSFBsuccess["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    aget-boolean v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Echolocate_Controller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getEchoCallId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallIDList:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method protected getPhoneCount()I
    .locals 0

    .line 395
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneCount:I

    return p0
.end method

.method protected getSalescode()Ljava/lang/String;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    return-object p0
.end method

.method protected getSignalStrength(I)Lcom/sec/internal/helper/os/SignalStrengthWrapper;
    .locals 0

    .line 437
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSignalStrength:[Lcom/sec/internal/helper/os/SignalStrengthWrapper;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public handleDedicatedEventAfterHandover(I)V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkSecurity(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Echolocate_Controller"

    if-nez v0, :cond_0

    .line 377
    const-string p0, "handleDedicatedEventAfterHandover - Do not broadcast."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 381
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    const-string p0, "EVENT_ECHOLOCATE_HANDOVER_RECEIVED requested, return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 386
    :cond_1
    const-string v2, "handleDedicatedEventAfterHandover wait 2 seconds"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public handleEcholocateSipReceived(Landroid/os/Message;)V
    .locals 5

    .line 165
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;

    .line 166
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;->getSignalMsg()Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getOrigin()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getCseq()Ljava/lang/String;

    move-result-object v2

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEcholocateSipReceived: origin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cseq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Echolocate_Controller"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v3, "RECEIVED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "REGISTER"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->getSessionid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 175
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByRegId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController$$ExternalSyntheticLambda0;-><init>()V

    .line 176
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    if-nez v1, :cond_0

    .line 179
    const-string p0, "handleEcholocateSipReceived: No VoLTE registration. Return.."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 185
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEcholocateSipReceived: isEpdgRegistered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEpdgCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateSignalMessage;->isEpdgCall()Z

    move-result v0

    if-eq v0, v1, :cond_3

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendTmoEcholocateHandoverFail(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;)V

    goto :goto_1

    .line 191
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendTmoEcholocateSignallingMSG(Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EchoSignallingIntentData;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public handleEmergencyCallTimerState(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->checkSecurity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const-string v0, "Echolocate_Controller"

    const-string/jumbo v1, "sendEmergencyCallTimerState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Echolocate_Controller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 238
    const-string p0, "This message is not supported"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 234
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendDedicatedEventAfterHandover(I)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendEmergencyCallTimerStateMSG(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateEmergencyMessage;)V

    goto :goto_0

    .line 228
    :pswitch_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 229
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleTmoEcholocateEPSFB(IIJ)V

    goto :goto_0

    .line 219
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;)V

    goto :goto_0

    .line 224
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendTmoEcholocateCarrierConfig(IILjava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleRemoveCallId(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleEcholocateSipReceived(Landroid/os/Message;)V

    goto :goto_0

    .line 200
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->handleEcholocateEventReceived(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleTmoEcholocateEPSFB(IIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTmoEcholocateEPSFB state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " EPSFBsuccess["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Echolocate_Controller"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getPreCallSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    .line 321
    const-string v0, "imsCallSession is not valid - STOP"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkTypeForEPSFB(I)Ljava/lang/String;

    move-result-object v9

    .line 326
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    const/4 v15, 0x0

    invoke-virtual {v5, v1, v15, v9}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 327
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getEPSFBState(I)Ljava/lang/String;

    move-result-object v8

    .line 328
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    .line 329
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v12

    .line 330
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, v1, v9, v15}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x2

    if-eq v2, v14, :cond_1

    .line 332
    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "-1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 333
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 336
    :cond_2
    new-instance v13, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    .line 338
    invoke-virtual {v6, v1, v15}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v10

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v6, v15}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v16

    move-object v6, v13

    move-object v15, v13

    move-object/from16 v13, v16

    move-object/from16 v16, v4

    move v4, v14

    move-object v14, v5

    invoke-direct/range {v6 .. v14}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    .line 341
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {v2, v1, v15}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;)V

    .line 342
    iput v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    .line 343
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    goto/16 :goto_1

    :cond_3
    const/4 v7, 0x4

    const/4 v8, 0x5

    const-wide/16 v9, 0x0

    if-eq v2, v7, :cond_6

    const/4 v7, 0x3

    if-ne v2, v7, :cond_4

    goto :goto_0

    .line 352
    :cond_4
    iget v7, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    if-ne v7, v6, :cond_8

    if-ne v2, v4, :cond_8

    .line 353
    iget-wide v11, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mDiffTime:J

    cmp-long v2, v11, v9

    if-eqz v2, :cond_5

    .line 354
    invoke-virtual {v15, v11, v12}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;->setTime(J)V

    .line 355
    iput-wide v9, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mDiffTime:J

    :cond_5
    const/4 v2, 0x0

    .line 357
    invoke-virtual {v0, v8, v1, v2, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v7, 0xc8

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    .line 359
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    aput-boolean v6, v2, v1

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set EPSFB:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setEPSFBsuccess(Z)V

    .line 362
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCellId(Ljava/lang/String;)V

    .line 364
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendPendingSignallingMSG(J)V

    goto :goto_1

    .line 345
    :cond_6
    :goto_0
    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 346
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    :cond_7
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {v2, v1, v15}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;)V

    const/4 v2, 0x0

    .line 349
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    .line 350
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    aput-boolean v2, v3, v1

    .line 351
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendPendingSignallingMSG(J)V

    :cond_8
    :goto_1
    return-void
.end method

.method public handleTmoEcholocatePSHO(IIIIJ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTmoEcholocatePSHO state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCallState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Echolocate_Controller"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getForegroundSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    if-nez v3, :cond_0

    .line 281
    const-string v0, "imsCallSession is not valid - STOP"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 285
    :cond_0
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNetworkTypeForPSHO(IIII)Ljava/lang/String;

    move-result-object v8

    .line 286
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14, v8}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getLteBand(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 287
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getPSHOState(I)Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v11

    .line 290
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v3, v1, v8, v14}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getCellId(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    .line 292
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "-1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v13, v3

    goto :goto_2

    .line 293
    :cond_2
    :goto_1
    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 296
    :goto_2
    new-instance v3, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    .line 298
    invoke-virtual {v5, v1, v14}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getNwStateSignal(IZ)Ljava/lang/String;

    move-result-object v9

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoInfo:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;

    invoke-virtual {v5, v14}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateInfo;->getTimeStamp(I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    .line 301
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;)V

    .line 302
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    goto :goto_4

    :cond_3
    const/4 v6, 0x4

    const/4 v7, 0x5

    if-eq v2, v6, :cond_5

    const/4 v6, 0x3

    if-ne v2, v6, :cond_4

    goto :goto_3

    .line 309
    :cond_4
    iget v6, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    if-ne v6, v5, :cond_7

    if-ne v2, v4, :cond_7

    .line 310
    invoke-virtual {p0, v7, v1, v14, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 311
    iput v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    goto :goto_4

    .line 304
    :cond_5
    :goto_3
    invoke-virtual {p0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 305
    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    :cond_6
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEchoBroadcaster:Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateBroadcaster;->sendDetailCallEvent(ILcom/sec/internal/ims/servicemodules/volte2/data/EcholocateEvent$EcholocateHandoverMessage;)V

    .line 308
    iput v14, v0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mCallState:I

    :cond_7
    :goto_4
    return-void
.end method

.method protected setDiffTime(J)J
    .locals 0

    .line 399
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mDiffTime:J

    return-wide p1
.end method

.method protected setEPSFBsuccess(IZ)V
    .locals 2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEPSFBsuccess["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Echolocate_Controller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mEPSFBsuccess:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public start()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;->registerForEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 139
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneCount:I

    const-string v2, "Echolocate_Controller"

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->hasListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerListener pCnt["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], subId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v2, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController$PhoneStateListenerInternal;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;I)V

    .line 147
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v3, v2, v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->setSalesCode()V

    .line 150
    const-string/jumbo p0, "start"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mMiscHandler:Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;->unregisterForEcholocateEvent(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 156
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->hasListener(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/TmoEcholocateController;->mPhoneStateManager:Lcom/sec/internal/ims/util/ImsPhoneStateManager;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterListener(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const-string p0, "Echolocate_Controller"

    const-string/jumbo v0, "stop"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
