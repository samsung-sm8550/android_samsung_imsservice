.class Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;
.super Landroid/os/Handler;
.source "IpcDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcher;Landroid/os/Looper;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    .line 78
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 85
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 87
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher$ImsModemSender;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcher;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->handleSendIpc([B)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 0
    return-void
.end method
