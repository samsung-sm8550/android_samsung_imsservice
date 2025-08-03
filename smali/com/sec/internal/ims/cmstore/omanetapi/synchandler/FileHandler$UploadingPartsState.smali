.class Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;
.super Lcom/sec/internal/helper/State;
.source "FileHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " processMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_2

    .line 582
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/omanetapi/file/UploadPartInfo;

    if-nez p1, :cond_1

    .line 584
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_FILE_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 585
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadCompleteState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    iget v1, p1, Lcom/sec/internal/omanetapi/file/UploadPartInfo;->partNum:I

    add-int/lit8 v2, v1, 0x1

    .line 590
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " part uploaded for partNum "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/internal/omanetapi/file/UploadPartInfo;->partNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "partTag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/file/UploadPartInfo;->partTag:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget v3, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalParts:I

    if-gt v2, v3, :cond_2

    .line 594
    :try_start_0
    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$mgetFilePartPayload(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;I)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 596
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    .line 598
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_FILE_PART:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget v4, v4, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    invoke-virtual {v1, v3, v2, v4, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 600
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPLOAD_FILE_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 601
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadCompleteState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 577
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 578
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    .line 579
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePostLargeFilePart;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v3, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadKeyId:Ljava/lang/String;

    iget-object v7, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePostLargeFilePart;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpPostBody;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadingPartsState, Handled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p1
.end method
