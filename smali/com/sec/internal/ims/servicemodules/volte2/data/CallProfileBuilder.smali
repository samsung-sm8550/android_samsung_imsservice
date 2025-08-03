.class public abstract Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.super Ljava/lang/Object;
.source "CallProfileBuilder.java"


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

.field protected mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "CallProfileBuilder"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 13
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "CallProfileBuilder"

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 16
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method public abstract build(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
.end method

.method public builder()Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    :cond_1
    return-object p0
.end method

.method public builder(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method public setAlertInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setAlertInfo(Ljava/lang/String;)V

    return-object p0
.end method

.method public setAudioEarlyMediaDir(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setAudioEarlyMediaDir(I)V

    return-object p0
.end method

.method public setAudioRxTrackId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setAudioRxTrackId(I)V

    return-object p0
.end method

.method public setCLI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCallType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    return-object p0
.end method

.method public setCmcBoundSessionId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    return-object p0
.end method

.method public abstract setCmcDeviceId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.end method

.method public abstract setCmcEdCallSlot(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.end method

.method public setCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    return-object p0
.end method

.method public abstract setComposerData(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.end method

.method public setConfSessionId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setConfSessionId(I)V

    return-object p0
.end method

.method public setConferenceCall(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    return-object p0
.end method

.method public setConferenceSupported(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceSupported(Ljava/lang/String;)V

    return-object p0
.end method

.method public setDelayRinging(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDelayRinging(Z)V

    return-object p0
.end method

.method public setDialingNumber(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    return-object p0
.end method

.method public setDirection(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDirection(I)V

    return-object p0
.end method

.method public abstract setDisplayName(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.end method

.method public abstract setEchoCallId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.end method

.method public setEmergencyRat(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setEmergencyRat(Ljava/lang/String;)V

    return-object p0
.end method

.method public setFeatureCaps(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setFeatureCaps(Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCSFB(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setForceCSFB(Z)V

    return-object p0
.end method

.method public setHDIcon(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setHDIcon(I)V

    return-object p0
.end method

.method public setHasDiversion(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setHasDiversion(Z)V

    return-object p0
.end method

.method public setHistoryInfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setHistoryInfo(Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsFocus(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setIsFocus(Ljava/lang/String;)V

    return-object p0
.end method

.method public setLetteringText(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setLineMsisdn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    return-object p0
.end method

.method public setModifyHeader(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setModifyHeader(Ljava/lang/String;)V

    return-object p0
.end method

.method public setNetworkType(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setNetworkType(I)V

    return-object p0
.end method

.method public setNumberPlus(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setNumberPlus(Ljava/lang/String;)V

    return-object p0
.end method

.method public setOrganization(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setOrganization(Ljava/lang/String;)V

    return-object p0
.end method

.method public setOriginatingUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setPhoneId(I)V

    return-object p0
.end method

.method public setPhotoRing(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setPhotoRing(Ljava/lang/String;)V

    return-object p0
.end method

.method public setRejectCode(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectCode(I)V

    return-object p0
.end method

.method public setRejectProtocol(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectProtocol(Ljava/lang/String;)V

    return-object p0
.end method

.method public setRejectText(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setRejectText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setRemoteHeld(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setRemoteHeld(Z)V

    return-object p0
.end method

.method public setReplaceSipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setReplaceSipCallId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setRetryAfterTime(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setRetryAfterTime(I)V

    return-object p0
.end method

.method public setSamsungMdmnCall(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setSamsungMdmnCall(Z)V

    return-object p0
.end method

.method public setSipCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setSipCallId(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSipInviteMsg(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setSipInviteMsg(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTerminatingId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->setTerminatingId(Lcom/sec/ims/util/ImsUri;)V

    return-object p0
.end method

.method public setTouchScreenEnabled(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setTouchScreenEnabled(Z)V

    return-object p0
.end method

.method public setUrn(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    return-object p0
.end method

.method public setVcrtLocalTone(Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setVcrtLocalTone(Z)V

    return-object p0
.end method

.method public setVerstat(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setVerstat(Ljava/lang/String;)V

    return-object p0
.end method
