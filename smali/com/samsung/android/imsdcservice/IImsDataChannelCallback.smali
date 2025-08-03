.class public interface abstract Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;
.super Ljava/lang/Object;
.source "IImsDataChannelCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract sendCallEnd(Ljava/lang/String;)V
.end method

.method public abstract sendNegotiatedLocalSdp(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendSdpAnswer(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract sendSdpOffer(ILjava/lang/String;ILjava/lang/String;)V
.end method
