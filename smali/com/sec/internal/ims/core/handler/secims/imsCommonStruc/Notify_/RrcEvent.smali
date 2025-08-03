.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcEvent;
.super Ljava/lang/Object;
.source "RrcEvent.java"


# static fields
.field public static final REJECTED:I = 0x1

.field public static final TIMER_EXPIRED:I = 0x2

.field public static final UN:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-string v0, "REJECTED"

    const-string v1, "TIMER_EXPIRED"

    const-string v2, "UN"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcEvent;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RrcEvent;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
