.class public Lcom/sec/internal/helper/httpclient/HttpController;
.super Ljava/lang/Object;
.source "HttpController.java"


# static fields
.field public static final CAPACITY:I = 0x64

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final CLASS_NAME_PREFIX:Ljava/lang/String; = "CloudMessage"

.field public static final CONTENT_TYPE_CAB_XML:Ljava/lang/String; = "application/vnd.oma.cab-address-book+xml"

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_XCAP_EL_XML:Ljava/lang/String; = "application/xcap-el+xml"

.field public static final CONTENT_TYPE_XML:Ljava/lang/String; = "application/xml"

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHENTICATION_INFO:Ljava/lang/String; = "Authentication-Info"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_ID:Ljava/lang/String; = "Content-ID"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_DEVICE_AGENT:Ljava/lang/String; = "Device-Agent"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_FILE_ICON:Ljava/lang/String; = "File-Icon"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_IIDTOKEN:Ljava/lang/String; = "gmscore_instance_id_token"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_PROXY_AUTHORIZATION:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_REFERER:Ljava/lang/String; = "Referer"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEADER_WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final HEADER_X_TMUS_IMEI:Ljava/lang/String; = "X-TMUS-IMEI"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final OTHERTYPE_CIPHERSUITE:I = 0x1

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static final TAG:Ljava/lang/String; = "HttpController"

.field public static final VAL_3GPP_GBA:Ljava/lang/String; = "3gpp-gba"

.field private static isInitialized:Z = false

.field private static volatile mConnectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field protected static mIsDebugHttps:Z

.field public static queue_sim:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/helper/CircularQueue<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile random:Ljava/util/Random;

.field protected static final sOkHttpClient:Lokhttp3/OkHttpClient;


# instance fields
.field private final API_SIGNATURE_MAX_INT:I

