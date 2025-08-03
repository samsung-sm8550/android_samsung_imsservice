.class Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;
.super Lcom/sec/internal/helper/State;
.source "FileDownloadHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadCompletedState processMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$1;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$msendPayloadDownloaded(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 237
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$mresetAllParams(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V

    .line 240
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadCompletedState, Handled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1
.end method
