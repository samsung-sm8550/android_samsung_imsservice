.class Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;
.super Lcom/sec/internal/helper/State;
.source "FileHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 498
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 499
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadingSmallFileState processMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 507
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;

    .line 508
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileUploadData:Ljava/util/List;

    invoke-interface {v1, v4, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_ALL_OBJECT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 510
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateFile;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    iget-object v6, v5, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v2, v6, p1, v3, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageCreateFile;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :goto_0
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 518
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadingSmallFileState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3
.end method
