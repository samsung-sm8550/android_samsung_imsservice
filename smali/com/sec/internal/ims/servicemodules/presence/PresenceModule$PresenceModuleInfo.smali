.class Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
.super Ljava/lang/Object;
.source "PresenceModule.java"


# instance fields
.field mBackupPublishTimestamp:J

.field mBadEventIntent:Landroid/app/PendingIntent;

.field mBadEventProgress:Z

.field mFirstPublish:Z

.field mLastBadEventTimestamp:J

.field mLastPublishTimestamp:J

.field mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field mLimitImmediateRetry:Z

.field mLimitReRegistration:Z

.field mMno:Lcom/sec/internal/constants/Mno;

.field mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field mOwnInfoPublished:Z

.field mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

.field mParalysed:Z

.field mPollingIntent:Landroid/app/PendingIntent;

.field mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

.field mPublishExpBackOffRetryCount:I

.field mPublishNoResponseCount:I

.field mPublishNotFoundProgress:Z

.field mPublishNotProvisionedCount:I

.field mPublishRequestTimeout:I

.field mRegInfo:Lcom/sec/ims/ImsRegistration;

.field mRequestPublishToAosp:Z

.field mRetryPublishIntent:Landroid/app/PendingIntent;

.field mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field ongoingPublishErrRetry:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRequestPublishToAosp:Z

    const-wide/16 v1, -0x1

    .line 130
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    .line 131
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    .line 132
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotFoundProgress:Z

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    .line 138
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    .line 139
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 143
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 144
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->NONE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-void
.end method
