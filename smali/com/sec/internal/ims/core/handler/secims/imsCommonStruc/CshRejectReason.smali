.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshRejectReason;
.super Ljava/lang/Object;
.source "CshRejectReason.java"


# static fields
.field public static final BUSY:I = 0x2

.field public static final DEVICE_FAILED:I = 0x3

.field public static final NO_ANSWER:I = 0x1

.field public static final USER:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    const-string v0, "BUSY"

    const-string v1, "DEVICE_FAILED"

    const-string v2, "USER"

    const-string v3, "NO_ANSWER"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshRejectReason;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CshRejectReason;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
