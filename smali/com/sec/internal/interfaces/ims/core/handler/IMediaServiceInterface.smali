.class public interface abstract Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
.super Ljava/lang/Object;
.source "IMediaServiceInterface.java"


# virtual methods
.method public abstract bindToNetwork(Landroid/net/Network;)V
.end method

.method public abstract deinitSurface(Z)V
.end method

.method public abstract getCameraInfo(I)V
.end method

.method public abstract getHwSupportedVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMaxZoom()V
.end method

.method public abstract getZoom()V
.end method

.method public abstract holdVideo(II)V
.end method

.method public abstract registerForMediaEvent(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract requestCallDataUsage()V
.end method

.method public abstract resetCameraId()V
.end method

.method public abstract restartEmoji(II)V
.end method

.method public abstract resumeVideo(II)V
.end method

.method public abstract sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendGeneralEvent(IIILjava/lang/String;)V
.end method

.method public abstract sendMediaEvent(IIII)V
.end method

.method public abstract sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
.end method

.method public abstract sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setCamera(I)V
.end method

.method public abstract setCameraEffect(I)V
.end method

.method public abstract setDisplaySurface(ILjava/lang/Object;I)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setPreviewResolution(II)V
.end method

.method public abstract setPreviewSurface(ILjava/lang/Object;I)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract startCamera(III)V
.end method

.method public abstract startCamera(Landroid/view/Surface;)V
.end method

.method public abstract startEmoji(IILjava/lang/String;)V
.end method

.method public abstract startLocalRingBackTone(III)I
.end method

.method public abstract startRecord(IILjava/lang/String;)V
.end method

.method public abstract startRender(Z)V
.end method

.method public abstract startVideoRenderer(Landroid/view/Surface;)V
.end method

.method public abstract stopCamera(I)V
.end method

.method public abstract stopEmoji(II)V
.end method

.method public abstract stopLocalRingBackTone()I
.end method

.method public abstract stopRecord(II)V
.end method

.method public abstract stopVideoRenderer()V
.end method

.method public abstract swipeVideoSurface()V
.end method

.method public abstract switchCamera()V
.end method

.method public abstract unregisterForMediaEvent(Landroid/os/Handler;)V
.end method
