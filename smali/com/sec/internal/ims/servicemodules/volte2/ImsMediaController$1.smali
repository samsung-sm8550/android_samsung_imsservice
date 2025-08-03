.class Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;
.super Landroid/os/Handler;
.source "ImsMediaController.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Landroid/os/Looper;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 87
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    iget-object p1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->-$$Nest$monImsMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    :goto_0
    return-void
.end method
