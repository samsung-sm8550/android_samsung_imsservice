.class public Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;
.super Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;
.source "UploadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UploadFileTask"


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mEncodedFileName:Ljava/lang/String;

.field protected mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

.field protected final mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field protected mPhoneId:I

.field protected mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

.field protected mTotal:J

.field protected mTransferred:J

.field protected mUploadProgressElapsed:J

.field protected thumbFileName:Ljava/lang/String;

.field protected thumbnailData:[B

.field protected thumbnailType:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;)V
    .locals 2

    .line 89
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;-><init>(Landroid/os/Looper;)V

    .line 90
    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    .line 92
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    .line 93
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)Z
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result p0

    return p0
.end method

.method private generateFileInfo()V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 402
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    goto :goto_0

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFileName:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    invoke-static {v1, v2, v0}, Lcom/sec/internal/helper/FileUtils;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    .line 407
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    .line 408
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 409
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 411
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->bFileIcon:Z

    if-eqz v2, :cond_1

    .line 412
    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->generateThumbnailData(Landroid/net/Uri;Ljava/lang/String;)V

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    .line 417
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v2, "support_encoding_filename_by_server"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 418
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v2, "file_name_length_limit_In_server"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v1

    .line 419
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    const-string v3, "UTF-8"

    if-lez v1, :cond_2

    :try_start_1
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v1, :cond_2

    .line 422
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getTrimmedFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_2
    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 427
    :catch_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v2, "UnsupportedEncodingException or IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 431
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEncodedFileName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 433
    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    .line 434
    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    goto :goto_2

    .line 436
    :cond_4
    const-string/jumbo v1, "thumb"

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    .line 439
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    goto :goto_3

    .line 441
    :cond_5
    const-string v0, "image/bmp"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    :cond_6
    :goto_3
    return-void
.end method

