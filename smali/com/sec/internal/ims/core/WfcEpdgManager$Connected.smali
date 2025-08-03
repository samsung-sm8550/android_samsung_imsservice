.class Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;
.super Lcom/sec/internal/helper/State;
.source "WfcEpdgManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 781
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enter [Connected]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    .line 783
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

    .line 784
    invoke-interface {v1}, Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;->onEpdgServiceConnected()V

    goto :goto_0

    .line 786
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$mqueryVodaProvision(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 791
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Connected] processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$meventAsString(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xc8

    const/4 v3, 0x7

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 839
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    iput-object v4, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    .line 842
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 831
    :pswitch_3
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EPDG disconnect in [Connected] state, may be crash has happenened, need to recover.."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnected:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnected;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 826
    :pswitch_4
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[Connected] ON_EPDG_CONNECTED already in connected state.... "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 851
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mReasonIntent:Landroid/content/Intent;

    goto :goto_0

    .line 815
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-boolean v4, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    if-eqz v4, :cond_1

    .line 816
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 819
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 820
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimRemoved(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 800
    :pswitch_7
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-boolean v4, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsEpdgReqTerminate:Z

    if-eqz v4, :cond_2

    .line 801
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 804
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 805
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$monSimReady(Lcom/sec/internal/ims/core/WfcEpdgManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    .line 810
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {p0, v3, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 795
    :pswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$Connected;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mDisconnecting:Lcom/sec/internal/ims/core/WfcEpdgManager$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
