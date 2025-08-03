.class public Lcom/sec/internal/ims/core/RawSipManager;
.super Ljava/lang/Object;
.source "RawSipManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRawSipSender;


# static fields
.field static final EVENT_SIP_MESSAGE_RECEIVED:I = 0x1

.field static final EVENT_SIP_MESSAGE_SENT:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "RawSipManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;


# direct methods
.method public static synthetic $r8$lambda$A11lQs6O50yy8RKtqqxVTPyjc_A(Lcom/sec/internal/ims/core/RawSipManager;Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RawSipManager;->isNonEmergency(Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CbDHHDpSHo3gGZ5hqXeiTq9dJgA(ILcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RawSipManager;->lambda$getRegId$0(ILcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HjjbItMzDON8I3Jray8uFZiTNIo(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RawSipManager;->lambda$isNonEmergency$1(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gd9uBaILUtuukjah8XClagWYKc0(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RawSipManager;->lambda$isNonCmc$2(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$knMlyZ1fKQfS7GAGeGQLFce5O-4(Lcom/sec/internal/ims/core/RawSipManager;Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RawSipManager;->isNonCmc(Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/core/RawSipManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getRegId(I)I
    .locals 2

    .line 76
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda0;-><init>(I)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/RawSipManager;)V

    .line 79
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/RawSipManager;)V

    .line 80
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ImsRegistration;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegId: Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RawSipManager"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private isNonCmc(Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 92
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda4;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isNonEmergency(Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 87
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda3;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getRegId$0(ILcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 78
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isNonCmc$2(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 93
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isNonEmergency$1(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public init(Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V
    .locals 3

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/core/RawSipManager;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    .line 40
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RawSipMgrHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RawSipManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 41
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 42
    new-instance p1, Lcom/sec/internal/ims/core/RawSipManager$1;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RawSipManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/core/RawSipManager$1;-><init>(Lcom/sec/internal/ims/core/RawSipManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RawSipManager;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/core/RawSipManager;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/sec/internal/ims/core/RawSipManager;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RawSipManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-interface {p1, p0, v0, v2}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method protected onSipMessageEvent(IILjava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-static {p3, p1, p4}, Lcom/sec/internal/constants/ims/SipMsg;->from(Ljava/lang/String;Z[B)Lcom/sec/internal/constants/ims/SipMsg;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isWellFormed()Z

    move-result p3

    if-nez p3, :cond_1

    .line 58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onSipMessageEvent: Wrong SIP message! SIP Message = "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p3, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/sec/internal/constants/ims/SipMsg$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const-string p3, "Unknown!"

    invoke-virtual {p1, p3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    const-string p1, "RawSipManager"

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RawSipManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 64
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/google/SecImsNotifier;->notifySipMessage(ILcom/sec/internal/constants/ims/SipMsg;)V

    :cond_2
    return-void
.end method

.method public send(ILjava/lang/String;Landroid/os/Message;)V
    .locals 3

    .line 70
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RawSipManager;->getRegId(I)I

    move-result v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send: regId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RawSipManager"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/core/RawSipManager;->mRawSipInterface:Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;

    invoke-interface {p0, v0, p2, p3}, Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;->sendSip(ILjava/lang/String;Landroid/os/Message;)Z

    return-void
.end method
