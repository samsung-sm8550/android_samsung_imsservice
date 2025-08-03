.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
.super Ljava/lang/Object;
.source "IWfcEpdgManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# virtual methods
.method public abstract dump()V
.end method

.method public abstract getEpdgMgr()Lcom/sec/epdg/EpdgManager;
.end method

.method public abstract getNrInterworkingMode(I)I
.end method

.method public abstract isCrossSimPermanentBlocked(I)Z
.end method

.method public abstract isEpdgServiceConnected()Z
.end method

.method public abstract onCarrierUpdate(Landroid/content/Intent;)V
.end method

.method public abstract onPermanentPdnFail()V
.end method

.method public abstract onResetSetting(Landroid/content/Intent;)V
.end method

.method public abstract registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V
.end method

.method public abstract registerWfcEpdgConnectionListener(Lcom/sec/internal/ims/core/WfcEpdgManager$WfcEpdgConnectionListener;)V
.end method

.method public abstract setCrossSimPermanentBlocked(IZ)V
.end method

.method public abstract unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V
.end method
