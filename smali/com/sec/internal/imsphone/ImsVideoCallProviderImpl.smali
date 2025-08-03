.class public Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProviderImpl.java"


# static fields
.field protected static final EMOJI_START_FAILURE:I = 0x4b1

.field protected static final EMOJI_START_SUCCESS:I = 0x4b0

.field protected static final EMOJI_STOP_FAILURE:I = 0x4b3

.field protected static final EMOJI_STOP_SUCCESS:I = 0x4b2

.field protected static final IDC_SCREEN_SHARE_START:I = 0x4b4

.field protected static final IDC_SCREEN_SHARE_STOP:I = 0x4b5

.field private static final LOG_TAG:Ljava/lang/String; = "ImsVTProviderImpl"

.field protected static final NOTIFY_DOWNGRADED:I = 0x3e9

.field protected static final NOTIFY_VIDEO_RESUMED:I = 0x3e8

.field protected static final RECORD_START_FAILURE:I = 0x44d

.field protected static final RECORD_START_FAILURE_NO_SPACE:I = 0x456

.field protected static final RECORD_START_SUCCESS:I = 0x44c

.field protected static final RECORD_STOP_FAILURE:I = 0x44f

.field protected static final RECORD_STOP_NO_SPACE:I = 0x457

.field protected static final RECORD_STOP_SUCCESS:I = 0x44e


# instance fields
.field private mIsDummyCamera:Z

.field private mIsVideoPause:Z

.field protected mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

.field private mModifyRequestTime:J

.field protected mRelay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/volte2/IVideoServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mSession:Lcom/sec/ims/volte2/IImsCallSession;


