.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiReason;
.super Ljava/lang/Object;
.source "RegiReason.java"


# static fields
.field public static final ERROR_RESP:I = 0x3

.field public static final INVALID_DATA:I = 0x1

.field public static final NO_ERROR:I = 0x0

.field public static final UNSUPPORTED_EVENT:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "UNSUPPORTED_EVENT"

    const-string v1, "ERROR_RESP"

    const-string v2, "NO_ERROR"

    const-string v3, "INVALID_DATA"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiReason;->names:[Ljava/lang/String;

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

    .line 14
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/RegiReason;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
