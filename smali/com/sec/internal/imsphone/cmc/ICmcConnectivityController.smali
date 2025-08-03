.class public interface abstract Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
.super Ljava/lang/Object;
.source "ICmcConnectivityController.java"


# virtual methods
.method public abstract getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
.end method

.method public abstract getP2pCallSessionId()I
.end method

.method public abstract getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
.end method

.method public abstract isEnabledWifiDirectFeature()Z
.end method

.method public abstract isExistP2pConnection()Z
.end method

.method public abstract isWifiRegistered()Z
.end method

.method public abstract needP2pCallSession(Z)V
.end method

.method public abstract setCmcActivation(Z)V
.end method

.method public abstract setP2pCallSessionId(I)V
.end method

.method public abstract setP2pPD()V
.end method

.method public abstract startNsdBind()V
.end method

.method public abstract startP2pBind()V
.end method

.method public abstract startRegi(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract stopP2p()V
.end method

.method public abstract stopRegi()V
.end method