# direct methods
.method static bridge synthetic -$$Nest$fgetmModifyRequestTime(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mModifyRequestTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmIsVideoPause(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mModifyRequestTime:J

    .line 50
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    .line 54
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private convertQualityFromVideoProfile(I)I
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    const/16 v0, 0xd

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/16 v0, 0xf

    :cond_2
    :goto_0
    return v0
.end method

.method private notifyLocalVideoSize(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v1

    .line 141
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v2

    .line 142
    const-string v3, "ImsVTProviderImpl"

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e0

    const/16 v1, 0x280

    goto :goto_0

    .line 147
    :cond_0
    const-string p0, "Use updateCallProfile notification"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notify Local video width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " videoSize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 154
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    const-string v5, "LAND"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "QCIF"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 156
    invoke-interface {v4, p1, v1, v0}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_1

    .line 158
    :cond_3
    invoke-interface {v4, p1, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private setCameraAdditionService(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    const-string v0, "effect,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    .line 167
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setCameraEffect(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid effect Id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsVTProviderImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    .line 173
    :cond_0
    const-string/jumbo v0, "startRecord,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startRecord(Ljava/lang/String;)V

    return v1

    .line 177
    :cond_1
    const-string/jumbo v0, "stopRecord"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopRecord()V

    return v1

    .line 180
    :cond_2
    const-string v0, "filter,0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->stopEmoji(I)V

    return v1

    .line 183
    :cond_3
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->startEmoji(Ljava/lang/String;)V

    return v1

    .line 186
    :cond_4
    const-string v0, "StartScreenSharing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const/16 v3, 0x64

    if-eqz v0, :cond_5

    .line 187
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, v3, p0, v1, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendGeneralEvent(IIILjava/lang/String;)V

    return v1

    .line 189
    :cond_5
    const-string v0, "StopScreenSharing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 190
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, v3, p0, v0, v2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendGeneralEvent(IIILjava/lang/String;)V

    return v1

    :cond_6
    return v0
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 401
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->requestCallDataUsage()V

    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/MediaProfile;->getWidth()I

    move-result v1

    .line 377
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getHeight()I

    move-result v2

    .line 378
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/MediaProfile;->getVideoSize()Ljava/lang/String;

    move-result-object v3

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCameraCapabilities() width : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " height : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsVTProviderImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 382
    const-string v5, "LAND"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "QCIF"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 383
    invoke-interface {v4, v0, v2, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-interface {v4, v0, v1, v2}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->changeCameraCapabilities(III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5

    .line 272
    monitor-enter p0

    if-eqz p2, :cond_9

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 277
    :cond_0
    const-string v0, "ImsVTProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSessionModifyRequest from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 281
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p1, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 283
    :cond_1
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 284
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 286
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 288
    invoke-virtual {p1, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 291
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    if-nez v1, :cond_5

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_5
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v1

    .line 296
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result v3

    .line 295
    invoke-virtual {v1, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 298
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mModifyRequestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v3

    if-eq v1, v3, :cond_6

    .line 304
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v1, ""

    invoke-interface {p2, p1, v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 306
    :cond_6
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 307
    iput-boolean v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 308
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->holdVideo()V

    goto :goto_2

    .line 309
    :cond_7
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    invoke-static {p1}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz p1, :cond_8

    .line 310
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    .line 311
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->resumeVideo()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 315
    :goto_1
    :try_start_2
    const-string p2, "ImsVTProviderImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t notify due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    .line 274
    :cond_9
    :goto_3
    monitor-exit p0

    return-void

    .line 317
    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 327
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 331
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendSessionModifyResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVTProviderImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    const/4 v1, 0x0

    .line 333
    invoke-virtual {v0, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 334
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 336
    invoke-virtual {v0, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 338
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 340
    :goto_0
    iget-boolean v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    if-eqz v2, :cond_5

    .line 341
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsVideoPause:Z

    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isBidirectional(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 344
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_1

    .line 345
    :cond_3
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isTransmissionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    .line 346
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    goto :goto_1

    .line 347
    :cond_4
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v2}, Landroid/telecom/VideoProfile;->isReceptionEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    .line 348
    invoke-virtual {v0, v2}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 351
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-nez v2, :cond_6

    return-void

    .line 355
    :cond_6
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    .line 356
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->convertQualityFromVideoProfile(I)I

    move-result p1

    .line 355
    invoke-virtual {v2, p1}, Lcom/sec/ims/volte2/data/MediaProfile;->setVideoQuality(I)V

    .line 359
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result p1

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    if-ne p1, v2, :cond_7

    .line 360
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V

    goto :goto_2

    .line 362
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0, v0}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_2
    return-void
.end method

.method public declared-synchronized setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_2

    .line 73
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 74
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->unregisterForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 82
    :cond_2
    :try_start_1
    new-instance v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl$ImsVideoCallEventListener;-><init>(Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 83
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p1, v0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->registerForVideoServiceEvent(Lcom/sec/ims/volte2/IVideoServiceEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 69
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public setCamera(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 100
    :cond_0
    const-string p2, "ImsVTProviderImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCamera("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): cameraId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x30000025

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-nez p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    iget-boolean p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    invoke-interface {p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->stopCameraForProvider(Z)V

    .line 105
    iget-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 108
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->setCameraAdditionService(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 112
    monitor-exit p0

    return-void

    .line 115
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->getDefaultCameraId()I

    move-result p2

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 117
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

    .line 120
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mIsDummyCamera:Z

    .line 121
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    goto :goto_2

    :cond_4
    if-eq p2, p1, :cond_5

    if-eq p2, v2, :cond_5

    .line 122
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 123
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->switchCamera()V

    goto :goto_2

    .line 125
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 126
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mRelay:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IVideoServiceEventListener;

    .line 127
    invoke-interface {v2, v0, v1}, Lcom/sec/ims/volte2/IVideoServiceEventListener;->onCameraState(II)V

    goto :goto_1

    .line 130
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p2

    if-lez p2, :cond_7

    .line 131
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 134
    :cond_7
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->notifyLocalVideoSize(I)V

    .line 135
    monitor-exit p0

    return-void

    .line 98
    :cond_8
    :goto_3
    monitor-exit p0

    return-void

    .line 135
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "ImsVTProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeviceOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 242
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000002a

    .line 241
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDeviceOrientation(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 245
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    .line 222
    const-string v0, "ImsVTProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 224
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000029

    .line 223
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setDisplaySurface(ILandroid/view/Surface;)V

    .line 227
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-nez v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x3000002b

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendStillImage filePath "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsVTProviderImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    const-string v6, "VGA"

    const/4 v7, 0x0

    const/16 v5, 0x100

    invoke-interface/range {v2 .. v7}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendStillImage(ILjava/lang/String;ILjava/lang/String;I)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getUsingCamera()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p1

    if-lez p1, :cond_2

    .line 423
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->startCameraForProvider(I)V

    .line 425
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->sendLiveVideo(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "ImsVTProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 207
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "0"

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x30000028

    .line 206
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setPreviewSurface(ILandroid/view/Surface;)V

    .line 210
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setZoom(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->mMediaController:Lcom/sec/ims/volte2/IImsMediaCallProvider;

    if-eqz v0, :cond_0

    .line 258
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsMediaCallProvider;->setZoom(F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 260
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
