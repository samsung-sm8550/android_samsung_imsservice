.class Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;
.super Ljava/lang/Object;
.source "CapabilityDiscoveryService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field mListener:Lcom/sec/ims/options/ICapabilityServiceEventListener;

.field final mPhoneId:I

.field final mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;Lcom/sec/ims/options/ICapabilityServiceEventListener;ILjava/lang/String;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mListener:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 243
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mPhoneId:I

    .line 244
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mToken:Ljava/lang/String;

    .line 246
    :try_start_0
    invoke-interface {p2}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->reset()V

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->-$$Nest$fgetmServiceModule(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;)Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mCapabilityListenerMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected reset()V
    .locals 2

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mListener:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    invoke-interface {v0}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
