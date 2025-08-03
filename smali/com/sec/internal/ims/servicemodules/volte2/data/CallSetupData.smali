.class public Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;
.super Ljava/lang/Object;
.source "CallSetupData.java"


# instance fields
.field private mAlertInfo:Ljava/lang/String;

.field private mCallSetupError:I

.field private mCallType:I

.field private mCli:Ljava/lang/String;

.field private mCmcBoundSessionId:I

.field private mCmcCallComposerData:Ljava/lang/String;

.field private mCmcEdCallSlot:I

.field private mComposerData:Landroid/os/Bundle;

.field private mDestUri:Lcom/sec/ims/util/ImsUri;

.field private mDialingNumber:Ljava/lang/String;

.field private mIdcExtra:Ljava/lang/String;

.field private mIsEmergency:Z

.field private mIsGeolocReqForNormalCall:Z

.field private mIsLteEpsOnlyAttached:Z

.field private mLetteringText:Ljava/lang/String;

.field private mOrigUri:Lcom/sec/ims/util/ImsUri;

.field private mP2p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPEmergencyInfo:Ljava/lang/String;

.field private mReplaceCallId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mP2p:Ljava/util/List;

    const/4 v2, -0x1

    .line 34
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    .line 35
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mComposerData:Landroid/os/Bundle;

    .line 36
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    .line 37
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallSetupError:I

    .line 38
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcEdCallSlot:I

    .line 39
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsGeolocReqForNormalCall:Z

    .line 41
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIdcExtra:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcCallComposerData:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDestUri:Lcom/sec/ims/util/ImsUri;

    .line 46
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDialingNumber:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallType:I

    .line 48
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    .line 50
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->isE911Call(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    return-void
.end method

.method private static isE911Call(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/16 v0, 0x13

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAlertInfo()Ljava/lang/String;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mAlertInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getCallSetupError()I
    .locals 0

    .line 156
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallSetupError:I

    return p0
.end method

.method public getCallType()I
    .locals 0

    .line 116
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallType:I

    return p0
.end method

.method public getCli()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcBoundSessionId()I
    .locals 0

    .line 152
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    return p0
.end method

.method public getCmcCallComposerData()Ljava/lang/String;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcCallComposerData:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcEdCallSlot()I
    .locals 0

    .line 189
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcEdCallSlot:I

    return p0
.end method

.method public getComposerData()Landroid/os/Bundle;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mComposerData:Landroid/os/Bundle;

    return-object p0
.end method

.method public getDestinationUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDestUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getDialingNumber()Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDialingNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getGeolocReqForNormalCall()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsGeolocReqForNormalCall:Z

    return p0
.end method

.method public getIdcExtra()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIdcExtra:Ljava/lang/String;

    return-object p0
.end method

.method public getLetteringText()Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mLetteringText:Ljava/lang/String;

    return-object p0
.end method

.method public getLteEpsOnlyAttached()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    return p0
.end method

.method public getOriginatingUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getP2p()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mP2p:Ljava/util/List;

    return-object p0
.end method

.method public getPEmergencyInfo()Ljava/lang/String;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mPEmergencyInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getReplaceCallId()Ljava/lang/String;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    return-object p0
.end method

.method public isEmergency()Z
    .locals 0

    .line 136
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    return p0
.end method

.method public setAlertInfo(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mAlertInfo:Ljava/lang/String;

    return-void
.end method

.method public setCallSetupError(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallSetupError:I

    return-void
.end method

.method public setCli(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    return-void
.end method

.method public setCmcBoundSessionId(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    return-void
.end method

.method public setCmcCallComposerData(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcCallComposerData:Ljava/lang/String;

    return-void
.end method

.method public setCmcEdCallSlot(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcEdCallSlot:I

    return-void
.end method

.method public setComposerData(Landroid/os/Bundle;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mComposerData:Landroid/os/Bundle;

    return-void
.end method

.method public setGeolocReqForNormalCall(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsGeolocReqForNormalCall:Z

    return-void
.end method

.method public setIdcExtra(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIdcExtra:Ljava/lang/String;

    return-void
.end method

.method public setLetteringText(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mLetteringText:Ljava/lang/String;

    return-void
.end method

.method public setLteEpsOnlyAttached(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    return-void
.end method

.method public setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    return-void
.end method

.method public setP2p(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mP2p:Ljava/util/List;

    return-void
.end method

.method public setPEmergencyInfo(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mPEmergencyInfo:Ljava/lang/String;

    return-void
.end method

.method public setReplaceCallId(Ljava/lang/String;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallSetupData [mOrigUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mOrigUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDestUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDestUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDialingNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mDialingNumber:Ljava/lang/String;

    .line 202
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLetteringText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mLetteringText:Ljava/lang/String;

    .line 204
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPEmergencyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mPEmergencyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCli:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAlertInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mAlertInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLteEpsOnlyAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsLteEpsOnlyAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcBoundSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcBoundSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReplaceCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mReplaceCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcEdCallSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcEdCallSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdcExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIdcExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGeolocReqForNormalCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mIsGeolocReqForNormalCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCmcCallComposerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallSetupData;->mCmcCallComposerData:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
