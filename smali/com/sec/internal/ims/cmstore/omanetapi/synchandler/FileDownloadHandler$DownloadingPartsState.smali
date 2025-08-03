.class Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;
.super Lcom/sec/internal/helper/State;
.source "FileDownloadHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadingPartsState processMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 211
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->strbody:[B

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$mhandleLargeFileDownloadSuccess(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;[B)V

    .line 213
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_PART:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-wide v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 193
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->isMessageStatusCancelledorDeleted(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    iget v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalParts:I

    if-ge v1, v2, :cond_3

    add-int/2addr v1, v3

    .line 198
    iput v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iget-object v1, v1, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->acceptRanges:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    sub-int/2addr v2, v3

    iget v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mMaxRange:I

    mul-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mMaxRange:I

    iget v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    mul-int/2addr v2, v1

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 201
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rangeHeader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", partNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetLargeFile;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v6, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v8, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mAccessURL:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iget-object v9, v2, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->contentType:Ljava/lang/String;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetLargeFile;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "All parts downloaded:"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_PART_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 207
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDownloadCompletedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_0
    if-eqz v3, :cond_4

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadingPartsState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3
.end method
