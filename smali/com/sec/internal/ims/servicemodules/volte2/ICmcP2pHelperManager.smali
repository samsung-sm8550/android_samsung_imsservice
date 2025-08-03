.class public interface abstract Lcom/sec/internal/ims/servicemodules/volte2/ICmcP2pHelperManager;
.super Ljava/lang/Object;
.source "ICmcP2pHelperManager.java"


# virtual methods
.method public abstract getSupportDevices()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract removeOldP2pSipHistoryAndCommand(I)V
.end method

.method public abstract sendP2pCommand(II)V
.end method

.method public abstract setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startDiscovery(Ljava/util/List;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startP2p(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract stop()V
.end method
