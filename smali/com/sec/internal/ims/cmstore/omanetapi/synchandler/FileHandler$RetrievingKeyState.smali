.class Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;
.super Lcom/sec/internal/helper/State;
.source "FileHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetrievingKeyState processMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v3, v4

    goto/16 :goto_2

    .line 537
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/LargeFileResponse;

    .line 538
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v2, p1, Lcom/sec/internal/omanetapi/common/data/LargeFileResponse;->uploadKeyId:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadKeyId:Ljava/lang/String;

    .line 539
    iget v2, p1, Lcom/sec/internal/omanetapi/common/data/LargeFileResponse;->partSizeMin:I

    .line 540
    iget p1, p1, Lcom/sec/internal/omanetapi/common/data/LargeFileResponse;->partSizeMax:I

    .line 541
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$mcalculatePartSize(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    iput p1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    const/4 p1, 0x0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {v1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$mgetFilePartPayload(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;I)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_1

    .line 546
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v4, " unable to get payload upload failed "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FT_UPLOAD_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-interface {v2, v4, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    .line 550
    :goto_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 552
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_FILE_PART:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget v4, v4, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 553
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadingPartsState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_2

    .line 534
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePostLargeFile;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileName:Ljava/lang/String;

    iget v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v9, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePostLargeFile;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :goto_2
    if-eqz v3, :cond_3

    .line 561
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrievingKeyState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method
