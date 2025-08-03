.class public Lcom/sec/internal/ims/config/params/ACSConfig;
.super Ljava/lang/Object;
.source "ACSConfig.java"


# instance fields
.field private mAcsCompleted:Z

.field private mAcsLastError:I

.field private mAcsVersion:I

.field private mIsTriggeredByNrcr:Z

.field private mNeedForceAcs:Z

.field private mRcsBlocked:Z

.field private mRcsDormantMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsVersion:I

    .line 75
    iput v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsLastError:I

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    .line 77
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsDormantMode:Z

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    .line 79
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsBlocked:Z

    return-void
.end method

.method public disableRcsByAcs(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsBlocked:Z

    return-void
.end method

.method public getAcsLastError()I
    .locals 0

    .line 29
    iget p0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsLastError:I

    return p0
.end method

.method public getAcsVersion()I
    .locals 0

    .line 37
    iget p0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsVersion:I

    return p0
.end method

.method public isAcsCompleted()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    return p0
.end method

.method public isRcsDisabled()Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsBlocked:Z

    return p0
.end method

.method public isRcsDormantMode()Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsDormantMode:Z

    return p0
.end method

.method public isTriggeredByNrcr()Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mIsTriggeredByNrcr:Z

    return p0
.end method

.method public needForceAcs()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    return p0
.end method

.method public resetAcsSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    return-void
.end method

.method public setAcsCompleteStatus(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsCompleted:Z

    return-void
.end method

.method public setAcsLastError(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsLastError:I

    return-void
.end method

.method public setAcsVersion(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mAcsVersion:I

    return-void
.end method

.method public setForceAcs(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mNeedForceAcs:Z

    return-void
.end method

.method public setIsTriggeredByNrcr(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mIsTriggeredByNrcr:Z

    return-void
.end method

.method public setRcsDormantMode(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/params/ACSConfig;->mRcsDormantMode:Z

    return-void
.end method
