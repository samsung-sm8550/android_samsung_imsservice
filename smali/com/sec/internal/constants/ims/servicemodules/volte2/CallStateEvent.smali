.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;
.super Ljava/lang/Object;
.source "CallStateEvent.java"


# instance fields
.field private mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

.field private mAlternativeServiceReason:Ljava/lang/String;

.field private mAlternativeServiceType:Ljava/lang/String;

.field private mAlternativeServiceUrn:Ljava/lang/String;

.field private mCallType:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mIdcExtra:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

.field private mIsConference:Z

.field private mIsSdToSdPull:Z

.field private mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

.field private mPeerAddr:Lcom/sec/ims/util/NameAddr;

.field private mRemoteVideoCapa:Z

.field private mRetryAfter:I

.field private mSessionID:I

.field private mSipErrorCode:Lcom/sec/ims/util/SipError;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

.field private mUpdatedParticipants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    .line 23
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 24
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    .line 27
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 30
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->NONE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    .line 35
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    .line 36
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    .line 40
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIdcExtra:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    .line 23
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    .line 24
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    .line 27
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    .line 29
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    .line 30
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;->NONE:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    .line 34
    iput v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    .line 35
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    .line 36
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    .line 40
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIdcExtra:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    .line 100
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-void
.end method


# virtual methods
.method public addUpdatedParticipantsList(Ljava/lang/String;III)V
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlternativeService()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    return-object p0
.end method

.method public getAlternativeServiceReason()Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    return-object p0
.end method

.method public getAlternativeServiceType()Ljava/lang/String;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    return-object p0
.end method

.method public getAlternativeServiceUrn()Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    return-object p0
.end method

.method public getCallType()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    return p0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getIdcExtra()Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIdcExtra:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    return-object p0
.end method

.method public getIsSdToSdPull()Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    return p0
.end method

.method public getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-object p0
.end method

.method public getPeerAddr()Lcom/sec/ims/util/NameAddr;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method public getRemoteVideoCapa()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    return p0
.end method

.method public getRetryAfter()I
    .locals 0

    .line 212
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    return p0
.end method

.method public getSessionID()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    return p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-object p0
.end method

.method public getUpdatedParticipantsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ParticipantUser;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mUpdatedParticipants:Ljava/util/List;

    return-object p0
.end method

.method public isConference()Z
    .locals 0

    .line 220
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    return p0
.end method

.method public setAlternativeService(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeService:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$ALTERNATIVE_SERVICE;

    return-void
.end method

.method public setAlternativeServiceReason(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceReason:Ljava/lang/String;

    return-void
.end method

.method public setAlternativeServiceType(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceType:Ljava/lang/String;

    return-void
.end method

.method public setAlternativeServiceUrn(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mAlternativeServiceUrn:Ljava/lang/String;

    return-void
.end method

.method public setCallType(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCallType:I

    return-void
.end method

.method public setCmcCallTime(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcCallTime:Ljava/lang/String;

    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mCmcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setConference(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsConference:Z

    return-void
.end method

.method public setErrorCode(Lcom/sec/ims/util/SipError;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public setIdcExtra(Ljava/lang/String;)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIdcExtra:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->parse(Ljava/lang/String;)Z

    return-void
.end method

.method public setIsSdToSdPull(Z)V
    .locals 0

    .line 244
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mIsSdToSdPull:Z

    return-void
.end method

.method public setParams(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    return-void
.end method

.method public setPeerAddr(Lcom/sec/ims/util/NameAddr;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    return-void
.end method

.method public setRemoteVideoCapa(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRemoteVideoCapa:Z

    return-void
.end method

.method public setRetryAfter(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mRetryAfter:I

    return-void
.end method

.method public setSessionID(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallStateEvent [sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSessionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent$CALL_STATE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", peer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mPeerAddr:Lcom/sec/ims/util/NameAddr;

    .line 257
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSipErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;->mParams:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
