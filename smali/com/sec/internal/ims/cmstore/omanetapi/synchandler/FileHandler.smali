.class public Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;
.super Lcom/sec/internal/helper/StateMachine;
.source "FileHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field file:Ljava/io/File;

.field mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

.field mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private mContentDisposition:Ljava/lang/String;

.field mContentType:Ljava/lang/String;

.field mDefaultState:Lcom/sec/internal/helper/State;

.field mFileName:Ljava/lang/String;

.field mFileUploadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;",
            ">;"
        }
    .end annotation
.end field

.field mIsRunning:Z

.field mLocalFilePath:Ljava/lang/String;

.field mPartSize:I

.field mRetrievingKeyState:Lcom/sec/internal/helper/State;

.field mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field mTotalLength:I

.field mTotalParts:I

.field mUploadCompleteState:Lcom/sec/internal/helper/State;

.field mUploadKeyId:Ljava/lang/String;

.field mUploadPartInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/omanetapi/file/UploadPartInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUploadPartInfos:Lcom/sec/internal/omanetapi/file/UploadPartInfos;

.field mUploadingPartsState:Lcom/sec/internal/helper/State;

.field mUploadingSmallFileState:Lcom/sec/internal/helper/State;

.field param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcalculatePartSize(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->calculatePartSize(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetFilePartPayload(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;I)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->getFilePartPayload(I)Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMcsFtPayLoadData(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->getMcsFtPayLoadData()Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetAllParams(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->resetAllParams()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 1

    .line 81
    const-string v0, "FileHandler"

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 54
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$DefaultState;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 55
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingSmallFileState-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadingSmallFileState:Lcom/sec/internal/helper/State;

    .line 56
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$RetrievingKeyState-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mRetrievingKeyState:Lcom/sec/internal/helper/State;

    .line 57
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadingPartsState-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadingPartsState:Lcom/sec/internal/helper/State;

    .line 58
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;

    invoke-direct {p2, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler$UploadCompleteState-IA;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadCompleteState:Lcom/sec/internal/helper/State;

    .line 72
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    .line 74
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileUploadData:Ljava/util/List;

    .line 75
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 77
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mIsRunning:Z

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    .line 83
    const-string v0, " File Handler Constructor"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 85
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 86
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->initStates()V

    return-void
.end method

.method private calculatePartSize(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 223
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getFilePartPayload(I)Lcom/sec/internal/helper/httpclient/HttpPostBody;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalLength:I

    int-to-double v0, v0

    iget v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalParts:I

    const/4 v1, 0x0

    if-ltz p1, :cond_5

    if-lt p1, v0, :cond_0

    goto/16 :goto_6

    .line 240
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v2, p1

    .line 241
    :try_start_1
    iget v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    .line 242
    invoke-virtual {v0, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    new-array v2, v2, [B

    .line 248
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 249
    iget v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    if-ge v3, v4, :cond_2

    .line 251
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 253
    array-length v3, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 254
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " contentType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentDisposition:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 244
    :cond_4
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes skipped count not correct: count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", bytes: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", partSize: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    .line 240
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 258
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 260
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePartPayload failed invalid partNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 237
    :cond_5
    :goto_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getFilePartPayload failed invalid partNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getMcsFtPayLoadData()Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
    .locals 5

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMcsFtPayLoadData localFilePath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "form-data; name=\"file\"; filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.gsma.rcs-ft-http+xml"

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 176
    array-length v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    new-instance v3, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v2}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contentType:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filepath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " File payload size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/helper/FileUtils;->removeFile(Ljava/lang/String;)Z

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const-string v0, "multibody part is empty"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 190
    :cond_2
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>(Ljava/util/List;)V

    .line 191
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;-><init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const-string v0, "full body is added!!!!"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private initStates()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const-string v1, " initStates "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadingSmallFileState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mRetrievingKeyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadingPartsState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mRetrievingKeyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadCompleteState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadingPartsState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 99
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private resetAllParams()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset All Params"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfos:Lcom/sec/internal/omanetapi/file/UploadPartInfos;

    .line 150
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadKeyId:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalLength:I

    .line 154
    iput v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalParts:I

    .line 155
    iput v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mPartSize:I

    .line 156
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 158
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    .line 159
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentDisposition:Ljava/lang/String;

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileUploadData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 0

    .line 227
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p0

    if-nez p0, :cond_0

    .line 229
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    :cond_0
    return-object p0
.end method

.method protected getFileContentInBytes(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;)[B
    .locals 7

    .line 198
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x100

    .line 200
    :try_start_2
    new-array v2, v2, [B

    .line 202
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_0

    .line 204
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 205
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 208
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFileContentInBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bytes "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getRcsFilePayloadFromPath, all bytes: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;->Base64:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$PayloadEncoding;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 213
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return-object p1

    .line 198
    :goto_1
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :goto_3
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    .line 216
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getFileContentInBytes :: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 308
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 309
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mSyncHandlerCallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

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
    .locals 0

    if-eqz p2, :cond_0

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 1

    .line 324
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 325
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 0

    .line 339
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
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSuccessfulEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;

    invoke-direct {p2, p1, p3}, Lcom/sec/internal/ims/cmstore/params/HttpResParamsWrapper;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    .line 283
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->MOVE_ON:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

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

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const-string v0, " start"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public start(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 4

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mIsRunning:Z

    .line 109
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " start param "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->param:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfoList:Ljava/util/List;

    .line 113
    new-instance v1, Lcom/sec/internal/omanetapi/file/UploadPartInfos;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/file/UploadPartInfos;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mUploadPartInfos:Lcom/sec/internal/omanetapi/file/UploadPartInfos;

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getLocalFileData(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/omanetapi/file/FileData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v2, v1, Lcom/sec/internal/omanetapi/file/FileData;->filePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalLength:I

    .line 122
    iget-object v2, v1, Lcom/sec/internal/omanetapi/file/FileData;->contentType:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentType:Ljava/lang/String;

    .line 123
    iget-object v2, v1, Lcom/sec/internal/omanetapi/file/FileData;->contentDisposition:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mContentDisposition:Ljava/lang/String;

    .line 124
    iget-object v1, v1, Lcom/sec/internal/omanetapi/file/FileData;->fileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileName:Ljava/lang/String;

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileUploadData:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mFileUploadData:Ljava/util/List;

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mBufferDBTranslation:Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/bufferdbtranslation/BufferDBTranslation;->getThumbnailPart(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 131
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_THUMBNAIL_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 133
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const-string v0, " invalid File Data, upload failed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->mTotalLength:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isLargeSizeFile(Lcom/sec/internal/ims/cmstore/MessageStoreClient;J)Z

    move-result p1

    if-nez p1, :cond_4

    .line 137
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START_SMALL_FILE_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/FileHandler;->TAG:Ljava/lang/String;

    const-string v0, " no thumbnail exits and file size greater than 5 MB "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->FILE_API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 368
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

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
