.class public abstract Lcom/sec/internal/ims/core/handler/VshHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "VshHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public abstract acceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V
.end method

.method public abstract cancelVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    .line 82
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
