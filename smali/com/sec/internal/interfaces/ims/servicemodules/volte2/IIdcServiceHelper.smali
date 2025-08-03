.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;
.super Ljava/lang/Object;
.source "IIdcServiceHelper.java"


# virtual methods
.method public abstract createBootstrapDataChannel(I)V
.end method

.method public abstract finishIDCApp()V
.end method

.method public abstract getBootstrapLocalSdp(I)Ljava/lang/String;
.end method

.method public abstract getNegotiatedLocalSdp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract notifyCallEnded(II)V
.end method

.method public abstract notifyCallEstablished(I)V
.end method

.method public abstract notifyErrorToSdpOffer(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
.end method

.method public abstract onImsIncomingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
.end method

.method public abstract onImsOutgoingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
.end method

.method public abstract receiveSdpAnswer(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
.end method

.method public abstract receiveSdpOffer(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
.end method

.method public abstract setBootstrapRemoteAnswerSdp(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
.end method

.method public abstract setBootstrapRemoteOfferSdp(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
.end method

.method public abstract setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V
.end method