.method private generateThumbnailData(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x42

    const/16 v1, 0x1400

    const v2, 0xc800

    if-eqz p2, :cond_1

    .line 448
    const-string/jumbo v3, "video"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 449
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v4, "support_highresolutionvideo_thumbnail"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {p2, p1, v3}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getVideoThumbnailByteArray(Landroid/content/Context;Landroid/net/Uri;I)[B

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 452
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    if-nez p2, :cond_3

    .line 453
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v3, "support_highresolutionimage_thumbnail"

    invoke-interface {p2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 454
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-static {p2, p1, v2, v1}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getThumbnailByteArray(Landroid/content/Context;Landroid/net/Uri;II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    goto :goto_1

    .line 456
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    const/16 v2, 0x5f

    invoke-static {p2, p1, v1, v2}, Lcom/sec/internal/ims/util/ThumbnailUtil;->getThumbnailByteArray(Landroid/content/Context;Landroid/net/Uri;II)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 460
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    if-nez p1, :cond_5

    .line 461
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p1

    .line 462
    const-string p2, "DTM"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "DTR"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 465
    :cond_4
    new-array p1, v0, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    .line 481
    const-string p1, "image/bmp"

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    .line 482
    const-string p1, "dummy.txt.txt.bmp"

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    :cond_5
    return-void

    :array_0
    .array-data 1
        0x42t
        0x4dt
        0x42t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3et
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        -0x40t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getRequestContentLength(Lcom/sec/internal/helper/HttpRequest;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 269
    const-string/jumbo v2, "text/plain"

    const/4 v3, 0x1

    const-string/jumbo v4, "tid"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v2, v3}, Lcom/sec/internal/helper/HttpRequest;->getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 271
    const-string v4, "contentlength_in_byte"

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    .line 272
    const-string v6, "Thumbnail"

    invoke-virtual {p1, v6, p4, p3, v5}, Lcom/sec/internal/helper/HttpRequest;->getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p3

    array-length p2, p2

    int-to-long v6, p2

    add-long/2addr p3, v6

    add-long/2addr v2, p3

    .line 273
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz p2, :cond_0

    invoke-interface {p2, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 274
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr v2, p2

    .line 277
    :cond_0
    const-string p2, "File"

    invoke-virtual {p1, p2, p6, p5, v5}, Lcom/sec/internal/helper/HttpRequest;->getPartHeaderLength(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide p1

    add-long/2addr p1, v0

    add-long/2addr v2, p1

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz p0, :cond_1

    invoke-interface {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 279
    invoke-virtual {p6}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-long p0, p0

    add-long/2addr v2, p0

    .line 282
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\r\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "--"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "00content0boundary00"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v2, p0

    return-wide v2
.end method

.method private getTrimmedFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 287
    const-string p0, "UTF-8"

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTrimmedFileName() fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", limitSize= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_0
    invoke-static {p1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 293
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 297
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v2

    :goto_1
    if-lez v4, :cond_2

    sub-int v6, v0, v5

    if-le v6, p2, :cond_2

    add-int/lit8 v6, v4, -0x1

    .line 303
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 304
    invoke-static {v6, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 307
    :cond_2
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 308
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trimmed fileName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 311
    :goto_2
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private handleFirstRequestResponse(I)Z
    .locals 8

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_4

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12e

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x191

    if-eq p1, v0, :cond_0

    .line 393
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v1

    .line 366
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleFirstRequestResponse: Authorization response is null!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v1

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    .line 373
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    goto :goto_0

    .line 377
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 379
    new-instance p1, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;-><init>(ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/sec/internal/ims/util/OpenIdAuth;->sendAuthRequest(Lcom/sec/internal/ims/util/OpenIdAuth$OpenIdRequest;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 384
    invoke-static {p1}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    goto :goto_0

    .line 388
    :cond_3
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "handleFirstRequestResponse: OpenId process failed!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    return v1

    .line 361
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private onUploadFileDone()V
    .locals 4

    .line 488
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Upload File done. Read http response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    const-string v1, "Upload success, handle response message."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    if-ne v1, v3, :cond_1

    .line 495
    const-string v1, "Retry uploading with deaccented mFile name."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_0

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V

    :goto_0
    return-void
.end method

.method private sendEmptyPostRequest()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUrl:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isHTTPUsedForEmptyFtHttpPOST()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "https://"

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    return-void
.end method

.method private sendFirstPostRequest()Z
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->sendEmptyPostRequest()V

    .line 321
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 323
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v2

    .line 324
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 327
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->handleFirstRequestResponse(I)Z

    move-result p0
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    .line 342
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v2, v0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return v1

    .line 331
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 332
    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 334
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v3, 0x1e

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_2

    .line 337
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " happened. Retry Upload Task."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    :goto_2
    return v1
.end method


# virtual methods
.method protected cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    .locals 1

    .line 259
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onCanceled(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    :cond_0
    return-void
.end method

.method protected cancelRequest(Lcom/sec/internal/helper/HttpRequest;Z)V
    .locals 6

    .line 219
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 221
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v1

    const/16 v2, 0x191

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v1, v2, :cond_4

    const/16 v2, 0x193

    if-eq v1, v2, :cond_3

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    const-string v1, "Retry-After"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/RetryTimerUtil;->getRetryAfter(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x5

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v1, :cond_5

    .line 237
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v1, v2, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    goto :goto_0

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v1, :cond_5

    .line 244
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNAUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-interface {v1, v2, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 255
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result p1

    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    return-void
.end method

.method protected doInBackground()Ljava/lang/Long;
    .locals 14

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v3, "mMnoStrategy is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 111
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 113
    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 114
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v3, v3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    iput-wide v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    const/4 v3, 0x0

    .line 118
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    .line 120
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->sendFirstPostRequest()Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 124
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    if-nez v4, :cond_2

    .line 125
    const-string v3, "mHttpRequest is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    .line 127
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-wide v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTotalBytes:J

    const-wide/16 v6, 0x32

    div-long/2addr v4, v6

    const-wide/32 v6, 0xf000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/32 v6, 0x7d000

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x3

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->setDefaultHeaders()V

    .line 135
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v6, v4}, Lcom/sec/internal/helper/HttpRequest;->bufferSize(I)Lcom/sec/internal/helper/HttpRequest;

    .line 137
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->generateFileInfo()V

    .line 139
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v6, "support_fthttp_contentlength"

    invoke-interface {v4, v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    iget-object v12, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->getRequestContentLength(Lcom/sec/internal/helper/HttpRequest;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Http request length:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/helper/HttpRequest;->contentLength(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->chunk(I)Lcom/sec/internal/helper/HttpRequest;

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string/jumbo v4, "tid"

    const-string/jumbo v6, "text/plain"

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTid:Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v6, v7}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    const-string v4, "Thumbnail"

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbFileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailType:Ljava/lang/String;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->thumbnailData:[B

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4, v6, v7, v8}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;

    .line 153
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onStarted()V

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v6, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;

    invoke-direct {v6, p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)V

    invoke-virtual {v4, v6}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v4

    const-string v6, "File"

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mEncodedFileName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContentType:Ljava/lang/String;

    .line 179
    invoke-virtual {v4, v6, v7, v8, v0}, Lcom/sec/internal/helper/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/HttpRequest;->progress(Lcom/sec/internal/helper/HttpRequest$UploadProgress;)Lcom/sec/internal/helper/HttpRequest;

    .line 181
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 182
    iget-wide v3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 204
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    :catch_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    return-object v1

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_6

    :catch_3
    move-exception v3

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_2

    :catch_4
    move-exception v3

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    goto :goto_4

    .line 185
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->onUploadFileDone()V
    :try_end_3
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 204
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 208
    :catch_5
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    goto :goto_5

    .line 198
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v5, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 188
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 189
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 191
    :cond_7
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 192
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/16 v4, 0x1e

    invoke-virtual {p0, v0, v4, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V

    goto :goto_3

    .line 194
    :cond_8
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " happened. Retry Upload Task."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v0, v5, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->cancelRequest(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;IIZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 210
    :goto_5
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 204
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 208
    :catch_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 209
    throw v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->doInBackground()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected getAuthorizationHeader(ILcom/sec/internal/helper/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 505
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Receive 401 Unauthorized, attempt to generate response"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {p2}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "challenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v1, ""

    if-nez v0, :cond_0

    .line 510
    const-string p1, "Got 401 and challenge is NULL!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 512
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    const-string p1, "Got 401 for SIT. Skip GBA"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 517
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/helper/HttpRequest;->getCipherSuite()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, v0, p4, p2}, Lcom/sec/internal/ims/util/HttpAuthGenerator;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "response: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected isPermanentFailCause(Lcom/sec/internal/helper/HttpRequest$HttpRequestException;)Z
    .locals 0

    .line 214
    invoke-virtual {p1}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object p0

    instance-of p0, p0, Ljava/net/UnknownHostException;

    return p0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3

    .line 99
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->onPostExecute(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onFinished()V

    .line 103
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "canceled "

    goto :goto_0

    :cond_1
    const-string p0, "finished "

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected setDefaultHeaders()V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->useNetwork(Landroid/net/Network;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    const/4 v1, 0x0

    .line 538
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/HttpRequest;->useCaches(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    const/16 v2, 0x2710

    .line 539
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    const v2, 0x1d4c0

    .line 540
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->readTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mUserAgent:Ljava/lang/String;

    .line 541
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/HttpRequest;->userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 543
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v2, "ft_with_gba"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string/jumbo v2, "use_useridentity_for_fthttp"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpuAtIndex(II)Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->getPublicId(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-3GPP-Intended-Identity"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mTrustAllCerts:Z

    if-eqz v0, :cond_2

    .line 552
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mHttpRequest:Lcom/sec/internal/helper/HttpRequest;

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    :cond_2
    return-void
.end method
