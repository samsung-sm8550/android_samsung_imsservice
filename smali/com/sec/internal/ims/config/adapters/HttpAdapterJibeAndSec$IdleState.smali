.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;
.source "HttpAdapterJibeAndSec.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapter;)V

    return-void
.end method


# virtual methods
.method public open(Ljava/lang/String;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->configureUrlConnection(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$IdleState;->this$0:Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;

    new-instance p1, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec$ReadyState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterJibeAndSec;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapter;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    const/4 p0, 0x1

    return p0
.end method
