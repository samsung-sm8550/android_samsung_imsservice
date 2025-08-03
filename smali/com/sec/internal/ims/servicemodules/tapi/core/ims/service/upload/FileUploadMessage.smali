.class public Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;
.super Ljava/lang/Object;
.source "FileUploadMessage.java"


# static fields
.field private static final EVENT_CANCEL_UPLOAD:I = 0x2

.field private static final EVENT_RETRY_UPLOAD:I = 0x7

.field private static final EVENT_UPLOAD_CANCELED:I = 0x6

.field private static final EVENT_UPLOAD_COMPLETED:I = 0x5

.field private static final EVENT_UPLOAD_FILE:I = 0x1

.field private static final EVENT_UPLOAD_PROGRESS:I = 0x3

.field private static final EVENT_UPLOAD_STARTED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "FileUploadMessage"

.field private static final MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private bFileIconRequired:Z

.field private bRetryEvent:Z

.field private mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

.field private mContentUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mFileUploadId:Ljava/lang/String;

.field private mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

.field private final mHandler:Landroid/os/Handler;

.field private final mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

.field private final mPhoneId:I

.field private mRetryCnt:I

.field private mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

.field private final mTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

.field private mUploadBytes:J

.field private mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;


# direct methods
.method static bridge synthetic -$$Nest$fgetbRetryEvent(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryCnt(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mRetryCnt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbRetryEvent(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetryCnt(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mRetryCnt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUploadBytes(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleProgressUpadate(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleProgressUpadate(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTransferCanceled(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferCanceled(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTransferCompleted(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferCompleted(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTransferStarted(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferStarted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misUploadCompleted(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->isUploadCompleted()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misUploadStated(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->isUploadStated()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mtryAbort(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->tryAbort()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryUpload(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->tryUpload()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImConfig;Landroid/os/Looper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance p7, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    invoke-direct {p7}, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;-><init>()V

    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    .line 123
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    .line 128
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mRetryCnt:I

    .line 143
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    .line 153
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$1;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    .line 207
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mPhoneId:I

    .line 208
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContext:Landroid/content/Context;

    .line 209
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 210
    invoke-virtual {p7}, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->generate()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    .line 211
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContentUri:Landroid/net/Uri;

    .line 212
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFilePath:Ljava/lang/String;

    .line 213
    iput-wide p8, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileSize:J

    .line 214
    iput-boolean p10, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bFileIconRequired:Z

    .line 215
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;

    invoke-direct {p1, p0, p4}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage$2;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private convertTimeToLong(Ljava/lang/String;)J
    .locals 0

    .line 388
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 390
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private handleProgressUpadate(J)V
    .locals 6

    .line 402
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileSize:J

    move-wide v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadProgress(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method private handleTransferAborted()V
    .locals 3

    .line 462
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->ABORTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 463
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v1, :cond_0

    .line 464
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    :cond_0
    return-void
.end method

.method private handleTransferCanceled(II)V
    .locals 4

    .line 444
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle file upload state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", CANCELED, retry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_1

    .line 447
    sget-object p1, Lcom/gsma/services/rcs/upload/FileUpload$State;->FAILED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 448
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz p2, :cond_2

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    invoke-interface {p2, p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    goto :goto_1

    .line 452
    :cond_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bRetryEvent:Z

    .line 453
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private handleTransferCompleted(Ljava/lang/String;)V
    .locals 3

    .line 424
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->parseResult(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    sget-object p1, Lcom/gsma/services/rcs/upload/FileUpload$State;->TRANSFERRED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    goto :goto_0

    .line 427
    :cond_0
    sget-object p1, Lcom/gsma/services/rcs/upload/FileUpload$State;->FAILED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 430
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz p1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    .line 432
    sget-object p1, Lcom/gsma/services/rcs/upload/FileUpload$State;->TRANSFERRED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-ne p1, v0, :cond_1

    .line 433
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadComplete(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V

    :cond_1
    return-void
.end method

.method private handleTransferStarted()V
    .locals 3

    .line 412
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->STARTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v1, :cond_0

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    :cond_0
    return-void
.end method

.method private isUploadCompleted()Z
    .locals 1

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->STARTED:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUploadStated()Z
    .locals 1

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseResult(Ljava/lang/String;)Z
    .locals 40

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 348
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 354
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->isThumbnailExist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    new-instance v3, Lcom/gsma/services/rcs/upload/FileUploadInfo;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 356
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->convertTimeToLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 357
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileSize()J

    move-result-wide v9

    .line 358
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v11

    .line 359
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailDataUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 360
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailDataUntil()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->convertTimeToLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 361
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailFileSize()J

    move-result-wide v15

    .line 362
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailContentType()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v21}, Lcom/gsma/services/rcs/upload/FileUploadInfo;-><init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;JJ)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    .line 364
    :cond_1
    new-instance v3, Lcom/gsma/services/rcs/upload/FileUploadInfo;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 365
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->convertTimeToLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v26

    .line 366
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileSize()J

    move-result-wide v27

    .line 367
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v29

    sget-object v30, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v35, ""

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v39}, Lcom/gsma/services/rcs/upload/FileUploadInfo;-><init>(Landroid/net/Uri;JLjava/lang/String;JLjava/lang/String;Landroid/net/Uri;JJLjava/lang/String;JJ)V

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    .line 375
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v1

    .line 371
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse upload result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return v1
.end method

.method private tryAbort()V
    .locals 3

    .line 328
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort uploading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->cancel(Z)V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    if-nez v0, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->handleTransferAborted()V

    :cond_1
    return-void
.end method

.method private tryUpload()V
    .locals 14

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->getState()Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->FINISHED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    if-eq v0, v1, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :goto_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileSize:J

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContentUri:Landroid/net/Uri;

    iget-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->bFileIconRequired:Z

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mPhoneId:I

    .line 304
    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-interface {v1, v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 305
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpTrustAllCerts()Z

    move-result v11

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Network;ZLcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 308
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 309
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadResumeFileTask;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    goto :goto_2

    .line 311
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    .line 313
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mUploadTask:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->execute(Ljava/util/concurrent/Executor;)V

    .line 318
    sget-object v0, Lcom/gsma/services/rcs/upload/FileUpload$State;->INITIATING:Lcom/gsma/services/rcs/upload/FileUpload$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    if-eqz v1, :cond_3

    .line 320
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;->onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V

    :cond_3
    return-void

    .line 315
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public abortUploadTask()V
    .locals 1

    .line 287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addListener(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mListener:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;

    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getFileUploadId()Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadId:Ljava/lang/String;

    return-object p0
.end method

.method public getFileUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mFileUploadInfo:Lcom/gsma/services/rcs/upload/FileUploadInfo;

    return-object p0
.end method

.method public getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mState:Lcom/gsma/services/rcs/upload/FileUpload$State;

    return-object p0
.end method

.method public startUploadTask()V
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
