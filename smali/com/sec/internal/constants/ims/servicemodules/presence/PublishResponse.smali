.class public Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;
.super Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
.source "PublishResponse.java"


# instance fields
.field private mEtag:Ljava/lang/String;

.field private mExpiresTimer:J

.field private mIsRefresh:Z

.field private mRetryAfter:J


# direct methods
.method public constructor <init>(ZILjava/lang/String;ILjava/lang/String;JZJI)V
    .locals 7

    move-object v6, p0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p11

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    move-object v0, p5

    .line 12
    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mEtag:Ljava/lang/String;

    move-wide v0, p6

    .line 13
    iput-wide v0, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mExpiresTimer:J

    move v0, p8

    .line 14
    iput-boolean v0, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mIsRefresh:Z

    move-wide/from16 v0, p9

    .line 15
    iput-wide v0, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mRetryAfter:J

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mEtag:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiresTimer()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mExpiresTimer:J

    return-wide v0
.end method

.method public getRetryAfter()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mRetryAfter:J

    return-wide v0
.end method

.method public isRefresh()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mIsRefresh:Z

    return p0
.end method
