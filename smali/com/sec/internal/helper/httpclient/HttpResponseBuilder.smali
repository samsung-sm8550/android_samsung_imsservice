.class public Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;
.super Ljava/lang/Object;
.source "HttpResponseBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpResponseBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildResponse(Lokhttp3/Response;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 22
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->TAG:Ljava/lang/String;

    const-string v1, "buildResponse: okhttp response is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 26
    :cond_0
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;-><init>()V

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v4}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 34
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setHeaders(Ljava/util/Map;)V

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setDataBinary([B)V

    .line 40
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->close()V

    .line 41
    invoke-static {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 42
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataBinary()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/GzipCompressionUtil;->decompress([B)Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v0, p0

    goto :goto_2

    .line 44
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataBinary()[B

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 47
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->TAG:Ljava/lang/String;

    const-string v2, "buildResponse: decompression failed, revoke"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_2
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setDataString(Ljava/lang/String;)V

    return-object v1
.end method

.method private static containsIgnoreCase(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 65
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    .line 66
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->TAG:Ljava/lang/String;

    const-string v0, "getContentEncoding: no content encoding, set to null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isGzipSupported(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 1

    .line 56
    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->getContentEncoding(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    const-string v0, "gzip"

    .line 58
    invoke-static {v0, p0}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->containsIgnoreCase(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
