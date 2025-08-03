.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterUp.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v2, v2, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->-$$Nest$mcreateReqUrlWithMask(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object v1, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mUrl:Ljava/lang/StringBuffer;

    iget-object v2, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    invoke-static {v0, p1, v1, v2}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->-$$Nest$mdumpAutoConfUrl(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V

    .line 37
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->openUrlConnection()Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->setUrlConnection()V

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mURLConn:Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpURLConn:Ljava/net/HttpURLConnection;

    .line 42
    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    const/4 p0, 0x1

    return p0
.end method
