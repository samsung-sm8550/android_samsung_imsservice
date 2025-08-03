.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;
.super Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;
.source "OneToOneFileTransferImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 73
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransfer$Stub;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 65
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    return-void
.end method


# virtual methods
.method public abortTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 256
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abortTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getTransferId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public acceptInvitation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptInvitation id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->acceptFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public canPauseTransfer()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public canResendTransfer()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDirection()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    return p0
.end method

.method public getFile()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getFileDisposition()Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;->RENDER:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    if-ne p0, v0, :cond_0

    .line 116
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->RENDER:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;->ATTACH:Lcom/gsma/services/rcs/filetransfer/FileTransfer$Disposition;

    :goto_0
    return-object p0
.end method

.method public getFileExpiration()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 420
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 422
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 426
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "time is 0"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 424
    :goto_1
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 429
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileExpiration, time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method

.method public getFileIcon()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getFileIconExpiration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 440
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getFileExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileIconMimeType()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getThumbnailPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/utils/FileUtils;->getContentTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getReasonCode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    .line 347
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRejectReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 349
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftRejectReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object p0

    goto :goto_0

    .line 351
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferingServiceImpl;->ftCancelReasonTranslator(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/filetransfer/FileTransfer$ReasonCode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 143
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFtMsg.getContactUri() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 147
    :cond_0
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    .line 190
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_3

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->ABORTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 206
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->TRANSFERRED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->STARTED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 196
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v1, :cond_4

    .line 197
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INVITED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    goto :goto_0

    .line 198
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v1, :cond_5

    .line 199
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->INITIATING:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    :cond_5
    :goto_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestampDelivered()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDeliveredTimestamp()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTimestampDisplayed()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isOutgoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDisplayedTimestamp()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getTimestampSent()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    goto :goto_0

    .line 408
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSentTimestamp()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTransferId()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAllowedToResumeTransfer()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isExpiredDelivery()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGroupTransfer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRead()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p0

    .line 489
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pauseTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 266
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pauseTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->cancelFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public rejectInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 246
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rejectInvitation id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->rejectFileTransfer(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public resendTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 292
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resendTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object v0, Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;->FAILED:Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->getState()Lcom/gsma/services/rcs/filetransfer/FileTransfer$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 294
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    :cond_0
    return-void
.end method

.method public resumeTransfer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 276
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeTransfer id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->resumeSendingTransfer(Ljava/lang/String;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/OneToOneFileTransferImpl;->mFtMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->resumeReceivingTransfer(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method
