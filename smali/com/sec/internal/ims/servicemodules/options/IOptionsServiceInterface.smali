.class public interface abstract Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;
.super Ljava/lang/Object;
.source "IOptionsServiceInterface.java"


# virtual methods
.method public abstract registerForCmcOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForP2pOptionsEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestSendCmcCheckMsg(IILjava/lang/String;)V
.end method

.method public abstract sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Landroid/os/Message;IILjava/lang/String;)V
.end method

.method public abstract sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;ILandroid/os/Message;ILjava/lang/String;)V
.end method

.method public abstract sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/List;Ljava/lang/String;ILandroid/os/Message;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract setOwnCapabilities(JI)V
.end method

.method public abstract updateCmcExtCallCount(II)I
.end method
