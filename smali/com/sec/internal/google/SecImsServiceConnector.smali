.class public Lcom/sec/internal/google/SecImsServiceConnector;
.super Ljava/lang/Object;
.source "SecImsServiceConnector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SecImsServiceConnector"


# instance fields
.field private mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mService:Lcom/sec/internal/imsphone/SecImsService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$4aC8XDJNzjd1vjvTJ1-70oWVtF8()Ljava/lang/IllegalStateException;
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/internal/google/SecImsServiceConnector;->lambda$getSipTransportImpl$0()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedLatch(Lcom/sec/internal/google/SecImsServiceConnector;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/internal/google/SecImsServiceConnector;Lcom/sec/internal/imsphone/SecImsService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mService:Lcom/sec/internal/imsphone/SecImsService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/sec/internal/google/SecImsServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/google/SecImsServiceConnector$1;-><init>(Lcom/sec/internal/google/SecImsServiceConnector;)V

    iput-object v0, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mExecutor:Ljava/util/concurrent/Executor;

    .line 49
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/internal/imsphone/SecImsService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    return-void
.end method

.method private static synthetic lambda$getSipTransportImpl$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SipTransport should exist!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private requireService()Lcom/sec/internal/imsphone/SecImsService;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    const/16 v3, 0xa

    .line 56
    const-string v4, "SecImsServiceConnector"

    if-gt v1, v3, :cond_0

    if-nez v2, :cond_0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect to local SecImsService #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " attempt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mConnectedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 65
    const-string v1, "Cannot connect to local SecImsService"

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/google/SecImsServiceConnector;->mService:Lcom/sec/internal/imsphone/SecImsService;

    return-object p0
.end method


# virtual methods
.method public getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;
    .locals 2

    .line 72
    const-string v0, "SecImsServiceConnector"

    const-string v1, "getImsConfigImpl"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/sec/internal/google/SecImsServiceConnector;->requireService()Lcom/sec/internal/imsphone/SecImsService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SecImsService;->getImsConfigImpl(I)Lcom/sec/internal/imsphone/ImsConfigImpl;

    move-result-object p0

    return-object p0
.end method

.method public getImsRegistrationImpl(I)Lcom/sec/internal/imsphone/ImsRegistrationImpl;
    .locals 2

    .line 87
    const-string v0, "SecImsServiceConnector"

    const-string v1, "getImsRegistrationImpl"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/google/SecImsServiceConnector;->requireService()Lcom/sec/internal/imsphone/SecImsService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SecImsService;->getImsRegistrationImpl(I)Lcom/sec/internal/imsphone/ImsRegistrationImpl;

    move-result-object p0

    return-object p0
.end method

.method public getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;
    .locals 2

    .line 77
    const-string v0, "SecImsServiceConnector"

    const-string v1, "getMmTelFeatureImpl"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/google/SecImsServiceConnector;->requireService()Lcom/sec/internal/imsphone/SecImsService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SecImsService;->getMmTelFeatureImpl(I)Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    move-result-object p0

    return-object p0
.end method

.method public getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;
    .locals 2

    .line 82
    const-string v0, "SecImsServiceConnector"

    const-string v1, "getRcsFeatureImpl"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/google/SecImsServiceConnector;->requireService()Lcom/sec/internal/imsphone/SecImsService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SecImsService;->getRcsFeatureImpl(I)Lcom/sec/internal/imsphone/RcsFeatureImpl;

    move-result-object p0

    return-object p0
.end method

.method public getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;
    .locals 2

    .line 92
    const-string v0, "SecImsServiceConnector"

    const-string v1, "getSipTransportImpl"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/google/SecImsServiceConnector;->requireService()Lcom/sec/internal/imsphone/SecImsService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SecImsService;->getSipTransport(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/google/SecImsServiceConnector$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/google/SecImsServiceConnector$$ExternalSyntheticLambda0;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/SipTransportImpl;

    return-object p0
.end method
