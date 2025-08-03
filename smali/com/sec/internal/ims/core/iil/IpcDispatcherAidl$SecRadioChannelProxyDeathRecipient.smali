.class final Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;
.super Ljava/lang/Object;
.source "IpcDispatcherAidl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;

    invoke-static {v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->-$$Nest$fgetmBinderDeathCount(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->notifyChannelProxyDied(J)V

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;->this$0:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;

    invoke-static {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->-$$Nest$fgetmBinderDeathCount(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->-$$Nest$fputmBinderDeathCount(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;J)V

    return-void
.end method
