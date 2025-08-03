.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;
.super Ljava/lang/Object;
.source "ImsCallSessionFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionFactory"

.field private static mCallIdCounter:I


# instance fields
.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field private mServiceModuleLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    return-void
.end method

.method private createCallId()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 111
    :goto_0
    sget v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    const/16 v3, 0xff

    const/4 v4, 0x1

    const-string v5, "ImsCallSessionFactory"

    if-lt v2, v3, :cond_1

    .line 112
    sput v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    if-eqz v1, :cond_0

    .line 114
    const-string p0, "All CallId is allocated, session create fail"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    move v1, v4

    .line 121
    :cond_1
    sget v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    add-int/2addr v2, v4

    sput v2, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    .line 123
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v3, v2}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v2

    if-nez v2, :cond_2

    .line 130
    sget p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    return p0

    .line 127
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mCallIdCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDefaultConfSession(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 100
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_1

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized create(Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 7

    monitor-enter p0

    if-nez p2, :cond_0

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 45
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    if-nez p3, :cond_1

    .line 47
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 52
    const-string p3, "ImsCallSessionFactory"

    const-string v0, "createImsCallSession: emergency session."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-direct {p3, v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsEmergencySession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    goto/16 :goto_2

    :cond_2
    if-nez p2, :cond_5

    if-eqz p3, :cond_5

    .line 56
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result p3

    if-nez p3, :cond_4

    sget-object p3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, p3, :cond_3

    sget-object p3, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, p3, :cond_4

    .line 58
    :cond_3
    const-string p3, "ImsCallSessionFactory"

    const-string v0, "createImsCallSession: conf call session without regi info"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    goto :goto_2

    .line 62
    :cond_4
    const-string p3, "ImsCallSessionFactory"

    const-string v0, "createImsCallSession: normal call session without regi info"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    goto :goto_2

    .line 66
    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->isDefaultConfSession(Lcom/sec/ims/ImsRegistration;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    .line 71
    :cond_6
    const-string p3, "ImsCallSessionFactory"

    const-string v0, "createImsCallSession: normal call session"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    goto :goto_2

    .line 67
    :cond_7
    :goto_1
    const-string p3, "ImsCallSessionFactory"

    const-string v0, "createImsCallSession: conference session."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mServiceModuleLooper:Landroid/os/Looper;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/volte2/ImsConfSession;-><init>(Landroid/content/Context;Lcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/ImsRegistration;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V

    .line 76
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getVolteStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;

    move-result-object v0

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 76
    invoke-virtual {p3, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->init(Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionFactory;->createCallId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_8

    .line 81
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_8
    if-eqz p2, :cond_9

    .line 84
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 85
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCmcType(I)V

    .line 86
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getVideoCrbtSupportType()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setVideoCrbtSupportType(I)V

    goto :goto_3

    :cond_9
    if-nez p2, :cond_b

    .line 88
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_a

    .line 89
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result p2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_a

    .line 90
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result p2

    const/16 v1, 0x8

    if-ne p2, v1, :cond_b

    .line 91
    :cond_a
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcType()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCmcType(I)V

    .line 93
    :cond_b
    :goto_3
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setCallId(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    monitor-exit p0

    return-object p3

    :goto_4
    monitor-exit p0

    throw p1
.end method
