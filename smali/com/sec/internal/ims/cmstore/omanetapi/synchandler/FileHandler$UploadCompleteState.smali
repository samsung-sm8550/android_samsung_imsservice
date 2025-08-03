.class Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;
.super Lcom/sec/internal/helper/State;
.source "FileHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 620
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 621
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

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

    .line 623
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 637
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 638
    new-instance p1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;

    invoke-direct {p1}, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;-><init>()V

    .line 639
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    iput-object v4, p1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->contentType:Ljava/lang/String;

    .line 640
    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileName:Ljava/lang/String;

    iput-object v4, p1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->fileName:Ljava/lang/String;

    .line 641
    iget v4, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalLength:I

    iput v4, p1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->size:I

    .line 642
    iput-object v1, p1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;->href:Ljava/net/URL;

    .line 643
    iget-object v1, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileUploadData:Ljava/util/List;

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 644
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_ALL_OBJECT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 645
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    .line 646
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 648
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 625
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfos:Lcom/sec/internal/omanetapi/file/UploadPartInfos;

    if-nez v1, :cond_2

    .line 626
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " upload failed "

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_FT_UPLOAD_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 630
    :cond_2
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sec/internal/omanetapi/file/UploadPartInfo;

    iput-object p1, v1, Lcom/sec/internal/omanetapi/file/UploadPartInfos;->uploadPartInfoArray:[Lcom/sec/internal/omanetapi/file/UploadPartInfo;

    .line 631
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfos:Lcom/sec/internal/omanetapi/file/UploadPartInfos;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfoList:Ljava/util/List;

    iget-object v2, v1, Lcom/sec/internal/omanetapi/file/UploadPartInfos;->uploadPartInfoArray:[Lcom/sec/internal/omanetapi/file/UploadPartInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sec/internal/omanetapi/file/UploadPartInfo;

    iput-object p1, v1, Lcom/sec/internal/omanetapi/file/UploadPartInfos;->uploadPartInfoArray:[Lcom/sec/internal/omanetapi/file/UploadPartInfo;

    .line 632
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePostLargeFileComplete;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadKeyId:Ljava/lang/String;

    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfos:Lcom/sec/internal/omanetapi/file/UploadPartInfos;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessagePostLargeFileComplete;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Lcom/sec/internal/omanetapi/file/UploadPartInfos;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :goto_0
    if-eqz v3, :cond_3

    .line 657
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadCompleteState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3
.end method
