.class public Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;
.super Lcom/sec/internal/helper/StateMachine;
.source "FileDownloadHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field mAccessURL:Ljava/lang/String;

.field mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field mDefaultState:Lcom/sec/internal/helper/State;

.field mDownloadCompletedState:Lcom/sec/internal/helper/State;

.field mDownloadingPartsState:Lcom/sec/internal/helper/State;

.field mFileName:Ljava/lang/String;

.field mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

.field mLocalFilePath:Ljava/lang/String;

.field mMaxRange:I

.field mParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field mPartNum:I

.field mRetrievingHeadState:Lcom/sec/internal/helper/State;

.field mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field mTotalLength:I

.field mTotalParts:I


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndRemoveFromPendingList(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->checkAndRemoveFromPendingList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLargeFileDownloadSuccess(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->handleLargeFileDownloadSuccess([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetAllParams(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->resetAllParams()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendPayloadDownloaded(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->sendPayloadDownloaded()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;)V
    .locals 1

    .line 55
    const-string v0, "FileDownloadHandler"

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 34
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    .line 35
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 36
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$RetrievingHeadState-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mRetrievingHeadState:Lcom/sec/internal/helper/State;

    .line 37
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadingPartsState-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDownloadingPartsState:Lcom/sec/internal/helper/State;

    .line 38
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler$DownloadCompletedState-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDownloadCompletedState:Lcom/sec/internal/helper/State;

    .line 56
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "FileDownloadHandler Constructor"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 59
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 61
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    const p1, 0x5b6d53

    .line 62
    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mMaxRange:I

    .line 63
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->resetAllParams()V

    .line 64
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->initStates()V

    .line 65
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->start()V

    return-void
.end method

.method private checkAndRemoveFromPendingList(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndRemoveFromPendingList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/params/PendingRequestParamList;->getInstance(I)Lcom/sec/internal/ims/cmstore/params/PendingRequestParamList;

    move-result-object p0

    iget v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    iget-wide v1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    .line 457
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/params/PendingRequestParamList;->removeListUsingRowId(IJ)V

    :cond_0
    return-void
.end method

.method private handleLargeFileDownloadSuccess([B)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLargeFileDownloadSuccess: partNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string p1, "handleLargeFileDownloadSuccess Unable to get Cache Dir!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 262
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mFileName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-static {v0, v2, v3}, Lcom/sec/internal/helper/FilePathGenerator;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLocalFilePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string v2, "handleLargeFileDownloadSuccess Create internal path failed!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 275
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string v2, "handleLargeFileDownloadSuccess localFilePath isEmpty false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 279
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 284
    throw p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 286
    :goto_1
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private initStates()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mRetrievingHeadState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDownloadingPartsState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mRetrievingHeadState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDownloadCompletedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mDownloadingPartsState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 74
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private resetAllParams()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetAllParams"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalLength:I

    .line 92
    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mPartNum:I

    .line 93
    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mTotalParts:I

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLargeFileDownloadParams:Lcom/sec/internal/omanetapi/file/LargeFileDownloadParams;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mAccessURL:Ljava/lang/String;

    return-void
.end method

.method private sendPayloadDownloaded()Z
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPayloadDownloaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mAccessURL:Ljava/lang/String;

    .line 295
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setPayloadUrl(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setFilePath(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 296
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object v0

    .line 297
    sget-object v1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->ONE_PAYLOAD_DOWNLOAD:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    .line 299
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object v0

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    instance-of v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 301
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_ONE_DOWNLOAD_COMPLETED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {p0, v2, v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_0

    .line 304
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DOWNLOAD_RETRIVED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {p0, v2, v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 309
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendPayloadDownloaded localFilePath empty case"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 0

    .line 315
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 317
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    :cond_0
    return-object p0
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFailedCall"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 366
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGoToEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 0

    .line 396
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public start()V
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "start()"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start() mAccessURL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mAccessURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mAccessURL:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileDownloadHandler;->mParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 86
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_LARGE_FILE_DOWNLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 0
    return-void
.end method

.method public update(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
