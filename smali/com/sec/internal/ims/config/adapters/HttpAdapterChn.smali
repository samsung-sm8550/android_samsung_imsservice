.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterChn.java"


# static fields
.field private static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field protected static final LOG_TAG:Ljava/lang/String; = "HttpAdapterChn"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 33
    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    return-void
.end method


# virtual methods
.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .locals 3

    const/4 v0, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catch_0
    move-exception p1

    .line 126
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v2, "fail to read status code"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method

.method protected setHttpUrlConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-super {p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setHttpUrlConnection()V

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method protected setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method protected setSocketFactory()V
    .locals 5

    .line 87
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    .line 89
    new-instance v2, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$miTM;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$miTM;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$miTM-IA;)V

    const/4 v4, 0x0

    .line 90
    aput-object v2, v1, v4

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 92
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string v3, "get socketFactory for HTTPS"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    :catch_0
    move-exception p0

    .line 95
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
