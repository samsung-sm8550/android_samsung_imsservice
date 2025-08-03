.class public interface abstract Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;
.super Ljava/lang/Object;
.source "IvshServiceInterface.java"


# virtual methods
.method public abstract acceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V
.end method

.method public abstract cancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
.end method

.method public abstract registerForVshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVshSessionTerminated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V
.end method

.method public abstract resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
.end method

.method public abstract setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
.end method

.method public abstract setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
.end method

.method public abstract startVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V
.end method

.method public abstract stopVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
.end method

.method public abstract switchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V
.end method

.method public abstract unregisterForVshIncomingSession(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVshSessionEstablished(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVshSessionTerminated(Landroid/os/Handler;)V
.end method
