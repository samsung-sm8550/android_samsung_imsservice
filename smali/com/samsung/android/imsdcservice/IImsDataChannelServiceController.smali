.class public interface abstract Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;
.super Ljava/lang/Object;
.source "IImsDataChannelServiceController.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract createBootstrapDataChannel(I)V
.end method

.method public abstract endImsDataChannel(ILjava/lang/String;)V
.end method

.method public abstract getBootstrapLocalSdp(I)Ljava/lang/String;
.end method

.method public abstract getNegotiatedLocalSdp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract notifyErrorToSdpOffer(IILjava/lang/String;Z)V
.end method

.method public abstract receiveSdpAnswer(ILjava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract receiveSdpOffer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setBootstrapRemoteAnswerSdp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setBootstrapRemoteOfferSdp(ILjava/lang/String;)V
.end method

.method public abstract setImsDataChannelCallback(Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;Ljava/lang/String;)V
.end method

.method public abstract setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V
.end method
