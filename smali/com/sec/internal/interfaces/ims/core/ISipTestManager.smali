.class public interface abstract Lcom/sec/internal/interfaces/ims/core/ISipTestManager;
.super Ljava/lang/Object;
.source "ISipTestManager.java"


# virtual methods
.method public abstract clearNetwork(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            "Lcom/sec/internal/ims/core/NetworkCallback;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract notifyImsRegistration(ZII)V
.end method

.method public abstract notifyNetworkEvent(ZLcom/sec/internal/constants/ims/os/NetworkState;I)V
.end method

.method public abstract onDataConnectionStateChanged(Lcom/sec/internal/ims/core/RegistrationManagerBase;Landroid/os/Bundle;IZI)V
.end method

.method public abstract requestNetwork(Landroid/net/ConnectivityManager;Ljava/util/Set;Lcom/sec/internal/ims/core/NetworkCallback;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;",
            ">;",
            "Lcom/sec/internal/ims/core/NetworkCallback;",
            "II)V"
        }
    .end annotation
.end method
