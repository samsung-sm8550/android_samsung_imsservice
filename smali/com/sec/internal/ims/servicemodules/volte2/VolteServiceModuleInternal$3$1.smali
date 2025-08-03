.class Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3$1;
.super Lcom/sec/ims/ImsManager$EpdgListener;
.source "VolteServiceModuleInternal.java"


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;

    invoke-direct {p0}, Lcom/sec/ims/ImsManager$EpdgListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpdgReleaseCall(I)V
    .locals 3

    .line 1030
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEpdgReleaseCall, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3$1;->this$1:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal$3;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
