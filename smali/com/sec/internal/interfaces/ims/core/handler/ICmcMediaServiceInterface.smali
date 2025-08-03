.class public interface abstract Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;
.super Ljava/lang/Object;
.source "ICmcMediaServiceInterface.java"


# virtual methods
.method public abstract registerForCmcMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract sendConnectToSve(I)V
.end method

.method public abstract sendDisonnectToSve()V
.end method

.method public abstract sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
.end method

.method public abstract sreCreateRelayChannel(II)I
.end method

.method public abstract sreHoldRelayChannel(I)I
.end method

.method public abstract sreResumeRelayChannel(I)I
.end method

.method public abstract sreStartRecordingChannel(III)I
.end method

.method public abstract sreStartRelayChannel(II)I
.end method

.method public abstract startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Z
.end method

.method public abstract stopCmcRecord(II)Z
.end method

.method public abstract unregisterForCmcMediaEvent(Landroid/os/Handler;)V
.end method
