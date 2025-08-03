.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
.super Ljava/lang/Object;
.source "IDeviceDataChangeListener.java"


# virtual methods
.method public abstract isNativeMsgAppDefault()Z
.end method

.method public abstract isNormalVVMSyncing()Z
.end method

.method public abstract onForceInitSyncStart()V
.end method

.method public abstract onInitialDBCopyDone()V
.end method

.method public abstract onMailBoxResetBufferDbDone()V
.end method

.method public abstract onWipeOutResetSyncHandler()V
.end method

.method public abstract registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUpdateOfWorkingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V
.end method

.method public abstract sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public abstract sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public abstract sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public abstract sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public abstract sendGetVVMQuotaInfo(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
.end method

.method public abstract setVVMSyncState(Z)V
.end method

.method public abstract stopAppSync()V
.end method
