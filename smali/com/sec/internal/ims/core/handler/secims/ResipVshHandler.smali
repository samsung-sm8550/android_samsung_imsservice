.class public Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;
.super Lcom/sec/internal/ims/core/handler/VshHandler;
.source "ResipVshHandler.java"


# static fields
.field private static final EVENT_ACCEPT_SESSION_DONE:I = 0x65

.field private static final EVENT_ACCEPT_VSH_SESSION:I = 0x1

.field private static final EVENT_CANCEL_SESSION_DONE:I = 0x68

.field private static final EVENT_CANCEL_VSH_SESSION:I = 0x3

.field private static final EVENT_REJECT_SESSION_DONE:I = 0x66

.field private static final EVENT_REJECT_VSH_SESSION:I = 0x2

.field private static final EVENT_RESET_VIDEO_DISPLAY:I = 0x7

.field private static final EVENT_SET_VIDEO_DISPLAY:I = 0x6

.field private static final EVENT_SET_VSH_PHONE_ORIENTATION:I = 0x5

.field private static final EVENT_STACK_NOTIFY:I = 0x3e8

.field private static final EVENT_START_SESSION_DONE:I = 0x64

.field private static final EVENT_START_VSH_SESSION:I = 0x0

.field private static final EVENT_STOP_SESSION_DONE:I = 0x67

.field private static final EVENT_STOP_VSH_SESSION:I = 0x4

