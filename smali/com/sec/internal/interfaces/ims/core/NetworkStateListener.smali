.class public interface abstract Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;
.super Ljava/lang/Object;
.source "NetworkStateListener.java"


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public abstract onDataConnectionStateChanged(IZI)V
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onEpdgConnected(ILjava/lang/String;)V
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onEpdgDisconnected(ILjava/lang/String;)V
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMobileRadioConnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMobileRadioDisconnected(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 0

    .line 0
    return-void
.end method
