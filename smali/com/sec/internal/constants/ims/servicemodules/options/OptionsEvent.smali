.class public Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;
.super Ljava/lang/Object;
.source "OptionsEvent.java"


# instance fields
.field private featureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtFeature:Ljava/lang/String;

.field private mFeatures:J

.field private mIsResponse:Z

.field private mIsTokenUsed:Z

.field private mPAssertedIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

.field private mReasonHdr:Ljava/lang/String;

.field private mRespCode:I

.field private mSessionId:I

.field private mSuccess:Z

.field private mTxId:Ljava/lang/String;

.field private mUri:Lcom/sec/ims/util/ImsUri;

.field private mfeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mlastSeen:I


# direct methods
.method public constructor <init>(ZLcom/sec/ims/util/ImsUri;JIZILjava/lang/String;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/ims/util/ImsUri;",
            "JIZI",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSuccess:Z

    .line 43
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 44
    iput-wide p3, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    .line 45
    iput p5, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPhoneId:I

    .line 46
    iput-boolean p6, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsResponse:Z

    .line 47
    iput p7, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSessionId:I

    .line 48
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mTxId:Ljava/lang/String;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mlastSeen:I

    .line 50
    iput-object p10, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mExtFeature:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPAssertedIdSet:Ljava/util/Set;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsTokenUsed:Z

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->featureList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getExtFeature()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mExtFeature:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->featureList:Ljava/util/List;

    return-object p0
.end method

.method public getFeatures()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    return-wide v0
.end method

.method public getIsTokenUsed()Z
    .locals 0

    .line 77
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsTokenUsed:Z

    return p0
.end method

.method public getLastSeen()I
    .locals 0

    .line 108
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mlastSeen:I

    return p0
.end method

.method public getPAssertedIdSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPAssertedIdSet:Ljava/util/Set;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPhoneId:I

    return p0
.end method

.method public getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    return-object p0
.end method

.method public getReasonHdr()Ljava/lang/String;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReasonHdr:Ljava/lang/String;

    return-object p0
.end method

.method public getRespCode()I
    .locals 0

    .line 120
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mRespCode:I

    return p0
.end method

.method public getSessionId()I
    .locals 0

    .line 104
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSessionId:I

    return p0
.end method

.method public getTxId()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mTxId:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getfeatureTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mfeatureTags:Ljava/util/List;

    return-object p0
.end method

.method public isResponse()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsResponse:Z

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSuccess:Z

    return p0
.end method

.method public setFeatureList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->featureList:Ljava/util/List;

    return-void
.end method

.method public setFeatures(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    return-void
.end method

.method public setIsTokenUsed(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsTokenUsed:Z

    return-void
.end method

.method public setLastSeen(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mlastSeen:I

    return-void
.end method

.method public setReason(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    return-void
.end method

.method public setReasonHdr(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReasonHdr:Ljava/lang/String;

    return-void
.end method

.method public setRespCode(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mRespCode:I

    return-void
.end method

.method public setfeatureTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mfeatureTags:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptionsEvent [mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mFeatures:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mIsResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mReason:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPAssertedIdSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mPAssertedIdSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->mExtFeature:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
