.class public interface abstract Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
.super Ljava/lang/Object;
.source "ICmcAccountManager.java"


# virtual methods
.method public abstract getCmcPhoneId()I
.end method

.method public abstract getCmcRegiConfigForUserAgent()Landroid/os/Bundle;
.end method

.method public abstract getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
.end method

.method public abstract getCurrentLineOwnerDeviceId()Ljava/lang/String;
.end method

.method public abstract getCurrentLineSlotIndex()I
.end method

.method public abstract getHotspotAddress()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRegiEventNotifyHostInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSecondaryDevice()Z
.end method

.method public abstract isCmcActivated()Z
.end method

.method public abstract isCmcEnabled()Z
.end method

.method public abstract isCmcProfileAdded()Z
.end method

.method public abstract isCmcSupportedOnHotspot()Z
.end method

.method public abstract isEmergencyCallSupported()Z
.end method

.method public abstract isEmergencyNumber(Ljava/lang/String;I)Z
.end method

.method public abstract isHotspotEnabled()Z
.end method

.method public abstract isPotentialEmergencyNumber(Ljava/lang/String;I)Z
.end method

.method public abstract isProfileUpdateFailed()Z
.end method

.method public abstract isSecondaryDevice()Z
.end method

.method public abstract isSupportDualSimCMC()Z
.end method

.method public abstract isSupportSameWiFiOnly()Z
.end method

.method public abstract isWifiOnly()Z
.end method

.method public abstract notifyCmcDeviceChanged()V
.end method

.method public abstract onDeregistrationDone(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract onRegistrationDone(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract onSimRefresh(I)V
.end method

.method public abstract setEmergencyNumbers(Ljava/lang/String;)V
.end method

.method public abstract setRegiEventNotifyHostInfo(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startCmcRegistration()V
.end method

.method public abstract startSAService(Z)V
.end method

.method public abstract triggerDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;IZ)V
.end method
