.class Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;
.super Ljava/lang/Object;
.source "WfcEpdgManager.java"

# interfaces
.implements Lcom/sec/epdg/EpdgManager$ConnectionListener;


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;->this$1:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .line 703
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bind EpdgService success."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;->this$1:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 v0, 0x0

    .line 705
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;->this$1:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    iget-object v1, v1, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$mgetEpdgManager(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;->this$1:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    iget-object v2, v2, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

    invoke-virtual {v1, v2, v0}, Lcom/sec/epdg/EpdgManager;->addListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 712
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unbind EpdgService success."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;->this$1:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mWfcEpdgConnectionListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;

    .line 714
    invoke-interface {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;->onEpdgServiceDisconnected()V

    goto :goto_0

    .line 717
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting$1;->this$1:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v0, 0x9

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method
