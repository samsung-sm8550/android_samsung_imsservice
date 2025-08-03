.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshError;
.super Ljava/lang/Object;
.source "CshError.java"


# static fields
.field public static final CSH_CAM_ERROR:I = 0x7

.field public static final CSH_CANCELLED:I = 0x3

.field public static final CSH_FORBIDDEN:I = 0x5

.field public static final CSH_REJECTED:I = 0x4

.field public static final CSH_SUCCESS:I = 0x0

.field public static final CSH_TEMPORAIRLY_NOT_AVAILABLE:I = 0x2

.field public static final CSH_TIMEOUT:I = 0x6

.field public static final CSH_USER_BUSY:I = 0x1

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 16
    const-string v6, "CSH_TIMEOUT"

    const-string v7, "CSH_CAM_ERROR"

    const-string v0, "CSH_SUCCESS"

    const-string v1, "CSH_USER_BUSY"

    const-string v2, "CSH_TEMPORAIRLY_NOT_AVAILABLE"

    const-string v3, "CSH_CANCELLED"

    const-string v4, "CSH_REJECTED"

    const-string v5, "CSH_FORBIDDEN"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshError;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshError;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
