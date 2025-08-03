.class Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
.super Ljava/lang/Object;
.source "SipDelegateConfig.java"


# instance fields
.field mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;


# direct methods
.method public static synthetic $r8$lambda$xmSY3GgSr8z-8xAoXgxo8euVI9M(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->lambda$setPcscfAddress$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(I)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/sec/internal/imsphone/SipDelegateConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig;-><init>(ILcom/sec/internal/imsphone/SipDelegateConfig-IA;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-void
.end method

.method private static synthetic lambda$setPcscfAddress$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]?:(\\d+)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public build()Lcom/sec/internal/imsphone/SipDelegateConfig;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-static {v0, p0}, Lcom/sec/internal/imsphone/SipDelegateConfig;->-$$Nest$fputmBuilder(Lcom/sec/internal/imsphone/SipDelegateConfig;Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;)V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-object p0
.end method

.method public setHomeDomain(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mHomeDomain:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setHomeDomain: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mImei:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setImei: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setLocalAddress(Ljava/lang/String;I)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 4

    .line 208
    const-string v0, "SipDelegateConfig"

    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "setLocalAddress: %s:%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, v1, Lcom/sec/internal/imsphone/SipDelegateConfig;->mLocalAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLocalAddress: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setMaxUdpPayloadSizeBytes(I)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mMaxUdpPayloadSize:I

    return-object p0
.end method

.method public setPcscfAddress(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 5

    .line 227
    const-string v0, "SipDelegateConfig"

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iget-object v1, v1, Lcom/sec/internal/imsphone/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda4;-><init>()V

    .line 230
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/16 v2, 0x13c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 233
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "setPcscfAddress: %s:%d"

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v1, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipServerAddress:Ljava/net/InetSocketAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPcscfAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setPrivateUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPrivateUserIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setPublicUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPublicUserIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setSecurityVerifyHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSecurityVerifyHeader:Ljava/lang/String;

    goto :goto_0

    .line 220
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSecurityVerifyHeader: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipAssociatedUriHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mAssociatedUriHeader:Ljava/lang/String;

    goto :goto_0

    .line 195
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipAssociatedUriHeader: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipAuthenticationHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setSipAuthenticationNonce(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mSipAuthNonce:Ljava/lang/String;

    return-object p0
.end method

.method public setSipContactUserParameter(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mContactUserParam:Ljava/lang/String;

    goto :goto_0

    .line 168
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipContactUserParameter: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipPaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPaniHeader:Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipPaniHeader: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipPlaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mPlaniHeader:Ljava/lang/String;

    goto :goto_0

    .line 186
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipPlaniHeader: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipServiceRouteHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mServiceRouteHeader:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipServiceRouteHeader: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setSipUserAgentHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 1

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    iput-object p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mUserAgentHeader:Ljava/lang/String;

    goto :goto_0

    .line 159
    :cond_0
    const-string p1, "SipDelegateConfig"

    const-string/jumbo v0, "setSipUserAgentHeader: Empty! Ignore."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setTransport(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;
    .locals 2

    .line 201
    const-string/jumbo v0, "setTransport: [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateConfig"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->mNewConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    const-string v1, "UDP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/sec/internal/imsphone/SipDelegateConfig;->mTransportType:I

    return-object p0
.end method
