.class Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;
.super Ljava/lang/Object;
.source "ServiceModuleManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISimEventListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    return-void
.end method


# virtual methods
.method public onReady(IZ)V
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    .line 1139
    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReady: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " absent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "SIM state="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    if-ne v0, p2, :cond_0

    .line 1142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$SimEventListener;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
