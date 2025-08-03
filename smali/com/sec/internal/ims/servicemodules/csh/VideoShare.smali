.class public Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
.super Lcom/sec/internal/helper/StateMachine;
.source "VideoShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;


# static fields
.field private static final DEFAULT_WARNNING_TIME_GAP:I = 0x1e

.field private static final EVENT_ACCEPT_INCOMING_SESSION:I = 0x5

.field private static final EVENT_ACCEPT_SESSION_DONE:I = 0x6

.field private static final EVENT_CANCEL_BY_USER_SESSION:I = 0x7

.field private static final EVENT_INCOMING_SESSION_DONE:I = 0x4

.field private static final EVENT_MAX_DURATION_TIME:I = 0xa

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x8

.field private static final EVENT_SESSION_FAILED:I = 0xb

.field private static final EVENT_SESSION_TERMINATED_BY_STACK:I = 0x9

.field private static final EVENT_SET_PHONE_ORIENTATION:I = 0x3

.field private static final EVENT_START_OUTGOING_SESSION:I = 0x1

.field private static final EVENT_START_SESSION_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "VideoShare"


# instance fields
.field private final mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

.field private mDefaultState:Lcom/sec/internal/helper/State;

.field private mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

.field private mInProgressApproachMaxTimeState:Lcom/sec/internal/helper/State;

.field private mInProgressState:Lcom/sec/internal/helper/State;

.field private mIncomingPendingState:Lcom/sec/internal/helper/State;

.field private mInitialState:Lcom/sec/internal/helper/State;

.field private mMaxDurationIntent:Landroid/app/PendingIntent;

.field private mOutgoingPendingState:Lcom/sec/internal/helper/State;

.field private mPreTerminatedLocalState:Lcom/sec/internal/helper/State;

.field private mPreTerminatedRemoteState:Lcom/sec/internal/helper/State;

.field private mSessionId:I

.field private mTerminatedState:Lcom/sec/internal/helper/State;

.field private mVshModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field private mWarningTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInProgressApproachMaxTimeState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInProgressApproachMaxTimeState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInProgressState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIncomingPendingState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mIncomingPendingState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutgoingPendingState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mOutgoingPendingState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreTerminatedLocalState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mPreTerminatedLocalState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreTerminatedRemoteState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mPreTerminatedRemoteState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTerminatedState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mTerminatedState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVshModule(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mVshModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSessionId(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mSessionId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoStopSession(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->doStopSession()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartDurationTimer(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->startDurationTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopDurationTimer(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->stopDurationTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vsh Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mMaxDurationIntent:Landroid/app/PendingIntent;

    .line 293
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$DefaultState;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$DefaultState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare$DefaultState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 352
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInitialState:Lcom/sec/internal/helper/State;

    .line 414
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mOutgoingPendingState:Lcom/sec/internal/helper/State;

    .line 506
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mIncomingPendingState:Lcom/sec/internal/helper/State;

    .line 563
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInProgressState:Lcom/sec/internal/helper/State;

    .line 609
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInProgressApproachMaxTimeState:Lcom/sec/internal/helper/State;

    .line 640
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedRemoteState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedRemoteState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedRemoteState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mPreTerminatedRemoteState:Lcom/sec/internal/helper/State;

    .line 670
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$PreTerminatedLocalState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mPreTerminatedLocalState:Lcom/sec/internal/helper/State;

    .line 696
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$TerminatedState-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mTerminatedState:Lcom/sec/internal/helper/State;

    .line 105
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mVshModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 106
    invoke-static {}, Lcom/sec/internal/helper/AtomicGenerator;->generateUniqueLong()J

    move-result-wide v0

    iput-wide v0, p3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 107
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    .line 108
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    .line 109
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->init()V

    return-void
.end method

.method private doStopSession()V
    .locals 3

    .line 702
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->stopDurationTimer()V

    .line 703
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mSessionId:I

    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->stopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mOutgoingPendingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mIncomingPendingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInProgressState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInProgressApproachMaxTimeState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mTerminatedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mPreTerminatedRemoteState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mPreTerminatedLocalState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 286
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private startDurationTimer()V
    .locals 8

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mVshModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getMaxDurationTime()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 242
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mWarningTime:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 244
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mWarningTime:I

    .line 247
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start VS MAX DURATION Timer Warning Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mWarningTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mWarningTime:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mMaxDurationIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mVshModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 251
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mWarningTime:I

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v3, v2, v4

    const-wide/16 v5, 0x7530

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mMaxDurationIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    .line 252
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private stopDurationTimer()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mMaxDurationIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop VS MAX DURATION Timer #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mVshModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 266
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 267
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mMaxDurationIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mMaxDurationIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptIncomingSession()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public acceptIncomingSession(I)V
    .locals 1

    const/4 v0, 0x5

    .line 212
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public cancelByUserSession()V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    return-object p0
.end method

.method public getSessionId()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mSessionId:I

    return p0
.end method

.method public incomingSessionDone()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public maxDurationTime()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sessioinEstablished(Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;Landroid/app/PendingIntent;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ResolutionTranslator;->getWidth(Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoWidth:I

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ResolutionTranslator;->getHeight(Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->videoHeight:I

    .line 178
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mMaxDurationIntent:Landroid/app/PendingIntent;

    const/16 p2, 0x8

    .line 180
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sessionFailed()V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sessionTerminatedByStack()V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
    .locals 1

    const/4 v0, 0x3

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSessionId(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->mSessionId:I

    return-void
.end method

.method public startQutgoingSession()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
