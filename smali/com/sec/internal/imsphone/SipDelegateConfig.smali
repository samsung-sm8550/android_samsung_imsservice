.class Lcom/sec/internal/imsphone/SipDelegateConfig;
.super Ljava/lang/Object;
.source "SipDelegateConfig.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SipDelegateConfig"


# instance fields
.field mAssociatedUriHeader:Ljava/lang/String;

.field private mBuilder:Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

.field mContactUserParam:Ljava/lang/String;

.field mHomeDomain:Ljava/lang/String;

.field mImei:Ljava/lang/String;

.field mLocalAddress:Ljava/net/InetSocketAddress;

.field mMaxUdpPayloadSize:I

.field mPaniHeader:Ljava/lang/String;

.field mPlaniHeader:Ljava/lang/String;

.field mPrivateUserIdentifier:Ljava/lang/String;

.field mPublicUserIdentifier:Ljava/lang/String;

.field mSecurityVerifyHeader:Ljava/lang/String;

.field mServiceRouteHeader:Ljava/lang/String;

.field mSipAuthHeader:Ljava/lang/String;

.field mSipAuthNonce:Ljava/lang/String;

.field mSipServerAddress:Ljava/net/InetSocketAddress;

.field mTransportType:I

.field mUserAgentHeader:Ljava/lang/String;

.field mVersion:I


# direct methods
.method public static synthetic $r8$lambda$w40hod9pBH9KPQdTd7UU4wKr9pc(Lcom/sec/internal/imsphone/SipDelegateConfig;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/SipDelegateConfig;->lambda$getBuilder$0()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBuilder(Lcom/sec/internal/imsphone/SipDelegateConfig;Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mBuilder:Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mTransportType:I

    .line 26
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 27
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;

    .line 28
    iput v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mMaxUdpPayloadSize:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mImei:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mVersion:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mTransportType:I

    .line 26
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;

    .line 27
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;

    .line 28
    iput v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mMaxUdpPayloadSize:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mImei:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    .line 49
    iput p1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mVersion:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/sec/internal/imsphone/SipDelegateConfig-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig;-><init>(I)V

    return-void
.end method

.method private isLastPaniChanged(Ljava/lang/String;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 93
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getBuilder$0()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 2

    .line 54
    new-instance v0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    iget v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mVersion:I

    invoke-direct {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mBuilder:Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    return-object v0
.end method


# virtual methods
.method public convert()Landroid/telephony/ims/SipDelegateConfiguration;
    .locals 10

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mVersion:I

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mVersion:I

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    iget v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mVersion:I

    int-to-long v2, v1

    iget v4, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mTransportType:I

    iget-object v5, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;-><init>(JILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setHomeDomain(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mImei:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setImei(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipContactUserParameter(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAuthenticationNonce(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    .line 73
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    new-instance v9, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;-><init>(IIIIIILjava/lang/String;)V

    .line 74
    invoke-virtual {v0, v9}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setIpSecConfiguration(Landroid/telephony/ims/SipDelegateConfiguration$IpSecConfiguration;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipPlaniHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mMaxUdpPayloadSize:I

    .line 79
    invoke-virtual {v0, p0}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->setMaxUdpPayloadSizeBytes(I)Landroid/telephony/ims/SipDelegateConfiguration$Builder;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/telephony/ims/SipDelegateConfiguration$Builder;->build()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getBuilder()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mBuilder:Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/imsphone/SipDelegateConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/imsphone/SipDelegateConfig$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    return-object p0
.end method

.method public isPaniChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 84
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    const/4 v2, 0x1

    .line 85
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    .line 86
    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    .line 84
    const-string v3, "isPaniChanged: PANI %s -> %s, Last PANI: %s -> %s"

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateConfig"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-direct {p0, p2}, Lcom/sec/internal/imsphone/SipDelegateConfig;->isLastPaniChanged(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method