.field public req:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$iyVUWH7DYny_y8eAZbRZhURmuvQ(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->lambda$createHostnameVerifier$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smlistToDumpFormat(ILcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/httpclient/HttpController;->listToDumpFormat(ILcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    .line 297
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 300
    sput-boolean v0, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    const/4 v0, 0x0

    .line 301
    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    .line 302
    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 303
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->sOkHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    .line 298
    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->API_SIGNATURE_MAX_INT:I

    .line 299
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    return-void
.end method

.method protected static configConnectionSpec()Lokhttp3/ConnectionSpec;
    .locals 19

    .line 340
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    sget-object v2, Lokhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v3, Lokhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    sget-object v4, Lokhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    sget-object v5, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    sget-object v6, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v7, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v8, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v9, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v10, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v11, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v12, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v13, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v14, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v15, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v16, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v17, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v18, Lokhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

    filled-new-array/range {v2 .. v18}, [Lokhttp3/CipherSuite;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    return-object v0
.end method

.method protected static configConnectionSpecForSpecificOperator()Lokhttp3/ConnectionSpec;
    .locals 18

    .line 317
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    sget-object v2, Lokhttp3/CipherSuite;->TLS_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v3, Lokhttp3/CipherSuite;->TLS_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    sget-object v4, Lokhttp3/CipherSuite;->TLS_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    sget-object v5, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lokhttp3/CipherSuite;

    sget-object v6, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v7, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v8, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v9, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v10, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v11, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v12, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v13, Lokhttp3/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v14, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    sget-object v15, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v16, Lokhttp3/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    sget-object v17, Lokhttp3/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lokhttp3/CipherSuite;

    filled-new-array/range {v2 .. v17}, [Lokhttp3/CipherSuite;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    sget-object v1, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    filled-new-array {v1}, [Lokhttp3/TlsVersion;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    return-object v0
.end method

.method protected static createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 637
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpController$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method protected static createSslSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 379
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 380
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method private generateRandomString(I)Ljava/lang/String;
    .locals 0

    .line 673
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->random:Ljava/util/Random;

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 674
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/Call;
    .locals 1

    .line 533
    invoke-static {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestBuilder;->buildRequest(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/Request;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p1, "getCall(): okhttp request build failure"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    return-object p0
.end method

.method protected static getConnectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 602
    invoke-static {v0}, Lcom/sec/internal/helper/httpclient/HttpController;->getConnectionSpecs(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static getConnectionSpecs(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 606
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionSpecs:: type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    if-nez v0, :cond_2

    .line 609
    const-class v1, Lcom/sec/internal/helper/httpclient/HttpController;

    monitor-enter v1

    .line 610
    :try_start_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 613
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->configConnectionSpecForSpecificOperator()Lokhttp3/ConnectionSpec;

    move-result-object p0

    sget-object v0, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    filled-new-array {p0, v0}, [Lokhttp3/ConnectionSpec;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 615
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->configConnectionSpec()Lokhttp3/ConnectionSpec;

    move-result-object p0

    sget-object v0, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    filled-new-array {p0, v0}, [Lokhttp3/ConnectionSpec;

    move-result-object p0

    invoke-static {p0}, Lokhttp3/internal/Util;->immutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->mConnectionSpecs:Ljava/util/List;

    goto :goto_0

    .line 618
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object v0
.end method

.method protected static getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    .line 624
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_1

    .line 626
    const-class v1, Lcom/sec/internal/helper/httpclient/HttpController;

    monitor-enter v1

    .line 627
    :try_start_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 629
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 631
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/helper/httpclient/HttpController;
    .locals 1

    .line 313
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController$SingletoneHolder;->INSTANCE:Lcom/sec/internal/helper/httpclient/HttpController;

    return-object v0
.end method

.method protected static getTrustAllCertMangers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    const/4 v0, 0x1

    .line 363
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpController$1;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/HttpController$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static isIsInitialized()Z
    .locals 1

    .line 384
    sget-boolean v0, Lcom/sec/internal/helper/httpclient/HttpController;->isInitialized:Z

    return v0
.end method

.method private isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    .line 654
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 659
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p2

    if-nez p2, :cond_1

    .line 660
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p2, "isValidRequestParam(): callback is null for async call"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    .line 664
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 665
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidRequestParam(): invalid uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 655
    :cond_3
    :goto_0
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p2, "isValidRequestParam(): invalid param, vail"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static synthetic lambda$createHostnameVerifier$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 5

    .line 638
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    const/4 v1, 0x0

    .line 641
    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p1

    .line 642
    array-length v2, p1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_1

    :try_start_1
    aget-object v4, p1, v1

    .line 643
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p0, v4}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v3
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move v1, v3

    .line 647
    :catch_1
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p1, "SSL Exception with HostNameVerify Fail"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :cond_1
    :goto_1
    return v3
.end method

.method private static listToDumpFormat(ILcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 483
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    .line 486
    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CloudMessage"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 488
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 489
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 490
    invoke-interface {v0, p1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 493
    :cond_0
    const-string p1, ","

    invoke-static {p1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p1, "listToDumpFormat has an exception"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setIsInitialized(Z)V
    .locals 0

    .line 388
    sput-boolean p0, Lcom/sec/internal/helper/httpclient/HttpController;->isInitialized:Z

    return-void
.end method


# virtual methods
.method public execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 7

    const/4 v0, 0x1

    .line 404
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/Call;

    move-result-object v0

    if-nez v0, :cond_1

    .line 410
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "okhttp fail to create call"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 414
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->isIsInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    .line 415
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->initializeQueue_sim()V

    :cond_2
    const v1, 0x186a0

    .line 418
    invoke-direct {p0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->generateRandomString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 421
    sget-object v3, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP Request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v3, -0x6ffffffe

    const/4 v4, 0x0

    .line 423
    invoke-static {v3, p1, v1, v4}, Lcom/sec/internal/helper/httpclient/HttpController;->listToDumpFormat(ILcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v3, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    .line 426
    invoke-virtual {v3}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v3

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  HttpRequestParams "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [    "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   nUrl: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   bUrl: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getBsfUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ] "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    .line 431
    :try_start_0
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpController$2;

    invoke-direct {v3, p0, p1, v2, v1}, Lcom/sec/internal/helper/httpclient/HttpController$2;-><init>(Lcom/sec/internal/helper/httpclient/HttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 476
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 477
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "okhttp malformed response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method protected getOkHttpClient(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/OkHttpClient;
    .locals 8

    .line 544
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->sOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 547
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/32 v5, 0x7fffffff

    if-ltz v1, :cond_0

    .line 548
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    .line 549
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 551
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 552
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 553
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 555
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 556
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    .line 557
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getWriteTimeout()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 560
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 561
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 564
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 565
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;

    .line 568
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getFollowRedirects()Z

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 569
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getRetryOnConnectionFailure()Z

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 571
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getTrustAllCertMangers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 572
    aget-object v2, v1, v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 573
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://wsg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    if-eqz v3, :cond_5

    goto :goto_0

    .line 576
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 577
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 578
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCipherSuiteType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 579
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpController$SSLSocketFactoryForSpecificOperator;

    const-string v4, "TLSv1.2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcom/sec/internal/helper/httpclient/HttpController$SSLSocketFactoryForSpecificOperator;-><init>(Lcom/sec/internal/helper/httpclient/HttpController;Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;)V

    move-object v1, v3

    .line 580
    :cond_6
    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 581
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->isReuseConnection()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 582
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCipherSuiteType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->getConnectionSpecs(I)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 583
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 585
    :cond_7
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->configConnectionSpec()Lokhttp3/ConnectionSpec;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 586
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 575
    :cond_8
    :goto_0
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/HttpController;->createSslSocketFactory([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_9
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseProxy()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 595
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 598
    :cond_a
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 590
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    const-string p1, "Could not load keystore "

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public initializeQueue_sim()V
    .locals 3

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 393
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;-><init>(I)V

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 396
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpController;->setIsInitialized(Z)V

    return-void
.end method

.method public setDebugHttps(Z)V
    .locals 0

    .line 400
    sput-boolean p1, Lcom/sec/internal/helper/httpclient/HttpController;->mIsDebugHttps:Z

    return-void
.end method

.method public syncExecute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .locals 5

    const/4 v0, 0x0

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->isValidRequestParam(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 505
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->getCall(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lokhttp3/Call;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const v2, 0x186a0

    .line 510
    invoke-direct {p0, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->generateRandomString(I)Ljava/lang/String;

    move-result-object p0

    .line 511
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :try_start_0
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 517
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, v1

    .line 520
    :goto_0
    const-string v0, "HTTP response: "

    if-eqz p1, :cond_2

    .line 522
    invoke-static {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->buildResponse(Lokhttp3/Response;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    move-result-object p1

    .line 524
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 527
    :cond_2
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " null"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
