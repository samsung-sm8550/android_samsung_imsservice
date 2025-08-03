.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.super Ljava/lang/Object;
.source "IRegistrationGovernor.java"


# static fields
.field public static final EVENT_PRESENCE:I = 0x1

.field public static final EVENT_REGISTRATION:I


# virtual methods
.method public abstract addDelay(J)V
.end method

.method public abstract addDelay(JI)V
.end method

.method public abstract allowRoaming()Z
.end method

.method public abstract applyCrossSimPolicy(Ljava/util/Set;I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract applyDataSimPolicyForCrossSim(Ljava/util/Set;I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract applyPsDataOffExempt(Ljava/util/Set;I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blockImmediatelyUpdateRegi()Z
.end method

.method public abstract checkAcsPcscfListChange()V
.end method

.method public abstract checkEmergencyInProgress()Z
.end method

.method public abstract checkProfileUpdateFromDM(Z)V
.end method

.method public abstract checkUnProcessedVoLTEState()V
.end method

.method public abstract checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract checkValidPcscfIpForPcscfRestoration(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract determineDeRegistration(II)Z
.end method

.method public abstract enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V
.end method

.method public abstract filterService(Ljava/util/Set;I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract finishOmadmProvisioningUpdate()V
.end method

.method public abstract getCurrentPcscfIp()Ljava/lang/String;
.end method

.method public abstract getDetailedDeRegiReason(I)I
.end method

.method public abstract getFailureCount()I
.end method

.method public abstract getFailureType()I
.end method

.method public abstract getMatchedPdnFailReasonFromGlobalSettings(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Ljava/lang/String;
.end method

.method public abstract getNextImpuType()I
.end method

.method public abstract getNextRetryMillis()J
.end method

.method public abstract getNumOfEmerPcscfIp()I
.end method

.method public abstract getNumOfPcscfIp()I
.end method

.method public abstract getP2pListSize(I)I
.end method

.method public abstract getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
.end method

.method public abstract getPcscfOrdinal()I
.end method

.method public abstract getRetryTimeOnPdnFail()J
.end method

.method public abstract getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
.end method

.method public abstract getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;
.end method

.method public abstract getUpdateRegiPendingReason(ILcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)Ljava/lang/String;
.end method

.method public abstract getWFCSubscribeForbiddenCounter()I
.end method

.method public abstract handlePcscfRestoration(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract hasEmergencyTaskInPriority(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract hasNetworkFailure()Z
.end method

.method public abstract hasPdnFailure()Z
.end method

.method public abstract hasValidPcscfIpList()Z
.end method

.method public abstract increasePcscfIdx()V
.end method

.method public abstract isAnonymousEmergencyCallRequired()Z
.end method

.method public abstract isDelayedDeregisterTimerRunning()Z
.end method

.method public abstract isDeregisterOnLocationUpdate()Z
.end method

.method public abstract isExistRetryTimer()Z
.end method

.method public abstract isIPSecAllow()Z
.end method

.method public abstract isLocationInfoLoaded(I)Z
.end method

.method public abstract isMatchedPdnFailReason(Lcom/sec/internal/constants/ims/core/PdnFailReason;)Z
.end method

.method public abstract isMobilePreferredForRcs()Z
.end method

.method public abstract isNeedDelayedDeregister()Z
.end method

.method public abstract isNoNextPcscf()Z
.end method

.method public abstract isNonVoLteSimByPdnFail()Z
.end method

.method public abstract isOmadmConfigAvailable()Z
.end method

.method public abstract isPse911Prohibited()Z
.end method

.method public abstract isReadyToDualRegister(Z)Z
.end method

.method public abstract isReadyToGetReattach()Z
.end method

.method public abstract isReadyToRegister(I)Z
.end method

.method public abstract isSrvccCase()Z
.end method

.method public abstract isThrottled()Z
.end method

.method public abstract isThrottledforImsNotAvailable()Z
.end method

.method public abstract makeThrottle()V
.end method

.method public abstract needImsNotAvailable()Z
.end method

.method public abstract needPendingPdnConnected()Z
.end method

.method public abstract notifyLocationTimeout()V
.end method

.method public abstract notifyReattachToRil()V
.end method

.method public abstract notifyVoLteOnOffToRil(Z)V
.end method

.method public abstract onAdsChanged(I)V
.end method

.method public abstract onCallStatus(Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$CallEvent;Lcom/sec/ims/util/SipError;I)V
.end method

.method public abstract onConfigUpdated()V
.end method

.method public abstract onContactActivated()V
.end method

.method public abstract onDeregistrationDone(Z)V
.end method

.method public onEpdgConnected()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onEpdgDisconnected()V
.end method

.method public onEpdgIkeError()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onLocalIpChanged()V
.end method

.method public abstract onLocationCacheExpiry()V
.end method

.method public abstract onLteDataNetworkModeSettingChanged(Z)V
.end method

.method public abstract onManualDeregister(Z)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
.end method

.method public abstract onPackageDataCleared(Landroid/net/Uri;)V
.end method

.method public abstract onPdnConnected()V
.end method

.method public abstract onPdnConnecting(I)V
.end method

.method public abstract onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V
.end method

.method public abstract onPublishError(Lcom/sec/ims/util/SipError;)V
.end method

.method public abstract onRegEventContactUriNotification(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRegistrationDone()V
.end method

.method public abstract onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V
.end method

.method public abstract onRegistrationTerminated(Lcom/sec/ims/util/SipError;JZ)V
.end method

.method public abstract onServiceStateDataChanged(ZZ)V
.end method

.method public abstract onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;
.end method

.method public abstract onSrvccComplete()V
.end method

.method public abstract onSubscribeError(ILcom/sec/ims/util/SipError;)V
.end method

.method public abstract onTelephonyCallStatusChanged(I)V
.end method

.method public abstract onTimsTimerExpired()V
.end method

.method public abstract onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z
.end method

.method public abstract onUpdatedPcoInfo(II)Z
.end method

.method public abstract onVolteSettingChanged()V
.end method

.method public abstract onWfcProfileChanged([B)V
.end method

.method public abstract registerAllowedNetworkTypesListener()V
.end method

.method public abstract releaseThrottle(I)V
.end method

.method public abstract requestLocation(I)V
.end method

.method public abstract resetAllPcscfChecked()V
.end method

.method public abstract resetAllRetryFlow()V
.end method

.method public abstract resetIPSecAllow()V
.end method

.method public abstract resetPcoType()V
.end method

.method public abstract resetPcscfList()V
.end method

.method public abstract resetPcscfPreference()V
.end method

.method public abstract resetPdnFailureInfo()V
.end method

.method public abstract resetPermanentFailure()V
.end method

.method public abstract resetRetry()V
.end method

.method public abstract retryDNSQuery()V
.end method

.method public abstract runDelayedDeregister()V
.end method

.method public abstract setNeedDelayedDeregister(Z)V
.end method

.method public abstract setPcoType(Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;)V
.end method

.method public abstract setRetryTimeOnPdnFail(J)V
.end method

.method public abstract startOmadmProvisioningUpdate()V
.end method

.method public abstract startTimsTimer(Ljava/lang/String;)V
.end method

.method public abstract stopTimsTimer(Ljava/lang/String;)V
.end method

.method public abstract throttleforImsNotAvailable()V
.end method

.method public abstract unRegisterIntentReceiver()V
.end method

.method public abstract updatePcscfIpList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
