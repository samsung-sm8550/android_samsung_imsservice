.class public Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.super Ljava/lang/Object;
.source "HttpAdapter.java"

# interfaces
.implements Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 4

    .line 185
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v3, v3, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public open(Ljava/lang/String;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->configureUrlConnection(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 146
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    const/4 p0, 0x1

    return p0
.end method

.method public request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 0
    return-void
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

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHeaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setMethod(Ljava/lang/String;)V

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mHttpMethodName:Ljava/lang/String;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 4

    .line 179
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget v1, v1, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mNetwork:Landroid/net/Network;

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

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mParams:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
