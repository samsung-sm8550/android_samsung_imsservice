.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionType;
.super Ljava/lang/Object;
.source "ImSessionType.java"


# static fields
.field public static final SESSION_TYPE_EXTEND_TO_GROUP:I = 0x1

.field public static final SESSION_TYPE_NORMAL:I = 0x0

.field public static final SESSION_TYPE_REJOIN:I = 0x2

.field public static final SESSION_TYPE_RESTART:I = 0x3

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const-string v0, "SESSION_TYPE_REJOIN"

    const-string v1, "SESSION_TYPE_RESTART"

    const-string v2, "SESSION_TYPE_NORMAL"

    const-string v3, "SESSION_TYPE_EXTEND_TO_GROUP"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionType;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionType;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
