.class public Lcom/sec/internal/ims/core/handler/MiscHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "MiscHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    .line 30
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

.method public registerForEcholocateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForXqMtripEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForEcholocateEvent(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForXqMtripEvent(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method
