.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
.super Ljava/lang/Object;
.source "IVolteServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract consultativeTransferCall(II)V
.end method

.method public abstract createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActiveDataPhoneId()I
.end method

.method public abstract getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
.end method

.method public abstract getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;
.end method

.method public abstract getDowngradedCallCount(I)I
.end method

.method public abstract getE911CallCount(I)I
.end method

.method public abstract getEpdgCallCount(I)I
.end method

.method public abstract getEpdgManager()Lcom/sec/epdg/EpdgManager;
.end method

.method public abstract getEpsFbCallCount(I)I
.end method

.method public abstract getExtMoCall()Z
.end method

.method public abstract getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getIdcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;
.end method

.method public abstract getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
.end method

.method public abstract getImsCallSessionManager()Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;
.end method

.method public abstract getIncomingSessionPhoneIdForCmc()I
.end method

.method public abstract getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
.end method

.method public abstract getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getNrSaCallCount(I)I
.end method

.method public abstract getParticipantIdForMerge(II)I
.end method

.method public abstract getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getRttMode()I
.end method

.method public abstract getRttMode(I)I
.end method

.method public abstract getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
.end method

.method public abstract getSessionCount()I
.end method

.method public abstract getSessionCount(I)I
.end method

.method public abstract getSignalLevel()I
.end method

.method public abstract getTotalCallCount(I)I
.end method

.method public abstract getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTtyMode()I
.end method

.method public abstract getTtyMode(I)I
.end method

.method public abstract getVideoCallCount(I)I
.end method

.method public abstract getVoWIFIEmergencyCallRat(I)I
.end method

.method public abstract hasActiveCall(I)Z
.end method

.method public abstract hasCsCall(I)Z
.end method

.method public abstract hasEmergencyCall(I)Z
.end method

.method public abstract hasPendingCall(I)Z
.end method

.method public abstract hasQecInCall()Z
.end method

.method public abstract isNotifyRejectedCall(I)Z
.end method

.method public abstract isQSSSuccessAuthAndLogin(I)Z
.end method

.method public abstract isRttCall(I)Z
.end method

.method public abstract isVolteRetryRequired(IILcom/sec/ims/util/SipError;)Z
.end method

.method public abstract isVolteRetryRequired(IILcom/sec/ims/util/SipError;I)Z
.end method

.method public abstract isVolteServiceStatus(I)Z
.end method

.method public abstract isVolteSupportECT()Z
.end method

.method public abstract isVolteSupportECT(I)Z
.end method

.method public abstract notifyEpsFallbackResult(II)V
.end method

.method public abstract onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V
.end method

.method public abstract onUpdateGeolocation()V
.end method

.method public abstract onVoWiFiSwitched(I)V
.end method

.method public abstract pushCall(ILjava/lang/String;)V
.end method

.method public abstract registerCmcRecordingListener(ILcom/sec/ims/cmc/ICmcRecordingListener;)V
.end method

.method public abstract registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
.end method

.method public abstract sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V
.end method

.method public abstract sendDtmfEvent(ILjava/lang/String;)V
.end method

.method public abstract sendHandOffEvent(IIIIJ)V
.end method

.method public abstract sendMmsProcType(IZ)V
.end method

.method public abstract sendRttMessage(Ljava/lang/String;)V
.end method

.method public abstract sendRttSessionModifyRequest(IZ)I
.end method

.method public abstract sendRttSessionModifyResponse(IZ)V
.end method

.method public abstract setActiveImpu(ILjava/lang/String;)V
.end method

.method public abstract setAutomaticMode(IZ)V
.end method

.method public abstract setDelayedDeregisterTimerRunning(IZ)V
.end method

.method public abstract setOutOfService(ZI)V
.end method

.method public abstract setRttMode(I)V
.end method

.method public abstract setRttMode(II)V
.end method

.method public abstract setTtyMode(II)V
.end method

.method public abstract setUiTTYMode(IILandroid/os/Message;)V
.end method

.method public abstract setVideoCrtAudio(IZ)V
.end method

.method public abstract startLocalRingBackTone(III)I
.end method

.method public abstract stopLocalRingBackTone()I
.end method

.method public abstract transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCmcRecordingListener(ILcom/sec/ims/cmc/ICmcRecordingListener;)V
.end method

.method public abstract unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
.end method

.method public abstract unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
.end method

.method public abstract updateAudioInterface(II)V
.end method

.method public abstract updateSSACInfo(IIIII)V
.end method
