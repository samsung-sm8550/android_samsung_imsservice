.class Lcom/sec/internal/ims/core/WfcEpdgManager$4;
.super Lcom/sec/ims/ISimMobilityStatusListener$Stub;
.source "WfcEpdgManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimMobilityStateChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1061
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1062
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    .line 1063
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v2, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    aget-boolean v2, v2, p1

    if-eq v2, v0, :cond_0

    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$misSimAvailable(Lcom/sec/internal/ims/core/WfcEpdgManager;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSimMobilityStateChanged: simMobility "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " phoneID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v1, v1, Lcom/sec/internal/ims/core/WfcEpdgManager;->mCurrentSimMobilityState:[Z

    aput-boolean v0, v1, p1

    .line 1066
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1067
    iget-object v1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$4;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
