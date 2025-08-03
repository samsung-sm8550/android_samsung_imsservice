.class public interface abstract Lcom/sec/internal/interfaces/ims/core/PdnEventListener;
.super Ljava/lang/Object;
.source "PdnEventListener.java"


# virtual methods
.method public onConnected(ILandroid/net/Network;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisconnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLocalIpChanged(ILandroid/net/Network;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onNetworkRequestFail()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onPcscfRestorationNotified(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onResumed(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onResumedBySnapshot(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuspended(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuspendedBySnapshot(I)V
    .locals 0

    .line 0
    return-void
.end method
