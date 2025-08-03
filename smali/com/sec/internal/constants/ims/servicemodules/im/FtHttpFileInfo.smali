.class public final Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
.super Ljava/lang/Object;
.source "FtHttpFileInfo.java"


# instance fields
.field private final mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

.field private final mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    .line 63
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    return-void
.end method


# virtual methods
.method public getBrandedUrl()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmBrandedUrl(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmContentType(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataUntil()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->-$$Nest$fgetmUntil(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDataUrl()Ljava/net/URL;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->-$$Nest$fgetmUrl(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmFileName(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    .line 67
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmFileSize(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayingLength()I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmPlayingLength(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)I

    move-result p0

    return p0
.end method

.method public getThumbnailContentType()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmContentType(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailDataUntil()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->-$$Nest$fgetmUntil(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailDataUrl()Ljava/net/URL;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;->-$$Nest$fgetmUrl(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)Ljava/net/URL;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailFileSize()J
    .locals 2

    .line 106
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmFileSize(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isThumbnailExist()Z
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fgetmData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setBrandedUrl(Ljava/lang/String;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmBrandedUrl(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmContentType(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    return-void
.end method

.method public setFileDisposition(Ljava/lang/String;)V
    .locals 1

    .line 148
    const-string/jumbo v0, "render"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->ATTACH:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)V

    :goto_0
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmFileName(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmFileSize(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;J)V

    return-void
.end method

.method public setPlayingLength(I)V
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmPlayingLength(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;I)V

    return-void
.end method

.method public setThumbnailContentType(Ljava/lang/String;)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmContentType(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnailData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    return-void
.end method

.method public setThumbnailFileSize(J)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;->-$$Nest$fputmFileSize(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtHttpFileInfo [mFileInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->mThumbnailInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$FileInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
