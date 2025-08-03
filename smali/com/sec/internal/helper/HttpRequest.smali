.class public Lcom/sec/internal/helper/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory; = null

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHENTICATION_INFO:Ljava/lang/String; = "Authentication-Info"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_RANGE:Ljava/lang/String; = "Range"

.field public static final HEADER_RETRY_AFTER:Ljava/lang/String; = "Retry-After"

.field public static final HEADER_SUPPORTED_VERSIONS:Ljava/lang/String; = "Supported-Versions"

.field public static final HEADER_TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HEADER_WWW_AUTHENTICATE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private bufferSize:I

.field private connection:Ljava/net/HttpURLConnection;

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPort:I

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private network:Landroid/net/Network;

.field private output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

.field private progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

.field private final requestMethod:Ljava/lang/String;

.field private totalSize:J

.field private totalWritten:J

.field private uncompress:Z

.field private final url:Ljava/net/URL;


# direct methods
.method public static synthetic $r8$lambda$04W5qBXO3Mxt7b8KndnxTpVU2Xc(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->lambda$trustAllHosts$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbufferSize(Lcom/sec/internal/helper/HttpRequest;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogress(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/helper/HttpRequest$UploadProgress;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettotalSize(Lcom/sec/internal/helper/HttpRequest;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettotalWritten(Lcom/sec/internal/helper/HttpRequest;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputtotalWritten(Lcom/sec/internal/helper/HttpRequest;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 393
    sget-object v0, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    sput-object v0, Lcom/sec/internal/helper/HttpRequest;->CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 610
    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->uncompress:Z

    const/16 v0, 0x2000

    .line 614
    iput v0, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    const-wide/16 v0, -0x1

    .line 616
    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    const-wide/16 v0, 0x0

    .line 618
    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    .line 626
    sget-object v0, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    .line 636
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    iput-object p2, p0, Lcom/sec/internal/helper/HttpRequest;->requestMethod:Ljava/lang/String;

    return-void

    :catch_0
    move-exception p0

    .line 638
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 610
    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v0, 0x0

    .line 612
    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->uncompress:Z

    const/16 v0, 0x2000

    .line 614
    iput v0, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    const-wide/16 v0, -0x1

    .line 616
    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    const-wide/16 v0, 0x0

    .line 618
    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    .line 626
    sget-object v0, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    .line 650
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;

    .line 651
    iput-object p2, p0, Lcom/sec/internal/helper/HttpRequest;->requestMethod:Ljava/lang/String;

    return-void
.end method

.method private createConnection()Ljava/net/HttpURLConnection;
    .locals 4

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->httpProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 662
    sget-object v0, Lcom/sec/internal/helper/HttpRequest;->CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;

    invoke-direct {p0}, Lcom/sec/internal/helper/HttpRequest;->createProxy()Ljava/net/Proxy;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/helper/HttpRequest;->network:Landroid/net/Network;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Ljava/net/Proxy;Landroid/net/Network;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 664
    :cond_0
    sget-object v0, Lcom/sec/internal/helper/HttpRequest;->CONNECTION_FACTORY:Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;

    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest;->url:Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/internal/helper/HttpRequest;->network:Landroid/net/Network;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/helper/HttpRequest$ConnectionFactory;->create(Ljava/net/URL;Landroid/net/Network;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 666
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 668
    instance-of p0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p0, :cond_1

    .line 669
    move-object p0, v0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/sec/internal/helper/HttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 674
    :goto_1
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private createProxy()Ljava/net/Proxy;
    .locals 4

    .line 655
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/sec/internal/helper/HttpRequest;->httpProxyHost:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/helper/HttpRequest;->httpProxyPort:I

    invoke-direct {v2, v3, p0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 568
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 293
    const-class v0, Lcom/sec/internal/helper/HttpRequest;

    monitor-enter v0

    .line 294
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 295
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lcom/sec/internal/helper/HttpRequest$1;

    invoke-direct {v2}, Lcom/sec/internal/helper/HttpRequest$1;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 317
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 318
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 320
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Security exception configuring SSL context"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 323
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v1, v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 327
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    monitor-exit v0

    return-object v1

    .line 328
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 2

    .line 332
    const-class v0, Lcom/sec/internal/helper/HttpRequest;

    monitor-enter v0

    .line 333
    :try_start_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_0

    .line 334
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$2;

    invoke-direct {v1}, Lcom/sec/internal/helper/HttpRequest$2;-><init>()V

    sput-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 352
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/internal/helper/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    monitor-exit v0

    return-object v1

    .line 353
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return-object p0

    .line 287
    :cond_0
    const-string p0, "UTF-8"

    return-object p0
.end method

.method private incrementTotalSize(J)Lcom/sec/internal/helper/HttpRequest;
    .locals 4

    .line 1202
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 1203
    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    .line 1205
    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalSize:J

    return-object p0
.end method

.method private static synthetic lambda$trustAllHosts$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 577
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 586
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/net/URL;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 595
    new-instance v0, Lcom/sec/internal/helper/HttpRequest;

    const-string v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public acceptEncoding(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 1049
    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 1067
    const-string v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public body()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 812
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 813
    invoke-static {p1}, Lcom/sec/internal/helper/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 815
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 835
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget p0, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 784
    iput p1, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    return-object p0

    .line 782
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size must be greater than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->contentLength()I

    move-result p0

    if-lez p0, :cond_0

    .line 796
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-object v0

    .line 798
    :cond_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-object p0
.end method

.method public charset()Ljava/lang/String;
    .locals 2

    .line 1021
    const-string v0, "Content-Type"

    const-string v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/HttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public chunk(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method protected closeOutput()Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    if-nez v0, :cond_0

    return-object p0

    .line 1218
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/helper/HttpRequest;->multipart:Z

    if-eqz v1, :cond_1

    .line 1219
    const-string v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    .line 1221
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_2

    .line 1223
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1228
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :catch_0
    :goto_0
    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    return-object p0
.end method

.method protected closeOutputQuietly()Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1242
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutput()Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1244
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public code()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 703
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 705
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .locals 1

    .line 1058
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public contentLength()I
    .locals 1

    .line 1099
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->intHeader(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public contentLength(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 1117
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 0

    .line 1108
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->contentLength(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public contentRange(JJJ)Lcom/sec/internal/helper/HttpRequest;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    .line 1157
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "bytes %s-%s/%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Content-Range"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0

    .line 1154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Invalid argument: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1076
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2

    .line 1085
    const-string v0, "Content-Type"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; charset="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0

    .line 1089
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    new-instance v7, Lcom/sec/internal/helper/HttpRequest$3;

    iget-boolean v3, p0, Lcom/sec/internal/helper/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/helper/HttpRequest$3;-><init>(Lcom/sec/internal/helper/HttpRequest;Ljava/io/Closeable;ZLjava/io/FileOutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1183
    invoke-virtual {v7}, Lcom/sec/internal/helper/HttpRequest$Operation;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/HttpRequest;

    return-object p0
.end method

.method public disconnect()Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 757
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .line 715
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 718
    :cond_0
    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_1

    .line 720
    :try_start_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 690
    invoke-direct {p0}, Lcom/sec/internal/helper/HttpRequest;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 692
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object p0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    .line 974
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 978
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3b

    .line 979
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-eqz v2, :cond_5

    if-ne v2, v0, :cond_1

    goto :goto_1

    .line 984
    :cond_1
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :goto_0
    move v4, v0

    :cond_2
    if-ge v2, v4, :cond_5

    const/16 v6, 0x3d

    .line 990
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-ge v6, v4, :cond_4

    .line 992
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 993
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 994
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    const/4 p0, 0x2

    if-le v6, p0, :cond_3

    const/4 p0, 0x0

    .line 996
    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x22

    if-ne p1, p0, :cond_3

    sub-int/2addr v6, v3

    .line 997
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p1, p0, :cond_3

    .line 998
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2

    :cond_4
    add-int/lit8 v2, v4, 0x1

    .line 1006
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 1

    .line 1463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_0

    .line 1465
    const-string p4, "--00content0boundary00\r\n"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1467
    :cond_0
    const-string p4, "\r\n--00content0boundary00\r\n"

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1470
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1471
    const-string v0, "form-data; name=\""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 1473
    const-string p1, "\"; filename=\""

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p1, 0x22

    .line 1475
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Content-Disposition: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    .line 1480
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Content-Type: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The length of header: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HttpRequest"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 923
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 933
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutputQuietly()Lcom/sec/internal/helper/HttpRequest;

    .line 934
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public intHeader(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 945
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/HttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public intHeader(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 955
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutputQuietly()Lcom/sec/internal/helper/HttpRequest;

    .line 956
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public message()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->closeOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 745
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 747
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public method()Ljava/lang/String;
    .locals 0

    .line 1449
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ok()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/16 v0, 0xc8

    .line 734
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected openOutput()Lcom/sec/internal/helper/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1254
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    if-eqz v0, :cond_0

    return-object p0

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1259
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    .line 1258
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/sec/internal/helper/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    return-object p0
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 965
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/sec/internal/helper/HttpRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1325
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/helper/HttpRequest;->incrementTotalSize(J)Lcom/sec/internal/helper/HttpRequest;

    .line 1329
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1331
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 1325
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1332
    :goto_3
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1345
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->startPart()Lcom/sec/internal/helper/HttpRequest;

    .line 1346
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 1347
    iget-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, p1}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1349
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1308
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->startPart()Lcom/sec/internal/helper/HttpRequest;

    .line 1309
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 1310
    iget-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1312
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1360
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    const-string p1, ": "

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2

    if-nez p1, :cond_0

    .line 1193
    sget-object p1, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->DEFAULT:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    goto :goto_0

    .line 1195
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->progress:Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    :goto_0
    const-wide/16 v0, 0x0

    .line 1197
    iput-wide v0, p0, Lcom/sec/internal/helper/HttpRequest;->totalWritten:J

    return-object p0
.end method

.method public range(JJ)Lcom/sec/internal/helper/HttpRequest;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    .line 1140
    const-string v1, "Range"

    if-gez v0, :cond_0

    .line 1141
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "bytes=%s-"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0

    .line 1143
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "bytes=%s-%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0

    .line 1137
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot have negative start: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readTimeout(I)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 891
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 893
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public send(Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1372
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->openOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 1373
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/sec/internal/helper/HttpRequest;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1375
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1390
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->openOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 1391
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1393
    new-instance p1, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public setFollowRedirect(Z)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 1488
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-object p0
.end method

.method public setParams(Landroid/net/Network;ZIILjava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 0

    .line 1493
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/HttpRequest;->useCaches(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    .line 1494
    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/HttpRequest;->connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sec/internal/helper/HttpRequest;->readTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    .line 1495
    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/HttpRequest;->userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->setFollowRedirect(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method protected startPart()Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    iget-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->multipart:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1272
    iput-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest;->multipart:Z

    .line 1273
    const-string v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->contentType(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->openOutput()Lcom/sec/internal/helper/HttpRequest;

    .line 1274
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    const-string v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    goto :goto_0

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest;->output:Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    const-string v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest$RequestOutputStream;

    :goto_0
    return-object p0
.end method

.method public stream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 845
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    .line 847
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 849
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 852
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    .line 855
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 857
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->contentLength()I

    move-result v1

    if-gtz v1, :cond_1

    .line 860
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 858
    :cond_1
    new-instance p0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {p0, v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw p0

    .line 866
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sec/internal/helper/HttpRequest;->uncompress:Z

    if-eqz v1, :cond_5

    const-string v1, "gzip"

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    .line 870
    :cond_3
    :try_start_2
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    if-eqz v0, :cond_4

    .line 874
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 876
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 879
    :cond_4
    :goto_1
    new-instance v0, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->url()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trustAllCerts()Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
        }
    .end annotation

    .line 1406
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1407
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    .line 1408
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 1409
    invoke-static {}, Lcom/sec/internal/helper/HttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object p0
.end method

.method public trustAllHosts()Lcom/sec/internal/helper/HttpRequest;
    .locals 4

    .line 1423
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1424
    new-instance v1, Lcom/sec/internal/helper/HttpRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/helper/HttpRequest$$ExternalSyntheticLambda0;-><init>()V

    .line 1425
    instance-of v2, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 1426
    const-string v2, "HttpRequest"

    const-string/jumbo v3, "trustAllHosts() - this connections is instance of HttpsURLConnection "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 1429
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    return-object p0
.end method

.method public url()Ljava/net/URL;
    .locals 0

    .line 1440
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public useCaches(Z)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->getConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;
    .locals 0

    .line 1458
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest;->network:Landroid/net/Network;

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 1

    .line 1030
    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 1290
    const-string p1, "\"; filename=\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p1, 0x22

    .line 1292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    const-string p1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    if-eqz p3, :cond_1

    .line 1295
    const-string p1, "Content-Type"

    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/helper/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 1297
    :cond_1
    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public wwwAuthenticate()Ljava/lang/String;
    .locals 1

    .line 1127
    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
