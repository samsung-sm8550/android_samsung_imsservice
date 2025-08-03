.class public abstract Lcom/sec/internal/ims/core/handler/SlmHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "SlmHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public acceptFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public acceptSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerForSlmImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public rejectSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterAllSLMFileTransferProgress()V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForSlmImdnNotification(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForSlmIncomingMessage(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForSlmTransferProgress(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method
