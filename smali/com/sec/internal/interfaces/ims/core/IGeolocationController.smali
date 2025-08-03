.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
.super Ljava/lang/Object;
.source "IGeolocationController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# virtual methods
.method public abstract getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;
.end method

.method public abstract getLastAccessedNetworkCountryIso(I)Ljava/lang/String;
.end method

.method public abstract isCountryCodeLoaded(I)Z
.end method

.method public abstract isLocationServiceEnabled()Z
.end method

.method public abstract notifyEpdgAvailable(II)V
.end method

.method public abstract notifyServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V
.end method

.method public abstract startGeolocationUpdate(IZ)Z
.end method

.method public abstract startGeolocationUpdate(IZI)Z
.end method

.method public abstract stopGeolocationUpdate()V
.end method

.method public abstract stopPeriodicLocationUpdate(I)V
.end method

.method public abstract updateGeolocationFromLastKnown(I)Z
.end method
