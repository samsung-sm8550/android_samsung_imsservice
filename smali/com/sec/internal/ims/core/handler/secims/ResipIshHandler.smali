.class public Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;
.super Lcom/sec/internal/ims/core/handler/IshHandler;
.source "ResipIshHandler.java"


# static fields
.field private static final EVENT_ACCEPT_ISH_SESSION:I = 0x1

.field private static final EVENT_ACCEPT_SESSION_DONE:I = 0x66

.field private static final EVENT_CANCEL_ISH_SESSION:I = 0x3

.field private static final EVENT_CANCEL_SESSION_DONE:I = 0x68

.field private static final EVENT_REJECT_ISH_SESSION:I = 0x2

.field private static final EVENT_REJECT_SESSION_DONE:I = 0x67

.field private static final EVENT_STACK_NOTIFY:I = 0x3e8

.field private static final EVENT_START_ISH_SESSION:I = 0x0

.field private static final EVENT_START_SESSION_DONE:I = 0x65

.field private static final EVENT_STOP_ISH_SESSION:I = 0x4

.field private static final EVENT_STOP_SESSION_DONE:I = 0x69

.field private static final LOG_TAG:Ljava/lang/String; = "ResipIshHandler"


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/IshHandler;-><init>(Landroid/os/Looper;)V

    .line 81
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 82
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 83
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 84
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 85
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 92
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 93
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    const/16 p2, 0x3e8

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerIshEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 501
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 502
    const-string v0, "is"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 4

    .line 356
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 357
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleIncomingSessionNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;

    .line 362
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->fileName()Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->size()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->contentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->sessionId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 366
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshIncomingSession;->remoteUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)V

    .line 368
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingSessionNotify: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v3, v1, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 1

    .line 180
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleTransferProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e81
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 4

    .line 374
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    .line 375
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSessionEstablishedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;

    .line 381
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSessionEstablishedNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;->error()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;->error()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v0, v1, :cond_1

    .line 384
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;

    .line 385
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionEstablished;->sessionId()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IshSessionEstablishedEvent;-><init>(I)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 384
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_1
    return-void
.end method

.method private handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 6

    .line 391
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    .line 392
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSessionTerminatedNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;

    .line 398
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSessionTerminatedNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->reason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->reason()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v0

    .line 400
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 401
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;

    .line 402
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->sessionId()J

    move-result-wide v3

    long-to-int p1, v3

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferCompleteEvent;-><init>(I)V

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 401
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v1, Lcom/sec/internal/helper/AsyncResult;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;

    .line 405
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshSessionTerminated;->sessionId()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-direct {v3, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferFailedEvent;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    invoke-direct {v1, v2, v3, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 404
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    :goto_0
    return-void
.end method

.method private handleTransferProgressNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 5

    .line 412
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    .line 413
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleTransferProgressNotify(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 416
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;

    .line 418
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTransferProgressNotify: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->sessionId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->transferred()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->total()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;

    .line 422
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->sessionId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/IshTransferProgress;->transferred()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshTransferProgressEvent;-><init>(IJ)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 421
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private onAcceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V
    .locals 8

    .line 257
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcceptIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mSessionId:I

    .line 260
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    const/4 v2, -0x1

    if-nez v7, :cond_0

    .line 262
    const-string/jumbo p0, "onStartIshSession: ISH UA not registered"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {p1, v2, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    return-void

    .line 267
    :cond_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 270
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 274
    :goto_0
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->startRequestIshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v5, v1

    .line 275
    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq v0, v2, :cond_2

    .line 277
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->addFilePath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 279
    :cond_2
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshAcceptSession;->endRequestIshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 281
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x3ea

    .line 282
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x5f

    .line 283
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 284
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 285
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v0, 0x65

    .line 286
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    .line 287
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x3ea

    move-object v2, p0

    .line 286
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onCancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 8

    .line 313
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCancelIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 317
    const-string/jumbo p0, "onStartIshSession: ISH UA not registered"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 321
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->startRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 322
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 323
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->endRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 325
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x3eb

    .line 326
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x60

    .line 327
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 328
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 329
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v0, 0x69

    .line 330
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 331
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x3eb

    move-object v2, p0

    .line 330
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onRejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 8

    .line 291
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRejectIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 294
    const-string/jumbo p0, "onStartIshSession: ISH UA not registered"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :cond_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 298
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->startRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 299
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mSessionId:I

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 301
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->endRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 303
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x3eb

    .line 304
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x60

    .line 305
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 306
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 307
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v0, 0x69

    .line 308
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 309
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x3eb

    move-object v2, p0

    .line 308
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onStartIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V
    .locals 8

    .line 199
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartIshSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    const/4 v1, -0x1

    if-nez v7, :cond_0

    .line 203
    const-string/jumbo p0, "onStartIshSession: ISH UA not registered"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->mCallback:Landroid/os/Message;

    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    return-void

    .line 208
    :cond_0
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mfile:Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 210
    const-string/jumbo p0, "onStartIshSession: path is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_1
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 220
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->mReceiver:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 221
    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    .line 230
    :goto_1
    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 232
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->startRequestIshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 233
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    if-eq v3, v1, :cond_4

    .line 235
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addRemoteUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_4
    if-eq v0, v1, :cond_5

    .line 238
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    if-eq v2, v1, :cond_6

    .line 241
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addFilePath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 243
    :cond_6
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;->mfile:Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->getSize()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 244
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStartSession;->endRequestIshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 246
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x3e9

    .line 247
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x5e

    .line 248
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 249
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 250
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v0, 0x65

    .line 251
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->mCallback:Landroid/os/Message;

    .line 252
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x3e9

    move-object v2, p0

    .line 251
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onStopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 8

    .line 335
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopIshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 338
    const-string/jumbo p0, "onStartIshSession: ISH UA not registered"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 341
    :cond_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 342
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->startRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 343
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 344
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestIshStopSession;->endRequestIshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 346
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x3eb

    .line 347
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x60

    .line 348
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 349
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 350
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v0, 0x69

    .line 351
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 352
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x3eb

    move-object v2, p0

    .line 351
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    if-nez p5, :cond_0

    .line 508
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 511
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method

.method private translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 175
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 173
    :pswitch_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 171
    :pswitch_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 169
    :pswitch_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 167
    :pswitch_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 165
    :pswitch_4
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 163
    :pswitch_5
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 161
    :pswitch_6
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public acceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 432
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1

    const/4 v0, 0x3

    .line 442
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 102
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 153
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 138
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 139
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 140
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 141
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne p0, v0, :cond_0

    .line 142
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onFailure()V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 126
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 127
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_7

    .line 129
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->sessionId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 130
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 p0, 0x0

    .line 129
    invoke-static {p1, v1, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 131
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 149
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onStopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    goto :goto_0

    .line 116
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onCancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onRejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V

    goto :goto_0

    .line 108
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onAcceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V

    goto :goto_0

    .line 104
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->onStartIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerForIshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 492
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForIshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 452
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForIshTransferComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForIshTransferFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForIshTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 482
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public rejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 1

    const/4 v0, 0x2

    .line 437
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 427
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1

    const/4 v0, 0x4

    .line 447
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterForIshIncomingSession(Landroid/os/Handler;)V
    .locals 0

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIshSessionEstablished(Landroid/os/Handler;)V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIshTransferComplete(Landroid/os/Handler;)V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferCompleteRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIshTransferFailed(Landroid/os/Handler;)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIshTransferProgress(Landroid/os/Handler;)V
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipIshHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
