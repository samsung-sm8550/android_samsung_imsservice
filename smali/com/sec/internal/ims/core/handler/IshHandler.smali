.class public abstract Lcom/sec/internal/ims/core/handler/IshHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "IshHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public abstract acceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V
.end method

.method public abstract cancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    .line 79
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

.method public abstract registerForIshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIshTransferComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIshTransferFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIshTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
.end method

.method public abstract startIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V
.end method

.method public abstract stopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
.end method

.method public abstract unregisterForIshIncomingSession(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIshSessionEstablished(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIshTransferComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIshTransferFailed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIshTransferProgress(Landroid/os/Handler;)V
.end method
