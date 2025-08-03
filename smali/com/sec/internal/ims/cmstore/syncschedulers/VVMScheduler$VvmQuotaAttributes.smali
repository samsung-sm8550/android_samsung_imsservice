.class Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;
.super Ljava/lang/Object;
.source "VVMScheduler.java"


# instance fields
.field OccupiedStorage:J

.field TotalStorage:J

.field VMMessagesQuota:I

.field VMOccupiedMessages:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 169
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->TotalStorage:J

    .line 170
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->OccupiedStorage:J

    const/4 v0, 0x0

    .line 171
    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMMessagesQuota:I

    .line 172
    iput v0, p0, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;->VMOccupiedMessages:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/syncschedulers/VVMScheduler$VvmQuotaAttributes;-><init>()V

    return-void
.end method