.field private static final EVENT_SWITCH_CAMERA:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "ResipVshHandler"


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mSveManager:Lcom/sec/sve/SecVideoEngineManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/VshHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    .line 91
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 92
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 93
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 98
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v0, 0x3e8

    .line 100
    invoke-virtual {p3, p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerVshEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    new-instance p1, Lcom/sec/sve/SecVideoEngineManager;

    new-instance p3, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;)V

    invoke-direct {p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;-><init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    .line 114
    invoke-virtual {p1}, Lcom/sec/sve/SecVideoEngineManager;->connectService()V

    return-void
.end method

.method private getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 4

    .line 550
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 551
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserAgent() of SIM slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 554
    const-string/jumbo v1, "vs"

    invoke-interface {p0, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 7

    .line 208
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_0

    .line 209
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;

    .line 218
    new-instance v6, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;->sessionId()J

    move-result-wide v0

    long-to-int v1, v0

    .line 219
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshIncomingSession;->remoteUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;-><init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIncomingSessionNotify: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v6, v0}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 1

    .line 192
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 194
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleIncomingSessionNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4269
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSessionEstablishedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 3

    .line 227
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x45

    if-eq v0, v1, :cond_0

    .line 228
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;

    .line 234
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;->sessionId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 235
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionEstablished;->resolution()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToVshResolution(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/VshResolution;)V

    .line 237
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIncomingSessionNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private handleSessionTerminatedNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 3

    .line 243
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    .line 244
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;

    .line 250
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;->sessionId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 251
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/VshSessionTerminated;->reason()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    .line 253
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSessionTerminatedNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private onAcceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V
    .locals 5

    .line 338
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcceptVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mSessionId:I

    .line 342
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 344
    const-string p0, "UA not found."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    if-eqz p0, :cond_0

    .line 346
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 348
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind network for VSH "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/sve/SecVideoEngineManager;->bindToNetwork(Landroid/net/Network;)V

    .line 358
    :cond_2
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 360
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshAcceptSession;->startRequestVshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, v1

    .line 361
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshAcceptSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 362
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshAcceptSession;->endRequestVshAcceptSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 364
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x44e

    .line 365
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x64

    .line 366
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 367
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 368
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    const/16 v3, 0x65

    .line 370
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;->mCallback:Landroid/os/Message;

    .line 371
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 370
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private onCancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 4

    .line 395
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCancelVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    .line 398
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 399
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->startRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, v0

    .line 400
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 401
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->endRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 402
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x44f

    .line 403
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x65

    .line 404
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 405
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 406
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    const/16 v3, 0x68

    .line 408
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 409
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 408
    invoke-direct {p0, v2, v1, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private onRejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 4

    .line 375
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRejectVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mSessionId:I

    .line 378
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 380
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->startRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, v0

    .line 381
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 382
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->endRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 384
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x44f

    .line 385
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 386
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x65

    .line 387
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 388
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    const/16 v3, 0x66

    .line 390
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 391
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 390
    invoke-direct {p0, v2, v1, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private onResetVshVideoDisplay()V
    .locals 0

    .line 0
    return-void
.end method

.method private onSetOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
    .locals 3

    .line 432
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler$2;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$VshOrientation:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 448
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, v0}, Lcom/sec/sve/SecVideoEngineManager;->setOrientation(I)V

    return-void
.end method

.method private onSetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 3

    .line 452
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mViewType:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;->LOCAL:Lcom/sec/internal/ims/servicemodules/csh/event/VshViewType;

    if-ne v0, v1, :cond_0

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mSessionId:I

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getWindowHandle()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    .line 454
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getColor()I

    move-result v2

    .line 453
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewSurface(ILandroid/view/Surface;I)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mSessionId:I

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getWindowHandle()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mVideoDisplay:Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;

    .line 457
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->getColor()I

    move-result v2

    .line 456
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/sve/SecVideoEngineManager;->setDisplaySurface(ILandroid/view/Surface;I)V

    .line 460
    :goto_0
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    return-void
.end method

.method private onStartVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V
    .locals 5

    .line 301
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 305
    const-string p0, "UA not found."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->mCallback:Landroid/os/Message;

    if-eqz p0, :cond_0

    .line 307
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    const/4 v1, -0x1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 309
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind network for VSH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/sve/SecVideoEngineManager;->bindToNetwork(Landroid/net/Network;)V

    .line 319
    :cond_2
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 320
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->mReceiver:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 322
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->startRequestVshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 323
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 324
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->addRemoteUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 325
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStartSession;->endRequestVshStartSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 327
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x44d

    .line 328
    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x63

    .line 329
    invoke-static {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 330
    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 331
    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    const/16 v3, 0x64

    .line 333
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshStartSessionParams;->mCallback:Landroid/os/Message;

    .line 334
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 333
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private onStopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 4

    .line 413
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopVshSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mSessionId:I

    .line 416
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 417
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->startRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v2, v0

    .line 418
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 419
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestVshStopSession;->endRequestVshStopSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 420
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x44f

    .line 421
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x65

    .line 422
    invoke-static {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 423
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 424
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    const/16 v3, 0x67

    .line 426
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 427
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 426
    invoke-direct {p0, v2, v1, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private onSwitchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->switchCamera()V

    .line 470
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;->mCallback:Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 1

    .line 558
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 560
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 563
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method

.method private translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    .line 270
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 268
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 266
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 264
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0

    .line 262
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0
.end method

.method private translateToVshResolution(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 296
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 294
    :pswitch_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 292
    :pswitch_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 290
    :pswitch_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 288
    :pswitch_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 286
    :pswitch_4
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->CIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 284
    :pswitch_5
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->VGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 282
    :pswitch_6
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QVGA:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 280
    :pswitch_7
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->QCIF:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    .line 278
    :pswitch_8
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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


# virtual methods
.method public acceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 485
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1

    const/4 v0, 0x3

    .line 495
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 123
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 187
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 174
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 175
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 176
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;

    .line 177
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne p0, v0, :cond_0

    .line 178
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onSuccess()V

    goto/16 :goto_0

    .line 180
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;->onFailure()V

    goto/16 :goto_0

    .line 162
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 163
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;

    .line 164
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 166
    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->sessionId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 167
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CshGeneralResponse;->error()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->translateToCshResult(I)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)V

    const/4 p0, 0x0

    .line 166
    invoke-static {p1, v1, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 168
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 157
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onSwitchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V

    goto :goto_0

    .line 153
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onResetVshVideoDisplay()V

    goto :goto_0

    .line 149
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onSetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    goto :goto_0

    .line 145
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onSetOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    goto :goto_0

    .line 141
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onStopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    goto :goto_0

    .line 137
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onCancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    goto :goto_0

    .line 133
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onRejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V

    goto :goto_0

    .line 129
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onAcceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V

    goto :goto_0

    .line 125
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->onStartVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerForVshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 520
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForVshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForVshSessionTerminated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 540
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public rejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
    .locals 1

    const/4 v0, 0x2

    .line 490
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 1

    const/4 v0, 0x7

    .line 515
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
    .locals 1

    const/4 v0, 0x5

    .line 475
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 1

    const/4 v0, 0x6

    .line 510
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
    .locals 1

    const/4 v0, 0x4

    .line 500
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public switchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V
    .locals 1

    const/16 v0, 0x8

    .line 505
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterForVshIncomingSession(Landroid/os/Handler;)V
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVshSessionEstablished(Landroid/os/Handler;)V
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVshSessionTerminated(Landroid/os/Handler;)V
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVshHandler;->mSessionTerminatedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
