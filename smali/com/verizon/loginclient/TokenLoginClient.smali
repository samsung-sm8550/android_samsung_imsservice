.class public Lcom/verizon/loginclient/TokenLoginClient;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"


# instance fields
.field private mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mAlwaysReturnSubscriptionId:Z

.field private final mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mBypassDeviceFeatureCheck:Z

.field private mBypassEnginePackageCheck:Z

.field private final mContext:Landroid/content/Context;

.field private final mDirectEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field private mInteractiveQueryMode:Z

.field private final mLockObj:Ljava/lang/Object;

.field private final mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

.field private mObserveOnNullResult:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private final mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

.field private mTargetSubscriptionId:Ljava/lang/Integer;

.field private mTimeoutMs:J

.field private mTokenTypeAuth:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;Landroid/os/Looper;Ljava/lang/Integer;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    const-wide/32 v0, 0xea60

    .line 88
    iput-wide v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mInteractiveQueryMode:Z

    .line 90
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTokenTypeAuth:Z

    .line 91
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassDeviceFeatureCheck:Z

    .line 92
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserveOnNullResult:Z

    .line 94
    iput-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAlwaysReturnSubscriptionId:Z

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    .line 122
    iput-object p4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 125
    new-instance p4, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object p4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mSyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$InternalCallbackReceiver;

    .line 126
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mDirectEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    if-nez p2, :cond_0

    move-object p4, v0

    goto :goto_0

    .line 127
    :cond_0
    new-instance p4, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    invoke-direct {p4, p0, p2}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;)V

    :goto_0
    iput-object p4, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 129
    new-instance p2, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    if-eqz p3, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_1
    invoke-direct {p2, p3, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;-><init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    return-void

    .line 119
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1000(Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/verizon/loginclient/TokenLoginClient;)Ljava/lang/Object;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->callbackWithResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->stopTimeoutWait()V

    return-void
.end method

.method static synthetic access$800(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/verizon/loginclient/TokenLoginClient;Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/loginclient/TokenLoginClient;->queryContentProvider(Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object p0

    return-object p0
.end method

.method private buildDeleteParams(Z)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .locals 1

    .line 495
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;-><init>()V

    if-eqz p1, :cond_0

    .line 496
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setDeleteAllTokens(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    goto :goto_0

    .line 497
    :cond_0
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    .line 499
    :goto_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p0

    return-object p0
.end method

.method private buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;
    .locals 2

    .line 484
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    invoke-direct {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;-><init>()V

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    .line 485
    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setSubscriptionId(Ljava/lang/Integer;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    move-result-object v0

    .line 488
    iget-boolean p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAlwaysReturnSubscriptionId:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->setAlwaysSendSubscriberId(Ljava/lang/Boolean;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;

    .line 490
    :cond_0
    invoke-virtual {v0}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters$Builder;->build()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p0

    return-object p0
.end method

.method private buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 578
    :cond_0
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mInteractiveQueryMode:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "/silent"

    .line 579
    :goto_0
    iget-boolean p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTokenTypeAuth:Z

    if-eqz p0, :cond_2

    const-string p0, "authtoken"

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "token"

    .line 581
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "content://%s/%s%s"

    filled-new-array {p1, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 586
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private callbackWithResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V
    .locals 2

    .line 642
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 644
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v0

    sget-object v1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    if-ne v0, v1, :cond_2

    .line 647
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getTokenData()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V

    goto :goto_0

    .line 649
    :cond_2
    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getResultCode()Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private doTokenDelete(Z)V
    .locals 2

    .line 392
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v0

    .line 395
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->buildDeleteParams(Z)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private doTokenQuery()Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 3

    .line 412
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->isDeviceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 413
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->deviceNotCapable:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 417
    :cond_0
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->getLoginClientUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 419
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryParams()Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v1

    iget-boolean v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserveOnNullResult:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient;->queryContentProvider(Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object p0

    return-object p0
.end method

.method private getCertFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 7

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 750
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    :try_start_1
    const-string p1, "X509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 752
    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 753
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 754
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-byte v4, p1, v3

    .line 758
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 759
    :cond_1
    :goto_1
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%02X"

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 763
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-object p0, p1

    goto :goto_4

    .line 750
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_4
    return-object p0
.end method

.method private getLoginClientUri()Landroid/net/Uri;
    .locals 12

    .line 555
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 557
    sget-object v1, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 558
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 561
    :cond_0
    sget-object v7, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_TOKEN_PACKAGES:[Ljava/lang/String;

    array-length v8, v7

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 563
    iget-object v11, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v6, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/verizon/loginclient/TokenLoginClient;->isAuthorizedSignature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 564
    invoke-direct {p0, v5}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 567
    :cond_2
    iget-boolean v6, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, v5}, Lcom/verizon/loginclient/TokenLoginClient;->buildQueryUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private isAuthorizedSignature(Ljava/lang/String;)Z
    .locals 9

    .line 718
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 724
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    .line 726
    invoke-direct {p0, v4}, Lcom/verizon/loginclient/TokenLoginClient;->getCertFingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v4

    .line 728
    sget-object v5, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_SIGNING_CERT_SHA1:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 729
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_2

    return v1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 737
    :catch_0
    :cond_4
    iget-boolean p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassEnginePackageCheck:Z

    return p0
.end method

.method private isDeviceCapable()Z
    .locals 6

    .line 537
    iget-boolean v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mBypassDeviceFeatureCheck:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 539
    :cond_0
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 541
    sget-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->LTE_FEATURES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 542
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private queryContentProvider(Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;
    .locals 8

    const/4 v0, 0x0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 437
    invoke-virtual {p2}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;->getSelectParams()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    .line 436
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    .line 448
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->engineNotInstalled:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 451
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 452
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 453
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 457
    :cond_1
    const-string/jumbo v1, "token"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 460
    const-string/jumbo v2, "subscriptionId"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 461
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 463
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    if-nez v1, :cond_4

    if-eqz p3, :cond_3

    .line 467
    iget-wide p2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_3

    .line 468
    invoke-direct {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->registerContentObserver(Landroid/net/Uri;)V

    .line 469
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->startTimeoutWait()V

    .line 470
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 472
    :cond_3
    new-instance p0, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p1, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p0

    .line 477
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 478
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->success:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    new-instance p3, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    invoke-direct {p3, p0, v2}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, p2, p3, v0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 443
    :goto_1
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->failure:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p1

    .line 440
    :goto_2
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object p2, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->securityException:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    invoke-direct {p1, p2, v0, p0, v0}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    return-object p1
.end method

.method private declared-synchronized registerContentObserver(Landroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    .line 505
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    .line 507
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    invoke-direct {v0, p0, v1, p1}, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;-><init>(Lcom/verizon/loginclient/TokenLoginClient;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    .line 508
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startTimeoutWait()V
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 633
    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    iget-wide v2, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private stopTimeoutWait()V
    .locals 1

    .line 637
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mMsgHandler:Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private declared-synchronized unregisterContentObserver()V
    .locals 2

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 520
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 525
    :try_start_2
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mObserver:Landroid/database/ContentObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelQuery()V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->unregisterContentObserver()V

    .line 263
    invoke-direct {p0}, Lcom/verizon/loginclient/TokenLoginClient;->stopTimeoutWait()V

    const/4 v0, 0x0

    .line 264
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 267
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mLockObj:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public invalidateToken()V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, v0}, Lcom/verizon/loginclient/TokenLoginClient;->doTokenDelete(Z)V

    return-void
.end method

.method public queryTokenAsync()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mAsyncEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    if-eqz v0, :cond_0

    .line 151
    iput-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient;->mActiveEventReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    .line 154
    new-instance v0, Lcom/verizon/loginclient/TokenLoginClient$1;

    invoke-direct {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$1;-><init>(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 163
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot perform async query with null callback receiver (constructor)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetSubscriptionId(Ljava/lang/Integer;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTargetSubscriptionId:Ljava/lang/Integer;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 326
    iput-wide p1, p0, Lcom/verizon/loginclient/TokenLoginClient;->mTimeoutMs:J

    return-void
.end method
