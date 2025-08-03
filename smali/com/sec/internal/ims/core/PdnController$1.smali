.class Lcom/sec/internal/ims/core/PdnController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PdnController.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/PdnController;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 p1, 0x69

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$1;->this$0:Lcom/sec/internal/ims/core/PdnController;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
