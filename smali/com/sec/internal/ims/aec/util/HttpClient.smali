.class public Lcom/sec/internal/ims/aec/util/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# static fields
.field private static final GET:Ljava/lang/String; = "GET"

.field private static final LOG_TAG:Ljava/lang/String; = "HttpClient"

.field private static final MAX_CHUNK_SIZE:I = 0x7d000

.field private static final MAX_CONN_TIMEOUT:I = 0x7530

.field private static final MAX_READ_TIMEOUT:I = 0x7530

.field private static final MIN_CHUNK_SIZE:I = 0xf000

.field private static final POST:Ljava/lang/String; = "POST"


# instance fields
.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHostName:Ljava/lang/String;

.field protected mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

.field protected mNetwork:Landroid/net/Network;

.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneId:I

.field protected mPostData:Lorg/json/JSONObject;


# direct methods
.method public static synthetic $r8$lambda$d9QWw8Q7xP5wGgpQ7047fX9y-M0(Lcom/sec/internal/ims/aec/util/HttpClient;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/aec/util/HttpClient;->lambda$openURLConnection$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/HttpClient;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    .line 45
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    .line 46
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    .line 52
    iput p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    return-void
.end method

.method private synthetic lambda$openURLConnection$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5

    .line 100
    sget-object p1, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    const/4 v0, 0x0

    .line 103
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HostNameVerify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/AECLog;->s(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    .line 105
    array-length v1, p2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    :try_start_1
    aget-object v3, p2, v0

    .line 106
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getHostName()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {p1, v4, v3}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move v0, v2

    .line 110
    :catch_1
    sget-object p1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "SSL Exception with HostNameVerify Fail"

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    move v2, v0

    :cond_1
    :goto_1
    return v2
.end method

.method private openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    :goto_0
    if-eqz p1, :cond_1

    .line 99
    new-instance v0, Lcom/sec/internal/ims/aec/util/HttpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/util/HttpClient$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/aec/util/HttpClient;)V

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 176
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 177
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 178
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 181
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 185
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 188
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p2, v0, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public closeURLConnection()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    :cond_0
    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    return-object p0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\\\"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getResBody(Ljava/net/HttpURLConnection;)[B
    .locals 7

    .line 219
    const-string v0, "failed to close input stream"

    const-string v1, ""

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const v2, 0x7d000

    .line 220
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 227
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    move v3, p1

    :cond_0
    const v5, 0xf000

    .line 229
    :try_start_1
    invoke-virtual {v4, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_1

    add-int/2addr v3, v5

    :cond_1
    if-gez v5, :cond_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    if-lez v3, :cond_2

    .line 236
    new-array v1, v3, [B

    .line 237
    invoke-static {v2, p1, v1, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-object v3, v4

    goto :goto_1

    .line 244
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 247
    :catch_1
    sget-object p1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 240
    :catch_2
    :goto_1
    :try_start_3
    sget-object p1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    const-string v2, "failed to read input stream"

    iget v4, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {p1, v2, v4}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 244
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    return-object v1

    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 247
    :catch_3
    sget-object v1, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    :cond_4
    :goto_4
    throw p1
.end method

.method protected getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected getResStatusCode(Ljava/net/HttpURLConnection;)I
    .locals 0

    .line 208
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 3

    .line 203
    new-instance v0, Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResStatusCode(Ljava/net/HttpURLConnection;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResBody(Ljava/net/HttpURLConnection;)[B

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;-><init>(Lcom/sec/internal/ims/aec/util/HttpClient;ILjava/util/Map;[B)V

    return-object v0
.end method

.method public getURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP GET] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->appendQueryParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 125
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 128
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 134
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getURLConnection Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 131
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getURLConnection IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public postURLConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 143
    invoke-static {v1}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->openURLConnection(Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    .line 145
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    .line 146
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getPostData()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v0, 0x7530

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 148
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 149
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 152
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1, p2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->getPostData()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 155
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHttpsURLConn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getResponse(Ljava/net/HttpURLConnection;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_0

    .line 153
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 161
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 162
    new-instance p0, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "postURLConnection Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 159
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "postURLConnection IOException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHeaders:Ljava/util/Map;

    .line 57
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mHostName:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mParams:Ljava/util/Map;

    .line 73
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setPostData(Lorg/json/JSONObject;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPostData:Lorg/json/JSONObject;

    return-void
.end method

.method protected setRequestHeader(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 194
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcom/sec/internal/ims/aec/util/HttpClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/aec/util/HttpClient;->mPhoneId:I

    invoke-static {v3, v2, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
