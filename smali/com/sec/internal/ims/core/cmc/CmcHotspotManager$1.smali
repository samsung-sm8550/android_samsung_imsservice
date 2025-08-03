.class Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CmcHotspotManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->isHotspotEnabled()Z

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-static {p2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->-$$Nest$fgetmLastHotspotEnabledFromReceiver(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)Z

    move-result p2

    if-eq p2, p1, :cond_0

    .line 65
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-static {p2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHotspotStateChangedReceiver: Hotspot state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->-$$Nest$fgetmLastHotspotEnabledFromReceiver(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->-$$Nest$msetLastHotspotState(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Z)V

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->-$$Nest$mnotifyHotspotStateChange(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V

    :cond_0
    return-void
.end method
