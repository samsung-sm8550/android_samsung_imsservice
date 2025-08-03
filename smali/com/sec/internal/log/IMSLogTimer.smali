.class public Lcom/sec/internal/log/IMSLogTimer;
.super Ljava/lang/Object;
.source "IMSLogTimer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IMSLogTimer"

.field private static mIsImsPdnRequest:[Z

.field private static mLatchEndTime:[J

.field private static mLatchStartTime:[J

.field private static mPdnEndTime:[J

.field private static mPdnStartTime:[J

.field private static mVolteRegisterEndTime:[J

.field private static mVolteRegisterStartTime:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 8
    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sec/internal/log/IMSLogTimer;->mIsImsPdnRequest:[Z

    .line 9
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sec/internal/log/IMSLogTimer;->mLatchStartTime:[J

    .line 10
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sec/internal/log/IMSLogTimer;->mLatchEndTime:[J

    .line 11
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/sec/internal/log/IMSLogTimer;->mPdnStartTime:[J

    .line 12
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/sec/internal/log/IMSLogTimer;->mPdnEndTime:[J

    .line 13
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/sec/internal/log/IMSLogTimer;->mVolteRegisterStartTime:[J

    .line 14
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sec/internal/log/IMSLogTimer;->mVolteRegisterEndTime:[J

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentTime()J
    .locals 2

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getIsImsPdnRequest(I)Z
    .locals 1

    .line 21
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mIsImsPdnRequest:[Z

    aget-boolean p0, v0, p0

    return p0
.end method

.method public static getLatchEndTime(I)J
    .locals 2

    .line 45
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mLatchEndTime:[J

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public static getLatchStartTime(I)J
    .locals 2

    .line 37
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mLatchStartTime:[J

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public static getPdnEndTime(I)J
    .locals 2

    .line 66
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mPdnEndTime:[J

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public static getPdnStartTime(I)J
    .locals 2

    .line 54
    invoke-static {p0}, Lcom/sec/internal/log/IMSLogTimer;->getIsImsPdnRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mPdnStartTime:[J

    aget-wide v0, v0, p0

    return-wide v0

    .line 57
    :cond_0
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mLatchEndTime:[J

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public static getVolteRegisterEndTime(I)J
    .locals 2

    .line 82
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mVolteRegisterEndTime:[J

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public static getVolteRegisterStartTime(I)J
    .locals 2

    .line 74
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mVolteRegisterStartTime:[J

    aget-wide v0, v0, p0

    return-wide v0
.end method

.method public static setLatchEndTime(I)V
    .locals 3

    .line 41
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mLatchEndTime:[J

    invoke-static {}, Lcom/sec/internal/log/IMSLogTimer;->getCurrentTime()J

    move-result-wide v1

    aput-wide v1, v0, p0

    return-void
.end method

.method public static setLatchStartTime(I)V
    .locals 5

    .line 25
    invoke-static {}, Lcom/sec/internal/log/IMSLogTimer;->getCurrentTime()J

    move-result-wide v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, v2, :cond_0

    .line 27
    sget-object p0, Lcom/sec/internal/log/IMSLogTimer;->mLatchStartTime:[J

    aput-wide v0, p0, v4

    .line 28
    aput-wide v0, p0, v3

    goto :goto_0

    .line 30
    :cond_0
    sget-object v2, Lcom/sec/internal/log/IMSLogTimer;->mLatchStartTime:[J

    aput-wide v0, v2, p0

    .line 32
    :goto_0
    sget-object p0, Lcom/sec/internal/log/IMSLogTimer;->mIsImsPdnRequest:[Z

    aput-boolean v4, p0, v4

    .line 33
    aput-boolean v4, p0, v3

    return-void
.end method

.method public static setPdnEndTime(I)V
    .locals 3

    .line 62
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mPdnEndTime:[J

    invoke-static {}, Lcom/sec/internal/log/IMSLogTimer;->getCurrentTime()J

    move-result-wide v1

    aput-wide v1, v0, p0

    return-void
.end method

.method public static setPdnStartTime(IZ)V
    .locals 3

    .line 49
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mPdnStartTime:[J

    invoke-static {}, Lcom/sec/internal/log/IMSLogTimer;->getCurrentTime()J

    move-result-wide v1

    aput-wide v1, v0, p0

    .line 50
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mIsImsPdnRequest:[Z

    aput-boolean p1, v0, p0

    return-void
.end method

.method public static setVolteRegisterEndTime(I)V
    .locals 3

    .line 78
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mVolteRegisterEndTime:[J

    invoke-static {}, Lcom/sec/internal/log/IMSLogTimer;->getCurrentTime()J

    move-result-wide v1

    aput-wide v1, v0, p0

    return-void
.end method

.method public static setVolteRegisterStartTime(I)V
    .locals 3

    .line 70
    sget-object v0, Lcom/sec/internal/log/IMSLogTimer;->mVolteRegisterStartTime:[J

    invoke-static {}, Lcom/sec/internal/log/IMSLogTimer;->getCurrentTime()J

    move-result-wide v1

    aput-wide v1, v0, p0

    return-void
.end method
