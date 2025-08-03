.class Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;
.super Landroid/os/Handler;
.source "CmcMediaController.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Landroid/os/Looper;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_5

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    goto/16 :goto_3

    .line 85
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVT_RETRY_CREATE_RELAY_CHANNEL extStreamId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " intStreamId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$fgetmRelayStreamMap(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 89
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$fgetmRelayStreamMap(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 91
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$mgetSession(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->getSessionId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$mgetSession(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object v4

    .line 93
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$fgetmPendingRelayChannelCreation(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 95
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$fgetmCmcMediaIntf(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    move-result-object v5

    invoke-interface {v5, v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreCreateRelayChannel(II)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_3

    .line 97
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v3, :cond_2

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 98
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x70000005

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$fgetmCmcMediaIntf(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;->sreStartRelayChannel(II)I

    .line 100
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 101
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->setRelayChannelId(I)V

    .line 102
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Pending RelayChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with direction "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    goto :goto_2

    .line 104
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to create relay channel relayChannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$mresetCreateRelayChannelParams(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;)V

    goto :goto_3

    .line 81
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;

    iget-object p1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;->-$$Nest$monImsRelayEvent(Lcom/sec/internal/ims/servicemodules/volte2/CmcMediaController;Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V

    :goto_3
    return-void
.end method
