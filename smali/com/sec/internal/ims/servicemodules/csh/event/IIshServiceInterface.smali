.class public interface abstract Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;
.super Ljava/lang/Object;
.source "IIshServiceInterface.java"


# virtual methods
.method public abstract acceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V
.end method

.method public abstract cancelIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
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
