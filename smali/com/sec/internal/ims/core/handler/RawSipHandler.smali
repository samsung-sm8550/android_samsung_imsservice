.class public abstract Lcom/sec/internal/ims/core/handler/RawSipHandler;
.super Lcom/sec/internal/ims/core/handler/BaseHandler;
.source "RawSipHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/BaseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public openSipDialog(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendSip(ILjava/lang/String;Landroid/os/Message;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterForEvent(Landroid/os/Handler;)V
    .locals 0

    .line 0
    return-void
.end method
