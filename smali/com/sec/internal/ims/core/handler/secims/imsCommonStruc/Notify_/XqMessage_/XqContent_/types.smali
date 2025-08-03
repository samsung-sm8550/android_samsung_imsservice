.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent_/types;
.super Ljava/lang/Object;
.source "types.java"


# static fields
.field public static final STRING:I = 0x4

.field public static final UCHAR:I = 0x1

.field public static final UINT32:I = 0x3

.field public static final UN:I = 0x0

.field public static final USHORT:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    const-string v0, "UINT32"

    const-string v1, "STRING"

    const-string v2, "UN"

    const-string v3, "UCHAR"

    const-string v4, "USHORT"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent_/types;->names:[Ljava/lang/String;

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

    .line 15
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/XqMessage_/XqContent_/types;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
