.class public Lcom/sec/internal/imsphone/SecImsService;
.super Landroid/telephony/ims/ImsService;
.source "SecImsService.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "SecImsService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mImsConfigImpls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/ImsConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field mImsRegistrationImpls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/ImsRegistrationImpl;",
            ">;"
        }
    .end annotation
.end field

.field mMmTelFeatureImpls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/MmTelFeatureImpl;",
            ">;"
        }
    .end annotation
.end field

.field mRcsFeatureImpls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/RcsFeatureImpl;",
            ">;"
        }
    .end annotation
.end field

.field mSipTransports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/SipTransportImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 30
    new-instance v0, Lcom/sec/internal/imsphone/SecImsService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/sec/internal/imsphone/SecImsService$LocalBinder;-><init>(Lcom/sec/internal/imsphone/SecImsService;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mBinder:Landroid/os/IBinder;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsRegistrationImpls:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mMmTelFeatureImpls:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mRcsFeatureImpls:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsConfigImpls:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mSipTransports:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeatureForSubscription: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsService"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mMmTelFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mMmTelFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/feature/MmTelFeature;

    return-object p0

    .line 86
    :cond_0
    new-instance v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object v1, p0, Lcom/sec/internal/imsphone/SecImsService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;-><init>(Landroid/content/Context;ILjava/util/concurrent/Executor;)V

    .line 87
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mMmTelFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeatureForSubscription: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",subscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecImsService"

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/sec/internal/imsphone/SecImsService;->mMmTelFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mMmTelFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/feature/MmTelFeature;

    return-object p0

    .line 74
    :cond_0
    new-instance p2, Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {p2, v0, p1, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;-><init>(Landroid/content/Context;ILjava/util/concurrent/Executor;)V

    .line 75
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mMmTelFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRcsFeatureForSubscription: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",subscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecImsService"

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/sec/internal/imsphone/SecImsService;->mRcsFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mRcsFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/feature/RcsFeature;

    return-object p0

    .line 102
    :cond_0
    new-instance p2, Lcom/sec/internal/imsphone/RcsFeatureImpl;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/sec/internal/imsphone/RcsFeatureImpl;-><init>(ILjava/util/concurrent/Executor;)V

    .line 103
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mRcsFeatureImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfigForSubscription: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",subscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecImsService"

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsConfigImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 132
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsConfigImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    return-object p0

    .line 134
    :cond_0
    new-instance p2, Lcom/sec/internal/imsphone/ImsConfigImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0}, Lcom/sec/internal/imsphone/ImsConfigImpl;-><init>(ILandroid/content/Context;)V

    .line 135
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsConfigImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;
    .locals 1

    const/4 v0, -0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/imsphone/SecImsService;->getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/ImsConfigImpl;

    return-object p0
.end method

.method public getImsRegistrationImpl(I)Lcom/sec/internal/imsphone/ImsRegistrationImpl;
    .locals 1

    const/4 v0, -0x1

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/imsphone/SecImsService;->getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/ImsRegistrationImpl;

    return-object p0
.end method

.method public getImsServiceCapabilities()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x2

    return-wide v0
.end method

.method public getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;
    .locals 1

    const/4 v0, -0x1

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/imsphone/SecImsService;->createMmTelFeatureForSubscription(II)Landroid/telephony/ims/feature/MmTelFeature;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    return-object p0
.end method

.method public getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;
    .locals 1

    const/4 v0, -0x1

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/imsphone/SecImsService;->createRcsFeatureForSubscription(II)Landroid/telephony/ims/feature/RcsFeature;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;

    return-object p0
.end method

.method public getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistrationForSubscription: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",subscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecImsService"

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p2, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsRegistrationImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsRegistrationImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    return-object p0

    .line 118
    :cond_0
    new-instance p2, Lcom/sec/internal/imsphone/ImsRegistrationImpl;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/sec/internal/imsphone/ImsRegistrationImpl;-><init>(ILjava/util/concurrent/Executor;)V

    .line 119
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mImsRegistrationImpls:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public bridge synthetic getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SecImsService;->getSipTransport(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSipTransport(I)Lcom/sec/internal/imsphone/SipTransportImpl;
    .locals 3

    .line 146
    const-string v0, "SecImsService"

    const-string v1, "getSipTransport"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mSipTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mSipTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/SipTransportImpl;

    return-object p0

    .line 150
    :cond_0
    new-instance v0, Lcom/sec/internal/imsphone/SipTransportImpl;

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/imsphone/SecImsService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/imsphone/SipTransportImpl;-><init>(ILjava/util/concurrent/Executor;Lcom/sec/internal/helper/SimpleEventLog;)V

    .line 152
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mSipTransports:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind: action ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], component ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsService"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mBinder:Landroid/os/IBinder;

    return-object p0

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/telephony/ims/ImsService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 41
    const-string/jumbo v0, "onCreate"

    const-string v1, "SecImsService"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 45
    iput-object p0, p0, Lcom/sec/internal/imsphone/SecImsService;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x1f4

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SecImsService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 3

    .line 52
    const-string p0, "SecImsService"

    const-string/jumbo v0, "querySupportedImsFeatures"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v0, v1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object p0

    const/4 v2, 0x2

    .line 56
    invoke-virtual {p0, v0, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object p0

    .line 57
    invoke-virtual {p0, v1, v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0, v1, v1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object p0

    .line 59
    invoke-virtual {p0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object p0

    return-object p0
.end method
