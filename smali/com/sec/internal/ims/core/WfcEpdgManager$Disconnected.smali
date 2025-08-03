.class Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 607
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Disconnected]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misReadyForEpdgConnect(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 617
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Disconnected] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$meventAsString(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 645
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimReady(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 647
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 662
    :pswitch_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iput-object p1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    .line 663
    const-string v0, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misSimAvailable(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 665
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 671
    :pswitch_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iput-object p1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    goto :goto_0

    .line 687
    :pswitch_4
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ON_EPDG_DISCONNECTED IN ReadyToConnect INVALID EVENT "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 681
    :pswitch_5
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EPDG CONNECTED in disconnected state, STRANGE, please check..."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 676
    :goto_0
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 654
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimRemoved(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 656
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 631
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misEnableVoWiFiFromMnoInfo(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable VoWiFi, delay for update ImsSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 635
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/16 p1, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimReady(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 639
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 624
    :pswitch_9
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misReadyForEpdgConnect(Lcom/sec/internal/ims/core/WfcEpdgManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 625
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Connecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
