.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterVzw.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 3

    .line 44
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string/jumbo v2, "open urlConnection"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->configureUrlConnection(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    const/4 p0, 0x1

    return p0
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 4

    .line 54
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    if-nez p1, :cond_0

    .line 57
    iget p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    const-string/jumbo p1, "setNetwork: reset mSocketFactory"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 58
    sput-object p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    return-void
.end method
