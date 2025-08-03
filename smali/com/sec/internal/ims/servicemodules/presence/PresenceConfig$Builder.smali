.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;
.super Ljava/lang/Object;
.source "PresenceConfig.java"


# instance fields
.field badEventExpiry:J

.field isLocalConfigUsed:Z

.field maxUri:I

.field publishErrRetry:J

.field publishTimer:J

.field publishTimerExtended:J

.field retryPublishTimer:J

.field sourceThrottlePublish:J

.field sourceThrottleSubscribe:J

.field tDelayPublish:J

.field useAnonymousFetch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->useAnonymousFetch:Z

    .line 269
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->isLocalConfigUsed:Z

    const-wide/16 v0, 0x0

    .line 270
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottlePublish:J

    .line 271
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottleSubscribe:J

    const-wide/16 v0, 0x5

    .line 272
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->tDelayPublish:J

    const-wide/16 v0, 0x4b0

    .line 273
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimer:J

    .line 274
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->retryPublishTimer:J

    const-wide/32 v0, 0x15180

    .line 275
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimerExtended:J

    const-wide/16 v0, 0x5460

    .line 276
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishErrRetry:J

    const-wide/32 v0, 0x3f480

    .line 277
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->badEventExpiry:J

    const/16 v0, 0x64

    .line 278
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->maxUri:I

    return-void
.end method
