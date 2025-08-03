.class public abstract Lcom/sec/internal/ims/updater/stub/StubHttpRequester;
.super Ljava/lang/Object;
.source "StubHttpRequester.java"


# static fields
.field protected static final BUFFER_SIZE:I = 0x400

.field protected static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "StubHttpRequester"

.field protected static mExtukManager:Lcom/sec/internal/ims/updater/stub/ExtukManager;


# instance fields
.field mListener:Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;

.field mUrlBuilder:Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;


# direct methods
.method public static synthetic $r8$lambda$6JhAtI-bLfYmIicGbrDC3oOZRPI(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->lambda$logResponseHeaders$1(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$quyWQyrUal_GY9UO4z1j5nlTrag(Lcom/sec/internal/ims/updater/stub/StubHttpRequester;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->lambda$getResponse$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->mListener:Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;

    return-void
.end method

.method private synthetic lambda$getResponse$0(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->mUrlBuilder:Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;->setExtuk(Ljava/lang/String;)Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;

    .line 31
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/stub/StubHttpRequester;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static synthetic lambda$logResponseHeaders$1(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StubHttpRequester"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logResponseHeaders(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 73
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 p1, 0x2710

    .line 64
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 65
    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 67
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 68
    const-string p1, "Connection"

    const-string v0, "close"

    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private readFromStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    .line 80
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 p1, 0x400

    .line 81
    :try_start_0
    new-array p1, p1, [C

    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    return-void

    .line 79
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method


# virtual methods
.method public getResponse(Landroid/content/Context;Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;)V
    .locals 0

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->mListener:Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;

    .line 29
    new-instance p2, Lcom/sec/internal/ims/updater/stub/ExtukManager;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/updater/stub/ExtukManager;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/stub/StubHttpRequester;)V

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->fetchExtuk(Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;)V

    return-void
.end method

.method protected abstract onRequestReady()V
.end method

.method protected request()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->mUrlBuilder:Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;->build()Ljava/net/URL;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request: url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StubHttpRequester"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 47
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->logResponseHeaders(Ljava/net/HttpURLConnection;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->readFromStream(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 49
    :cond_0
    :try_start_2
    new-instance p0, Lcom/sec/internal/constants/ims/updater/StubApiConstants$HttpFailureResponseException;

    invoke-direct {p0, v2}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$HttpFailureResponseException;-><init>(I)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 57
    :cond_1
    throw p0
.end method
