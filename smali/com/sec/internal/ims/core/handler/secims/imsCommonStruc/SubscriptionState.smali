.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionState;
.super Ljava/lang/Object;
.source "SubscriptionState.java"


# static fields
.field public static final ACTIVE:I = 0x2

.field public static final NEUTRAL:I = 0x1

.field public static final PENDING:I = 0x3

.field public static final TERMINATED:I = 0x4

.field public static final UNKNOWN:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    const-string v0, "PENDING"

    const-string v1, "TERMINATED"

    const-string v2, "UNKNOWN"

    const-string v3, "NEUTRAL"

    const-string v4, "ACTIVE"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionState;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionState;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
