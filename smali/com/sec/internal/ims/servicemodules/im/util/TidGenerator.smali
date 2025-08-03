.class public Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;
.super Ljava/lang/Object;
.source "TidGenerator.java"


# static fields
.field private static final CLOCK_SEQ_LIMIT:I = 0x4000

.field private static final CLOCK_SEQ_MASK:I = 0x3fff

.field private static final INTERVAL:J = 0x2710L

.field private static final MULTICAST:J = 0x10000000000L

.field private static final NODE_LIMIT:J = 0x1000000000000L

.field private static final NODE_MASK:J = 0xffffffffffffL

.field private static final OFFSET:J = 0xb1d069b5400L

.field private static final RESERVED:J = -0x8000000000000000L

.field private static final VERSION_NUMBER:J = 0x1000L


# instance fields
.field private mClockSeq:J

.field private final mNode:J

.field private mPrevSysTime:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0x10000000000L

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mNode:J

    .line 35
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    return-void
.end method


# virtual methods
.method public generate()Ljava/util/UUID;
    .locals 12

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 41
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mPrevSysTime:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 42
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3fff

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    :cond_0
    const-wide v2, 0xb1d069b5400L

    add-long/2addr v2, v0

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    const/16 v4, 0x20

    shr-long v5, v2, v4

    const-wide/32 v7, 0xffff

    and-long/2addr v5, v7

    const/16 v7, 0x30

    shr-long v8, v2, v7

    const-wide/16 v10, 0xfff

    and-long/2addr v8, v10

    shl-long/2addr v2, v4

    const/16 v4, 0x10

    shl-long v4, v5, v4

    or-long/2addr v2, v4

    or-long/2addr v2, v8

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    .line 52
    iget-wide v4, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mClockSeq:J

    shl-long/2addr v4, v7

    const-wide/high16 v6, -0x8000000000000000L

    or-long/2addr v4, v6

    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mNode:J

    or-long/2addr v4, v6

    .line 54
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;->mPrevSysTime:J

    .line 56
    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method
