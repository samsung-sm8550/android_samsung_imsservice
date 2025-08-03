.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;
.super Ljava/lang/Object;
.source "IRegistrationHandlerNotifiable.java"


# virtual methods
.method public abstract notifyAirplaneModeChanged(I)V
.end method

.method public abstract notifyChatbotAgreementChanged(I)V
.end method

.method public abstract notifyConfigChanged(Landroid/net/Uri;I)V
.end method

.method public abstract notifyContactActivated(II)V
.end method

.method public abstract notifyDeRegistered(Landroid/os/Bundle;)V
.end method

.method public abstract notifyDnsResponse(Ljava/util/List;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation
.end method

.method public abstract notifyEcVbcSettingChanged(I)V
.end method

.method public abstract notifyEmergencyReady(I)V
.end method

.method public abstract notifyImsSettingChanged(Landroid/net/Uri;I)V
.end method

.method public abstract notifyImsSettingUpdated(I)V
.end method

.method public abstract notifyLocationModeChanged()V
.end method

.method public abstract notifyLteDataNetworkModeSettingChanged(ZI)V
.end method

.method public abstract notifyMnoMapUpdated(Landroid/net/Uri;I)V
.end method

.method public abstract notifyMobileDataPressedSettingeChanged(II)V
.end method

.method public abstract notifyMobileDataSettingeChanged(II)V
.end method

.method public abstract notifyRcsUserSettingChanged(II)V
.end method

.method public abstract notifyRefreshRegNotification(I)V
.end method

.method public abstract notifyRegEventContactUriNotification(Landroid/os/Bundle;)V
.end method

.method public abstract notifyRegistered(IILcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract notifyRegistrationError(Landroid/os/Bundle;)V
.end method

.method public abstract notifyRoamingDataSettigChanged(II)V
.end method

.method public abstract notifySatelliteModeChanged(Z)V
.end method

.method public abstract notifySetupWizardCompleted()V
.end method

.method public abstract notifySubscribeError(Landroid/os/Bundle;)V
.end method

.method public abstract notifyTriggeringRecoveryAction(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
.end method

.method public abstract notifyVolteSettingChanged(ZZI)V
.end method

.method public abstract notifyVowifiSettingChanged(IJ)V
.end method

.method public abstract notifyX509CertVerificationRequested([Ljava/security/cert/X509Certificate;)V
.end method

.method public abstract removeRecoveryAction()V
.end method

.method public abstract sendTryRegister(I)V
.end method
