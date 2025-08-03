.class public interface abstract Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
.super Ljava/lang/Object;
.source "IVolteServiceInterface.java"


# virtual methods
.method public abstract addParticipantToNWayConferenceCall(II)I
.end method

.method public abstract addParticipantToNWayConferenceCall(ILjava/lang/String;)I
.end method

.method public abstract addUserForConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;Z)I
.end method

.method public abstract answerCallWithCallType(II)I
.end method

.method public abstract answerCallWithCallType(IILjava/lang/String;)I
.end method

.method public abstract answerCallWithCallType(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract cancelTransferCall(I)I
.end method

.method public abstract clearAllCallInternal(I)V
.end method

.method public abstract deleteTcpSocket(II)I
.end method

.method public abstract enableQuantumSecurityService(IZ)I
.end method

.method public abstract endCall(IILcom/sec/internal/constants/ims/SipReason;)I
.end method

.method public abstract handleCmcCsfb(I)I
.end method

.method public abstract handleDtmf(IIIILandroid/os/Message;)I
.end method

.method public abstract holdCall(I)I
.end method

.method public abstract makeCall(ILcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;Ljava/util/HashMap;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation
.end method

.method public abstract modifyCallType(III)I
.end method

.method public abstract proceedIncomingCall(ILjava/util/HashMap;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation
.end method

.method public abstract publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public abstract pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract registerForAudioPathUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallStateEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdpnInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCmcInfoEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCurrentLocationDiscoveryDuringEmergencyCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDedicatedBearerNotifyEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDialogEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDialogSubscribeStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDtmfEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIncomingCallEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForReferStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRtpLossRateNoti(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSIPMSGEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForTextEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForTriggerEpsfbEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUssdEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerQuantumSecurityStatusEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall(IILcom/sec/ims/util/SipError;)I
.end method

.method public abstract rejectModifyCallType(II)I
.end method

.method public abstract removeParticipantFromNWayConferenceCall(II)I
.end method

.method public abstract removeParticipantFromNWayConferenceCall(ILjava/lang/String;)I
.end method

.method public abstract replaceSipCallId(ILjava/lang/String;)V
.end method

.method public abstract replaceUserAgent(II)V
.end method

.method public abstract replyModifyCallType(IIII)I
.end method

.method public abstract replyModifyCallType(IIIILjava/lang/String;)I
.end method

.method public abstract replyWithIdc(IIIILjava/lang/String;)I
.end method

.method public abstract resumeCall(I)I
.end method

.method public abstract sendCmcInfo(ILandroid/os/Bundle;)I
.end method

.method public abstract sendDtmfEvent(ILjava/lang/String;)V
.end method

.method public abstract sendEmergencyLocationPublish(I)I
.end method

.method public abstract sendInfo(IILjava/lang/String;I)I
.end method

.method public abstract sendMmsProcType(IZ)V
.end method

.method public abstract sendNegotiatedLocalSdp(ILjava/lang/String;)V
.end method

.method public abstract sendReInvite(ILcom/sec/internal/constants/ims/SipReason;)I
.end method

.method public abstract sendReInviteWithIdcExtra(ILjava/lang/String;)I
.end method

.method public abstract sendText(ILjava/lang/String;I)I
.end method

.method public abstract sendTtyData(I[B)I
.end method

.method public abstract sendVcsInfo(ILandroid/os/Bundle;)I
.end method

.method public abstract setAutomaticMode(IZ)V
.end method

.method public abstract setOutOfService(ZI)V
.end method

.method public abstract setQuantumSecurityInfo(ILandroid/os/Bundle;)I
.end method

.method public abstract setRttMode(II)V
.end method

.method public abstract setTtyMode(III)I
.end method

.method public abstract setTtyMode(Ljava/lang/String;)V
.end method

.method public abstract setVideoCrtAudio(IZ)V
.end method

.method public abstract startNWayConferenceCall(ILcom/sec/internal/ims/servicemodules/volte2/data/ConfCallSetupData;)I
.end method

.method public abstract startVideoEarlyMedia(I)I
.end method

.method public abstract transferCall(ILjava/lang/String;)I
.end method

.method public abstract unregisterForAudioPathUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForCallStateEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdpnInfoEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCmcInfoEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCurrentLocationDiscoveryDuringEmergencyCallEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDedicatedBearerNotifyEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDialogEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDialogSubscribeStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDtmfEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIncomingCallEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForReferStatus(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRrcConnectionEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRtpLossRateNoti(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSIPMSGEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForTextEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForTriggerEpsfbEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUssdEvent(Landroid/os/Handler;)V
.end method

.method public abstract unregisterQuantumSecurityStatusEvent(Landroid/os/Handler;)V
.end method

.method public abstract updateAirplaneMode(Z)V
.end method

.method public abstract updateAudioInterface(ILjava/lang/String;)V
.end method

.method public abstract updateAudioInterface(ILjava/lang/String;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
.end method

.method public abstract updateNrSaModeOnStart(I)V
.end method

.method public abstract updateScreenOnOff(II)V
.end method

.method public abstract updateXqEnable(IZ)V
.end method
