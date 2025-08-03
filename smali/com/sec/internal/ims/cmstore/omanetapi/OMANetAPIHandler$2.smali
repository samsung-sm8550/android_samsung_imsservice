.class Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;
.super Ljava/lang/Object;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveOn()V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMoveOn: start init sync mIsRunning:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->-$$Nest$fgetmIsRunning(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->-$$Nest$fgetmIsRunning(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v0, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V

    :cond_0
    return-void
.end method
