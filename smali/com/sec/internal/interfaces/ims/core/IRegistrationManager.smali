.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
.super Ljava/lang/Object;
.source "IRegistrationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field public static final ID_SIM2_OFFSET:I = 0x1388

.field public static final KEY_INSTANCE_ID:Ljava/lang/String; = "instanceId"

.field public static final LOG_TAG:Ljava/lang/String; = "RegiMgr"


# direct methods
.method public static getDeregistrationTimeout(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getDeregTimeout(I)I

    move-result p0

    const/16 p1, 0x3e8

    if-ge p0, p1, :cond_0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Under 1000 Deregi Timer : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xfa0

    :cond_0
    return p0
.end method

.method public static getRegistrationInfoId(II)I
    .locals 0

    .line 0
    mul-int/lit16 p1, p1, 0x1388

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
.end method

.method public abstract blockVoWifiRegisterOnRoaminByCsfbError(II)V
.end method

.method public abstract bootCompleted()V
.end method

.method public abstract cancelUpdateSipDelegateRegistration(I)V
.end method

.method public abstract deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V
.end method

.method public abstract deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V
.end method

.method public abstract deregisterProfile(II)V
.end method

.method public abstract deregisterProfile(IIZ)V
.end method

.method public abstract deregisterProfile(Ljava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract doPendingUpdateRegistration()V
.end method

.method public abstract forceNotifyToApp(I)V
.end method

.method public abstract getCmcLineSlotIndex()I
.end method

.method public abstract getCsfbSupported(I)Z
.end method

.method public abstract getCurrentNetwork(I)I
.end method

.method public abstract getCurrentNetworkByPhoneId(I)I
.end method

.method public abstract getCurrentPcscf(I)[Ljava/lang/String;
.end method

.method public abstract getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end method

.method public abstract getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
.end method

.method public abstract getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
.end method

.method public abstract getImsiByUserAgentHandle(I)Ljava/lang/String;
.end method

.method public abstract getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
.end method

.method public abstract getPendingRegistration(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end method

.method public abstract getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end method

.method public abstract getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getRegistrationList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile;",
            "IZI)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTelephonyCallStatus(I)I
.end method

.method public abstract getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract handleE911RegiTimeOut(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract handleInactiveCiaOnMobileConnected(I)V
.end method

.method public abstract handleInactiveCiaOnMobileDisconnected(I)V
.end method

.method public abstract hasOmaDmFinished(I)Z
.end method

.method public abstract isAnonymousEmergencyCallRequired(I)Z
.end method

.method public abstract isCmcRegistered(I)I
.end method

.method public abstract isEmergencyCallProhibited(I)Z
.end method

.method public abstract isEpdnRequestPending(I)Z
.end method

.method public abstract isInvite403DisabledService(I)Z
.end method

.method public abstract isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z
.end method

.method public abstract isRcsRegistered(I)Z
.end method

.method public abstract isSelfActivationRequired(I)Z
.end method

.method public abstract isSupportVoWiFiDisable5GSA(I)Z
.end method

.method public abstract isSupportVoWiFiDisable5GSAFromConfiguration(I)Z
.end method

.method public abstract isSuspended(I)Z
.end method

.method public abstract isVoWiFiSupported(I)Z
.end method

.method public abstract moveNextPcscf(ILandroid/os/Message;)V
.end method

.method public abstract notifyRCSAllowedChangedbyMDM()V
.end method

.method public abstract notifyRomaingSettingsChanged(II)V
.end method

.method public abstract onDmConfigurationComplete(I)V
.end method

.method public abstract onUpdateSipDelegateRegistrationTimeOut(I)V
.end method

.method public abstract refreshAuEmergencyProfile(I)V
.end method

.method public abstract registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
.end method

.method public abstract registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
.end method

.method public abstract registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I
.end method

.method public abstract releaseThrottleByAcs(I)V
.end method

.method public abstract releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract removeE911RegiTimer()V
.end method

.method public abstract requestFullNetworkRegistration(IILjava/lang/String;)V
.end method

.method public abstract requestTryRegister(I)V
.end method

.method public abstract requestTryRegsiter(IJ)V
.end method

.method public abstract requestUpdateSipDelegateRegistration(I)V
.end method

.method public abstract sendDeregister(I)V
.end method

.method public abstract sendDeregister(II)V
.end method

.method public abstract sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
.end method

.method public abstract sendDummyDnsQuery()V
.end method

.method public abstract sendReRegister(II)V
.end method

.method public abstract setInvite403DisableService(ZI)V
.end method

.method public abstract setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V
.end method

.method public abstract setRegiConfig(I)V
.end method

.method public abstract setRttMode(IZ)V
.end method

.method public abstract setSSACPolicy(IZ)V
.end method

.method public abstract setSilentLogEnabled(Z)V
.end method

.method public abstract setThirdPartyFeatureTags([Ljava/lang/String;)V
.end method

.method public abstract setTtyMode(II)V
.end method

.method public abstract startEmergencyRegistration(ILandroid/os/Message;)V
.end method

.method public abstract startEmergencyRegistration(ILandroid/os/Message;I)V
.end method

.method public abstract stopEmergencyPdnOnly(I)V
.end method

.method public abstract stopEmergencyRegistration(I)V
.end method

.method public abstract stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract suspendRegister(ZI)V
.end method

.method public abstract suspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)V
.end method

.method public abstract unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V
.end method

.method public abstract updateChatService(II)V
.end method

.method public abstract updateEmergencyTaskByAuthFailure(I)V
.end method

.method public abstract updateEpsFbInImsCall(I)V
.end method

.method public abstract updateNrPreferredMode(IZ)V
.end method

.method public abstract updateNrSaMode(IZ)V
.end method

.method public abstract updatePcoInfo(III)V
.end method

.method public abstract updateRegistrationBySSAC(IZ)V
.end method

.method public abstract updateTelephonyCallStatus(II)V
.end method

.method public abstract updateVo5gIconStatus(II)V
.end method
