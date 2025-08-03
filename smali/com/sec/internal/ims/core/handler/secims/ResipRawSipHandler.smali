.class public Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;
.super Lcom/sec/internal/ims/core/handler/RawSipHandler;
.source "ResipRawSipHandler.java"


# static fields
.field private static final EVENT_SIP_INCOMING_MESSAGE:I = 0x64

.field private static final EVENT_SIP_OUTGOING_MESSAGE:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "ResipRawSipHandler"


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

.field private final mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/RawSipHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 24
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    .line 25
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    .line 31
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 81
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 86
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 36
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 37
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRawSipIncomingEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRawSipOutgoingEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public openSipDialog(Z)V
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->openSipDialog(Z)V

    return-void
.end method

.method public registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 44
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForIncomingMessages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    .line 50
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForOutgoingMessages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)Z
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 66
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendSip: UserAgent not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendSip(ILjava/lang/String;Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterForEvent(Landroid/os/Handler;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRawSipHandler;->mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
