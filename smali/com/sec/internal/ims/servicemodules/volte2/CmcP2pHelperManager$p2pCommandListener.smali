.class public Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;
.super Ljava/lang/Object;
.source "CmcP2pHelperManager.java"

# interfaces
.implements Lcom/samsung/android/cmcp2phelper/CommandListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 324
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveCommand sourceDeviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", message "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 327
    new-instance p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;-><init>(Lorg/json/JSONObject;)V

    .line 328
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive msg event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", sid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mCmcSendTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v0, p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mEventType:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 p2, 0x66

    if-eq v0, p2, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    const-string/jumbo p2, "reason"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 343
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reset connection reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "rx, 102, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7000000c

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 345
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->resetConnection()V

    goto :goto_0

    .line 334
    :cond_1
    iget p1, p2, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;->mState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->-$$Nest$mhandleP2pCommandForOutgoingState(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x5a

    if-ne p1, p2, :cond_3

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$p2pCommandListener;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->-$$Nest$mhandleP2pCommandForServerError(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onReceiveCommend, JSONException!! "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
