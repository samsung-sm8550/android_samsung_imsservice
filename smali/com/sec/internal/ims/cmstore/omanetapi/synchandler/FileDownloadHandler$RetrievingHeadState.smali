.class Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;
.super Lcom/sec/internal/helper/State;
.source "FileDownloadHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetrievingHeadState processMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iput-object p1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    .line 152
    iget-object p1, p1, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->contentLength:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 153
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalLength:I

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalLength:I

    if-lez v1, :cond_2

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->acceptRanges:Ljava/lang/String;

    if-eqz v2, :cond_2

    int-to-double v1, v1

    .line 157
    iget v4, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mMaxRange:I

    int-to-double v4, v4

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalParts:I

    goto :goto_0

    .line 159
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 162
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalParts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalParts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxRange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mMaxRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iget-object p1, p1, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->contentDisposition:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->contentDisposition:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mFileName:Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mFileName:Ljava/lang/String;

    const-string v2, "\""

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mFileName:Ljava/lang/String;

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAcceptRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->acceptRanges:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mContentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    iget-object v2, v2, Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_PART:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 170
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDownloadingPartsState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageHeadLargeFile;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v5, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mAccessURL:Ljava/lang/String;

    invoke-direct {v1, v4, v5, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageHeadLargeFile;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :goto_1
    if-eqz v3, :cond_5

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrievingHeadState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3
.end method
