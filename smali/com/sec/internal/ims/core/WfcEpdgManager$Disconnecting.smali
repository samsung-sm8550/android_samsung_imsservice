.class Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 861
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Disconnecting]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgAvailable:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    const/4 v3, 0x1

    .line 863
    aput-boolean v2, v1, v3

    .line 864
    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$fgetmEpdgPhysicalInterface(Lcom/sec/internal/ims/core/WfcEpdgManager;)[I

    move-result-object v0

    aput v2, v0, v2

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$fgetmEpdgPhysicalInterface(Lcom/sec/internal/ims/core/WfcEpdgManager;)[I

    move-result-object v0

    aput v2, v0, v3

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iput-boolean v2, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    .line 867
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$mgetEpdgManager(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mEpdgHandoverListener:Lcom/sec/epdg/EpdgManager$EpdgListener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/EpdgManager;->removeListenerBySim(Lcom/sec/epdg/EpdgManager$EpdgListener;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$mgetEpdgManager(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->disconnectService()V

    .line 871
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$mgetEpdgManager(Lcom/sec/internal/ims/core/WfcEpdgManager;)Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgManager;->stopService()V

    .line 872
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v0, 0xa

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 905
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 877
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Disconnecting] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$meventAsString(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 885
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 880
    :pswitch_1
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "INVALID STATE ON EPDG CONNECTED IN DISCONNECTING STATE for EPDG"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 896
    :cond_0
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
