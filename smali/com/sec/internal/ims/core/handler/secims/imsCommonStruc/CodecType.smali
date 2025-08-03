.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CodecType;
.super Ljava/lang/Object;
.source "CodecType.java"


# static fields
.field public static final AMR:I = 0x0

.field public static final AMR_WB:I = 0x1

.field public static final H_264:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-string v0, "AMR_WB"

    const-string v1, "H_264"

    const-string v2, "AMR"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CodecType;->names:[Ljava/lang/String;

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

    .line 13
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CodecType;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
