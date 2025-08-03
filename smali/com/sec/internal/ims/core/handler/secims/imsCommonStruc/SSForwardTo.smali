.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SSForwardTo;
.super Ljava/lang/Object;
.source "SSForwardTo.java"


# static fields
.field public static final FWD_TO_NOTIFY_CALLER:I = 0x1

.field public static final FWD_TO_NOTIFY_SERVED_USER:I = 0x4

.field public static final FWD_TO_NOTIFY_SERVED_USER_ON_OUTBOUND_CALL:I = 0x5

.field public static final FWD_TO_REVEAL_IDENTITY_TO_CALLER:I = 0x3

.field public static final FWD_TO_REVEAL_IDENTITY_TO_TARGET:I = 0x6

.field public static final FWD_TO_REVEAL_SERVED_USER_IDENTITY_TO_CALLER:I = 0x2

.field public static final FWD_TO_TARGET:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    const-string v5, "FWD_TO_NOTIFY_SERVED_USER_ON_OUTBOUND_CALL"

    const-string v6, "FWD_TO_REVEAL_IDENTITY_TO_TARGET"

    const-string v0, "FWD_TO_TARGET"

    const-string v1, "FWD_TO_NOTIFY_CALLER"

    const-string v2, "FWD_TO_REVEAL_SERVED_USER_IDENTITY_TO_CALLER"

    const-string v3, "FWD_TO_REVEAL_IDENTITY_TO_CALLER"

    const-string v4, "FWD_TO_NOTIFY_SERVED_USER"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SSForwardTo;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SSForwardTo;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
