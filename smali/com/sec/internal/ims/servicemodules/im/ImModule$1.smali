.class Lcom/sec/internal/ims/servicemodules/im/ImModule$1;
.super Landroid/content/BroadcastReceiver;
.source "ImModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 189
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received UpsmEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$monUltraPowerSavingModeChanged(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    return-void
.end method
