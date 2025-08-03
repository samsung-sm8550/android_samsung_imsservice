.class public Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"


# instance fields
.field public mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

.field public mContentUri:Landroid/net/Uri;

.field public mFilePath:Ljava/lang/String;

.field public mNetwork:Landroid/net/Network;

.field public mTotalBytes:J

.field public mTransferredBytes:J

.field public mTrustAllCerts:Z

.field public mUrl:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Network;ZLjava/lang/String;Ljava/util/Map;Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/net/Network;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;",
            ")V"
        }
    .end annotation

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    .line 248
    iput-wide p4, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTransferredBytes:J

    .line 249
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    .line 250
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    .line 251
    iput-object p8, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    .line 252
    iput-object p13, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    .line 253
    iput-object p9, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    .line 254
    iput-boolean p10, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    .line 255
    invoke-static {p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    move-object p1, p11

    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    if-eqz p12, :cond_1

    .line 256
    invoke-interface {p12}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {p1, p12}, Lcom/sec/internal/ims/servicemodules/im/util/FileTaskUtil;->createRequestUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadRequest{mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTransferredBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTransferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mFilePath:Ljava/lang/String;

    .line 264
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentUir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mContentUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTrustAllCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mTrustAllCerts:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
