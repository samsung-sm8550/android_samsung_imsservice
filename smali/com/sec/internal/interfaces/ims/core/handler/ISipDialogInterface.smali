.class public interface abstract Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;
.super Ljava/lang/Object;
.source "ISipDialogInterface.java"


# virtual methods
.method public abstract openSipDialog(Z)V
.end method

.method public abstract registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendSip(ILjava/lang/String;Landroid/os/Message;)Z
.end method

.method public abstract unregisterForEvent(Landroid/os/Handler;)V
.end method
