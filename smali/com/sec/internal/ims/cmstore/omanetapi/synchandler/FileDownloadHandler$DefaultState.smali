.class public Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "FileDownloadHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMessage: event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    if-eqz p1, :cond_4

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)Z

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    .line 119
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$mresetAllParams(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$mcheckAndRemoveFromPendingList(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 113
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 114
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_HEAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 109
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mRetrievingHeadState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_5
    return v2
.end method
