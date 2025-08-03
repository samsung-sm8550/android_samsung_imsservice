.class public interface abstract Lcom/sec/internal/ims/core/handler/secims/IStackIF;
.super Ljava/lang/Object;
.source "IStackIF.java"


# virtual methods
.method public abstract acceptCallTransfer(IIZILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract answerCall(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelTransferCall(IILandroid/os/Message;)V
.end method

.method public abstract clearAllCallInternal(I)V
.end method

.method public abstract conference(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
.end method

.method public abstract createUA(Lcom/sec/internal/ims/core/handler/secims/UaProfile;Landroid/os/Message;)V
.end method

.method public abstract deleteTcpClientSocket(I)V
.end method

.method public abstract deleteUA(ILandroid/os/Message;)V
.end method

.method public abstract deregister(IZLandroid/os/Message;)V
.end method

.method public abstract enableQuantumSecurityService(IZ)V
.end method

.method public abstract endCall(IILcom/sec/internal/constants/ims/SipReason;Landroid/os/Message;)V
.end method

.method public abstract extendToConfCall(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract handleCmcCsfb(II)V
.end method

.method public abstract handleDtmf(IIIIILandroid/os/Message;)V
.end method

.method public abstract holdCall(IILandroid/os/Message;)V
.end method

.method public abstract holdVideo(IILandroid/os/Message;)V
.end method

.method public abstract makeCall(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;ZLjava/util/List;ILandroid/os/Bundle;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract mergeCall(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract modifyCallType(III)V
.end method

.method public abstract modifyVideoQuality(III)V
.end method

.method public abstract networkSuspended(IZ)V
.end method

.method public abstract progressIncomingCall(IILjava/util/HashMap;Ljava/lang/String;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract publishDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract pullingCall(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/Dialog;Ljava/util/List;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/Dialog;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract register(ILjava/lang/String;IILjava/util/List;Ljava/util/List;Lcom/sec/ims/options/Capabilities;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLandroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerUaListener(ILcom/sec/internal/ims/core/handler/secims/StackEventListener;)V
.end method

.method public abstract rejectCall(IILcom/sec/ims/util/SipError;Landroid/os/Message;)V
.end method

.method public abstract rejectModifyCallType(II)V
.end method

.method public abstract replyModifyCallType(IIIILjava/lang/String;)V
.end method

.method public abstract replyWithIdc(IIIILjava/lang/String;)V
.end method

.method public abstract requestPublish(ILcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V
.end method

.method public abstract requestUnpublish(I)V
.end method

.method public abstract resumeCall(IILandroid/os/Message;)V
.end method

.method public abstract resumeVideo(IILandroid/os/Message;)V
.end method

.method public abstract send(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V
.end method

.method public abstract sendAuthResponse(IILjava/lang/String;)V
.end method

.method public abstract sendCmcInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
.end method

.method public abstract sendDtmfEvent(IILjava/lang/String;)V
.end method

.method public abstract sendEmergencyLocationPublish(I)V
.end method

.method public abstract sendInfo(IIIILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;Landroid/os/Message;)V
.end method

.method public abstract sendMediaEvent(IIII)V
.end method

.method public abstract sendMmsProcType(IZ)V
.end method

.method public abstract sendNegotiatedLocalSdp(ILjava/lang/String;)V
.end method

.method public abstract sendSignDigestResponse(ILjava/lang/String;)V
.end method

.method public abstract sendSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)V
.end method

.method public abstract sendSmsResponse(ILjava/lang/String;I)V
.end method

.method public abstract sendSmsRpAckResponse(ILjava/lang/String;)V
.end method

.method public abstract sendText(IILjava/lang/String;I)V
.end method

.method public abstract sendVcsInfo(IILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/AdditionalContents;)V
.end method

.method public abstract setPreferredImpu(ILjava/lang/String;)V
.end method

.method public abstract setQuantumSecurityInfo(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVideoCrtAudio(IIZ)V
.end method

.method public abstract setVowifi5gsaMode(II)V
.end method

.method public abstract startCamera(III)V
.end method

.method public abstract startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)V
.end method

.method public abstract startLocalRingBackTone(IIIILandroid/os/Message;)V
.end method

.method public abstract startRecord(IILjava/lang/String;)V
.end method

.method public abstract startVideoEarlyMedia(II)V
.end method

.method public abstract stopCamera(I)V
.end method

.method public abstract stopLocalRingBackTone(I)V
.end method

.method public abstract stopRecord(II)V
.end method

.method public abstract transferCall(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract unRegisterUaListener(I)V
.end method

.method public abstract updateAirplaneMode(Z)V
.end method

.method public abstract updateAudioInterface(ILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract updateCall(IIIILjava/lang/String;)V
.end method

.method public abstract updateCmcExtCallCount(II)V
.end method

.method public abstract updateCmcHotspotState(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateConfCall(IIIILjava/lang/String;)V
.end method

.method public abstract updateGeolocation(ILcom/sec/internal/constants/ims/gls/LocationInfo;)V
.end method

.method public abstract updateNrSaModeOnStart(I)V
.end method

.method public abstract updatePani(ILjava/util/List;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateRat(II)V
.end method

.method public abstract updateTimeInPlani(IJ)V
.end method

.method public abstract updateVceConfig(IZ)V
.end method

.method public abstract updateWithIdc(IILjava/lang/String;)V
.end method
