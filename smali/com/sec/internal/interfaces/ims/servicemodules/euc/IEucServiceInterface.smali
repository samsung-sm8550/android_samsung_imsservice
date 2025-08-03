.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;
.super Ljava/lang/Object;
.source "IEucServiceInterface.java"


# virtual methods
.method public abstract registerForAckMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNotificationMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPersistentMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSystemMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForVolatileMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V
.end method

.method public abstract unregisterForAckMessage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNotificationMessage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPersistentMessage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSystemMessage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForVolatileMessage(Landroid/os/Handler;)V
.end method
