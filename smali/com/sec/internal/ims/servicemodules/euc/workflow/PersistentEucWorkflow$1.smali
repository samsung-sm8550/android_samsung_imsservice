.class Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;
.super Ljava/lang/Object;
.source "PersistentEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .locals 8

    .line 143
    const-string v0, " was not found!"

    const-string v1, "Wrong state: "

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getStatus()Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getId()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    .line 146
    new-instance v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 147
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    invoke-direct {v5, v3, v4, v6, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 149
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;->invalidate()V

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p1, v5}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 156
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$2;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v6, :cond_3

    if-eq v0, v2, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    goto/16 :goto_0

    .line 182
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal error. Msg will be send on a new regi for identity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 178
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Network error. Message will not be send"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {p0, v5, p1, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object p1

    .line 159
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$2;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v6, :cond_5

    if-ne v0, v2, :cond_4

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {p0, v5, p1, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 169
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for EUCR with id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for EUCR with key="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal persistent EUC state!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 161
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {p0, v5, p1, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EUCR with id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EUCR with key="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to change EUCs state in persistence for EUCR with id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/PersistentEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to change EUCs state in persistence for EUCR with key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
