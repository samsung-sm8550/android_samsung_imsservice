.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterChn.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;->setNetwork(Landroid/net/Network;)V

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->configureUrlConnection(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;

    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterChn$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterChn;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    const/4 p0, 0x1

    return p0
.end method
