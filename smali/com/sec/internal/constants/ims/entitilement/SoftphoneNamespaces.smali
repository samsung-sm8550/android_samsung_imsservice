.class public Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;
.super Ljava/lang/Object;
.source "SoftphoneNamespaces.java"


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final mTimeoutType1:[J

.field public static final mTimeoutType2:[J

.field public static final mTimeoutType3:[J

.field public static final mTimeoutType4:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 291
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    .line 295
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    .line 299
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    .line 303
    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    return-void

    :array_0
    .array-data 8
        0x7d0
        0x1388
        0x4e20
    .end array-data

    :array_1
    .array-data 8
        0xbb8
        0x1b58
        0x61a8
    .end array-data

    :array_2
    .array-data 8
        0x1b58
        0x3a98
        0x88b8
    .end array-data

    :array_3
    .array-data 8
        0x1388
        0x3a98
        0xafc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
