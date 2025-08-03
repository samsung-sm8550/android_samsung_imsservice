.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;
.super Ljava/lang/Object;
.source "ISlmServiceInterface.java"


# virtual methods
.method public abstract acceptFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
.end method

.method public abstract acceptSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V
.end method

.method public abstract cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
.end method

.method public abstract registerForSlmImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
.end method

.method public abstract rejectSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V
.end method

.method public abstract sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
.end method

.method public abstract sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
.end method

.method public abstract unregisterAllSLMFileTransferProgress()V
.end method

.method public abstract unregisterForSlmImdnNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSlmIncomingMessage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSlmTransferProgress(Landroid/os/Handler;)V
.end method
