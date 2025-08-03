.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GeneralReason;
.super Ljava/lang/Object;
.source "GeneralReason.java"


# static fields
.field public static final REASON_INVALID_VALUE:I = 0x1

.field public static final REASON_NOT_AVAILABLE:I = 0x6

.field public static final REASON_NO_ERROR:I = 0x0

.field public static final REASON_NO_HANDLE:I = 0x4

.field public static final REASON_NULL_EXCEPTION:I = 0x3

.field public static final REASON_UNSUPPORTED_EVENT:I = 0x2

.field public static final REASON_WRONG_OPERATION:I = 0x5

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    const-string v5, "REASON_WRONG_OPERATION"

    const-string v6, "REASON_NOT_AVAILABLE"

    const-string v0, "REASON_NO_ERROR"

    const-string v1, "REASON_INVALID_VALUE"

    const-string v2, "REASON_UNSUPPORTED_EVENT"

    const-string v3, "REASON_NULL_EXCEPTION"

    const-string v4, "REASON_NO_HANDLE"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GeneralReason;->names:[Ljava/lang/String;

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

    .line 17
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/GeneralReason;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
