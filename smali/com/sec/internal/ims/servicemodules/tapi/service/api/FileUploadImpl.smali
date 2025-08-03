.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;
.super Lcom/gsma/services/rcs/upload/IFileUpload$Stub;
.source "FileUploadImpl.java"


# instance fields
.field private mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/gsma/services/rcs/upload/IFileUpload$Stub;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    .line 39
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->addListener(Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;)V

    return-void
.end method


# virtual methods
.method public abortUpload()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->abortUploadTask()V

    return-void
.end method

.method public getFile()Landroid/net/Uri;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/gsma/services/rcs/upload/FileUpload$State;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getState()Lcom/gsma/services/rcs/upload/FileUpload$State;

    move-result-object p0

    return-object p0
.end method

.method public getUploadId()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getFileUploadId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->getFileUploadInfo()Lcom/gsma/services/rcs/upload/FileUploadInfo;

    move-result-object p0

    return-object p0
.end method

.method public startUpload()V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileUploadImpl;->mMessage:Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/FileUploadMessage;->startUploadTask()V

    return-void
.end method
