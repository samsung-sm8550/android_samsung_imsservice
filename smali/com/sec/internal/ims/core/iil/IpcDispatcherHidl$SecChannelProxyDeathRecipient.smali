.class final Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;
.super Ljava/lang/Object;
.source "IpcDispatcherHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->notifyChannelProxyDied(J)V

    return-void
.end method
