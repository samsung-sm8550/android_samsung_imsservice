.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;
.super Ljava/lang/Object;
.source "CapabilityConfig.java"


# instance fields
.field capCacheExpiry:I

.field capInfoExpiry:I

.field defaultDisc:I

.field isAvailable:Z

.field isLastseenAvailable:Z

.field pollingPeriod:I

.field pollingRate:I

.field pollingRatePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 429
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capInfoExpiry:I

    .line 430
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capCacheExpiry:I

    const/16 v1, 0x78

    .line 431
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingPeriod:I

    const/16 v1, 0xa

    .line 432
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRate:I

    const-wide/16 v1, 0xa

    .line 433
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRatePeriod:J

    .line 434
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->defaultDisc:I

    .line 435
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isAvailable:Z

    .line 436
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isLastseenAvailable:Z

    return-void
.end method
