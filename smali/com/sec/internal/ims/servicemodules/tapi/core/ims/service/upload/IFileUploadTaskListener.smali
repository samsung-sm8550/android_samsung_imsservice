.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/core/ims/service/upload/IFileUploadTaskListener;
.super Ljava/lang/Object;
.source "IFileUploadTaskListener.java"


# virtual methods
.method public abstract onUploadComplete(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUploadInfo;)V
.end method

.method public abstract onUploadProgress(Ljava/lang/String;JJ)V
.end method

.method public abstract onUploadStateChanged(Ljava/lang/String;Lcom/gsma/services/rcs/upload/FileUpload$State;Z)V
.end method
