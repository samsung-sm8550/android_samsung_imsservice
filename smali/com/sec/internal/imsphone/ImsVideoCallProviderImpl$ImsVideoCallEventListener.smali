.class Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;
.super Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;
.source "ImsVideoCallProviderImpl.java"


# instance fields
.field private mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

.field final synthetic this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;


# direct methods
.method public constructor <init>(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IVideoServiceEventListener$Stub;-><init>()V

    .line 455
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    return-void
.end method

.method private checkInvalidStatus(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 880
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertStateToVideoProfile(I)I

    move-result v1

    .line 881
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoPause()Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v1, v1, 0x4

    .line 884
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoQuality()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertQualityToVideoProfile(I)I

    move-result p0

    .line 886
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 889
    :cond_2
    new-instance p1, Landroid/telecom/VideoProfile;

    invoke-direct {p1, v1, p0}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object p1
.end method

.method private convertQualityToVideoProfile(I)I
    .locals 0

    .line 0
    const/16 p0, 0xc

    if-eq p1, p0, :cond_2

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method private convertStateToVideoProfile(I)I
    .locals 3

    .line 0
    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    :cond_0
    move p0, v0

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v1

    :cond_3
    :goto_0
    return p0
.end method


# virtual methods
.method public changeCameraCapabilities(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 704
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeCameraCapabilities() width : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    new-instance p1, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-direct {p1, p2, p3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(II)V

    .line 707
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getSession()Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-object p0
.end method

.method public onCameraState(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCameraState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000026

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 574
    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 570
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x5

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 563
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x6

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 558
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onChangeCallDataUsage(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 813
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onChangePeerDimension(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 668
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 672
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChangePeerDimension() width : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p2, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->changePeerDimensions(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onEmojiState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_5

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p1, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEmojiState() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 784
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b2

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 780
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b1

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 776
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x4b0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public onRecordState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 721
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_7

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    if-nez p1, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRecordState() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 749
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x457

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 745
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44f

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 741
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44e

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 737
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x456

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 733
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44d

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 729
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x44c

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_0
    return-void
.end method

.method public onVideoOrientChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onVideoQualityChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 634
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 637
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onVideoQualityChanged() "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    goto :goto_0

    .line 645
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V

    goto :goto_0

    .line 641
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->changeVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public onVideoState(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 596
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x30000027

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p1, 0x2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    goto :goto_0

    .line 615
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x3e9

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V

    .line 611
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    const/16 p1, 0x3e8

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 606
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v0}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V

    goto :goto_0

    .line 602
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->handleCallSessionEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 478
    :cond_0
    const-string p1, "ImsVTProviderImpl"

    const-string/jumbo v0, "receiveSessionModifyRequest()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0, p2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 485
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->checkInvalidStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 502
    :cond_0
    const-string/jumbo p1, "receiveSessionModifyResponse()"

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p1

    .line 505
    invoke-direct {p0, p4}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->convertCallProfileToVideoProfile(Lcom/sec/ims/volte2/data/CallProfile;)Landroid/telecom/VideoProfile;

    move-result-object p3

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const-wide v3, 0x408f400000000000L    # 1000.0

    if-ne p2, v1, :cond_4

    if-eqz p1, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {p4}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_2

    .line 514
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p2, v2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V

    .line 516
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#IMSCALL - Call Modify KPI - Success : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {v5}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v2, p4

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/16 p4, 0x456

    if-ne p2, p4, :cond_5

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#IMSCALL - Call Modify KPI - Rejected : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p4}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    const/16 p4, 0x455

    if-eq p2, p4, :cond_6

    const/16 p4, 0x1e7

    if-ne p2, p4, :cond_7

    .line 523
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#IMSCALL - Call Modify KPI - Failure : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p4}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 527
    :cond_7
    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->mCallback:Lcom/android/ims/internal/IImsVideoCallCallback;

    invoke-interface {p0, v2, p1, p3}, Lcom/android/ims/internal/IImsVideoCallCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setVideoPause(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;->this$0:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    invoke-static {p0, p2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->-$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V

    :cond_1
    :goto_0
    return-void
.end method
