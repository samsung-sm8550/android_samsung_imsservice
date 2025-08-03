.class public interface abstract Lcom/sec/internal/ims/servicemodules/volte2/IImsMediaController;
.super Ljava/lang/Object;
.source "IImsMediaController.java"


# virtual methods
.method public abstract bindToNetwork(Landroid/net/Network;)V
.end method

.method public abstract changeCameraCapabilities(III)V
.end method

.method public abstract getDefaultCameraId()I
.end method

.method public abstract holdVideo(I)V
.end method

.method public abstract onCallDowngraded(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;)V
.end method

.method public abstract onChangeCallDataUsage(IJ)V
.end method

.method public abstract receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
.end method

.method public abstract receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
.end method

.method public abstract registerForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
.end method

.method public abstract registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
.end method

.method public abstract requestCallDataUsage()V
.end method

.method public abstract resetCameraId()V
.end method

.method public abstract resumeVideo(I)V
.end method

.method public abstract sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract sendGeneralEvent(IIILjava/lang/String;)V
.end method

.method public abstract sendLiveVideo(I)V
.end method

.method public abstract sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V
.end method

.method public abstract setCameraEffect(I)V
.end method

.method public abstract setDeviceOrientation(I)V
.end method

.method public abstract setDisplaySurface(ILandroid/view/Surface;)V
.end method

.method public abstract setPreviewResolution(II)V
.end method

.method public abstract setPreviewSurface(ILandroid/view/Surface;)V
.end method

.method public abstract setVideoPause(IZ)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract startCamera(II)V
.end method

.method public abstract startCameraForActiveExcept(I)V
.end method

.method public abstract startEmoji(Ljava/lang/String;)V
.end method

.method public abstract startRecord(Ljava/lang/String;)V
.end method

.method public abstract stopActiveCamera()V
.end method

.method public abstract stopCamera(I)V
.end method

.method public abstract stopEmoji(I)V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract switchCamera()V
.end method

.method public abstract unregisterForMediaEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
.end method

.method public abstract unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
.end method
