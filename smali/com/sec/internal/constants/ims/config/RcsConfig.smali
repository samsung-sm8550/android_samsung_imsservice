.class public final Lcom/sec/internal/constants/ims/config/RcsConfig;
.super Ljava/lang/Object;
.source "RcsConfig.java"


# instance fields
.field private mCbMsgTech:I

.field private mConfUri:Ljava/lang/String;

.field private mDownloadsPath:Ljava/lang/String;

.field private mEndUserConfReqId:Ljava/lang/String;

.field private mExploderUri:Ljava/lang/String;

.field private mFtChunkSize:I

.field private mIsAggrImdnSupported:Z

.field private mIsConfSubscribeEnabled:Z

.field private mIsMsrpCema:Z

.field private mIsPrivacyDisable:Z

.field private mIshChunkSize:I

.field private mPagerModeLimit:I

.field private mSupportBotVersions:Ljava/lang/String;

.field private mSupportCancelMessage:I

.field private mSupportRealtimeUserAlias:Z

.field private mUseMsrpDiscardPort:Z


# direct methods
.method public constructor <init>(IILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;IZZZILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    move-object v0, p0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 36
    iput v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mFtChunkSize:I

    move v1, p2

    .line 37
    iput v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIshChunkSize:I

    move-object v1, p3

    .line 38
    iput-object v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mConfUri:Ljava/lang/String;

    move v1, p4

    .line 39
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsMsrpCema:Z

    move-object v1, p5

    .line 40
    iput-object v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mDownloadsPath:Ljava/lang/String;

    move v1, p6

    .line 41
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsConfSubscribeEnabled:Z

    move-object v1, p7

    .line 42
    iput-object v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mExploderUri:Ljava/lang/String;

    move v1, p8

    .line 43
    iput v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mPagerModeLimit:I

    move v1, p9

    .line 44
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mUseMsrpDiscardPort:Z

    move v1, p10

    .line 45
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsAggrImdnSupported:Z

    move v1, p11

    .line 46
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsPrivacyDisable:Z

    move v1, p12

    .line 47
    iput v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mCbMsgTech:I

    move-object v1, p13

    .line 48
    iput-object v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mEndUserConfReqId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 49
    iput-object v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportBotVersions:Ljava/lang/String;

    move/from16 v1, p15

    .line 50
    iput v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportCancelMessage:I

    move/from16 v1, p16

    .line 51
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportRealtimeUserAlias:Z

    return-void
.end method


# virtual methods
.method public getCbMsgTech()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mCbMsgTech:I

    return p0
.end method

.method public getConfUri()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mConfUri:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadsPath()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mDownloadsPath:Ljava/lang/String;

    return-object p0
.end method

.method public getEndUserConfReqId()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mEndUserConfReqId:Ljava/lang/String;

    return-object p0
.end method

.method public getExploderUri()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mExploderUri:Ljava/lang/String;

    return-object p0
.end method

.method public getFtChunkSize()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mFtChunkSize:I

    return p0
.end method

.method public getIshChunkSize()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIshChunkSize:I

    return p0
.end method

.method public getPagerModeLimit()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mPagerModeLimit:I

    return p0
.end method

.method public getSupportBotVersions()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportBotVersions:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportCancelMessage()I
    .locals 0

    .line 111
    iget p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportCancelMessage:I

    return p0
.end method

.method public getSupportRealtimeUserAlias()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportRealtimeUserAlias:Z

    return p0
.end method

.method public isAggrImdnSupported()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsAggrImdnSupported:Z

    return p0
.end method

.method public isConfSubscribeEnabled()Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsConfSubscribeEnabled:Z

    return p0
.end method

.method public isMsrpCema()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsMsrpCema:Z

    return p0
.end method

.method public isPrivacyDisable()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsPrivacyDisable:Z

    return p0
.end method

.method public isUseMsrpDiscardPort()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mUseMsrpDiscardPort:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsConfig[chunksize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mFtChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIshChunkSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confuri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mConfUri:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is msrp cema = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsMsrpCema:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", downloads path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mDownloadsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", conf.subscribe enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsConfSubscribeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", exploderUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mExploderUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pagerModeLimit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mPagerModeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useMsrpDiscardPort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mUseMsrpDiscardPort:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", aggr.imdn supported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsAggrImdnSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", privacyDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mIsPrivacyDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cbMsgTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mCbMsgTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endUserConfReqId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mEndUserConfReqId:Ljava/lang/String;

    .line 130
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportBotVersions = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportBotVersions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportCancelMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportCancelMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportRealtimeUserAlias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/config/RcsConfig;->mSupportRealtimeUserAlias:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
