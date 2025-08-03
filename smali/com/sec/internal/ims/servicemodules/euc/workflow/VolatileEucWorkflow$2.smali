.class Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;
.super Ljava/lang/Object;
.source "VolatileEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$fgetmCurrentAlarm(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$fgetmCurrentAlarm(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 249
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$munscheduleCurrentAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$mscheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onStatus(Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V
    .locals 8

    .line 189
    const-string v0, " was not found!"

    const-string v1, "Wrong state: "

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getStatus()Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getId()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getOwnIdentity()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 193
    new-instance v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-direct {v5, v3, v4, v6, p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 197
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p1, v5}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 199
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucSendResponseStatus$Status:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v6, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    goto/16 :goto_0

    .line 228
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal error. Msg will be send on a new regi for identity: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 223
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Network error. Message will not be send"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->FAILED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {p1, v5, v0, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    goto/16 :goto_0

    .line 201
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object p1

    .line 202
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$3;->$SwitchMap$com$sec$internal$ims$servicemodules$euc$data$EucState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v6, :cond_4

    if-ne v0, v2, :cond_3

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {p1, v5, v0, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    goto/16 :goto_0

    .line 214
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

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

    .line 216
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

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

    .line 218
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal volatile EUC state!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 204
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {p1, v5, v0, v7}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;->reschedule(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    goto :goto_0

    .line 235
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

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

    .line 236
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

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

    .line 239
    :catch_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to change EUCs state in persistence for EUCR with id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

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
