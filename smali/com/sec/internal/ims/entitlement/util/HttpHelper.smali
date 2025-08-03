.class public Lcom/sec/internal/ims/entitlement/util/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HttpHelper"


# instance fields
.field protected mHttpController:Lcom/sec/internal/helper/httpclient/HttpController;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->mHttpController:Lcom/sec/internal/helper/httpclient/HttpController;

    return-void
.end method

.method private buildHttpRequestCallback(Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .locals 1

    .line 53
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;-><init>(Lcom/sec/internal/ims/entitlement/util/HttpHelper;Landroid/os/Message;)V

    return-object v0
.end method

.method private createHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->buildHttpRequestCallback(Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    .line 48
    new-instance p4, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {p4, p1, p2, p3, p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V

    return-object p4
.end method


# virtual methods
.method public executeNSDSRequest(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONArray;Landroid/os/Message;Ljavax/net/SocketFactory;Lokhttp3/Dns;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONArray;",
            "Landroid/os/Message;",
            "Ljavax/net/SocketFactory;",
            "Lokhttp3/Dns;",
            ")V"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->createHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Landroid/os/Message;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 37
    invoke-virtual {p1, p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_0
    if-eqz p6, :cond_1

    .line 40
    invoke-virtual {p1, p6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 42
    :cond_1
    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lorg/json/JSONArray;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->mHttpController:Lcom/sec/internal/helper/httpclient/HttpController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method
