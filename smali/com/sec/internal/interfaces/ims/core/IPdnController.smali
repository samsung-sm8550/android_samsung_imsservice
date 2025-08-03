.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IPdnController;
.super Ljava/lang/Object;
.source "IPdnController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field public static final APN_REQUEST_STARTED:I = 0x1

.field public static final APN_TYPE_NOT_AVAILABLE:I = 0x2


# virtual methods
.method public abstract getAllCellInfo(IZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCellIdentity(IZ)Landroid/telephony/CellIdentity;
.end method

.method public abstract getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;
.end method

.method public abstract getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
.end method

.method public abstract getEpdgPhysicalInterface(I)I
.end method

.method public abstract getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;
.end method

.method public abstract getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;
.end method

.method public abstract getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
.end method

.method public abstract getMobileDataNetworkType(I)I
.end method

.method public abstract getMobileDataRegState(I)I
.end method

.method public abstract getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;
.end method

.method public abstract getVoiceRegState(I)I
.end method

.method public abstract getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;
.end method

.method public abstract isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
.end method

.method public abstract isDisconnecting()Z
.end method

.method public abstract isEmergencyEpdgConnected(I)Z
.end method

.method public abstract isEpdgConnected(I)Z
.end method

.method public abstract isEpsOnlyReg(I)Z
.end method

.method public abstract isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
.end method

.method public abstract isPendedEPDGWeakSignal(I)Z
.end method

.method public abstract isVoiceRoaming(I)Z
.end method

.method public abstract isWifiConnected()Z
.end method

.method public abstract registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
.end method

.method public abstract removeRouteToHostAddress(ILjava/lang/String;)Z
.end method

.method public abstract requestRouteToHostAddress(ILjava/lang/String;)Z
.end method

.method public abstract setPendedEPDGWeakSignal(IZ)V
.end method

.method public abstract startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I
.end method

.method public abstract stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
.end method

.method public abstract unregisterForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
.end method
