.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field public static final CREATED:I = 0x1

.field public static final DEACTIVATED:I = 0x5

.field public static final EXPIRED:I = 0x4

.field public static final PROBATION:I = 0x6

.field public static final REFRESHED:I = 0x2

.field public static final REGISTERED:I = 0x0

.field public static final SHORTENED:I = 0x3

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    const-string v5, "DEACTIVATED"

    const-string v6, "PROBATION"

    const-string v0, "REGISTERED"

    const-string v1, "CREATED"

    const-string v2, "REFRESHED"

    const-string v3, "SHORTENED"

    const-string v4, "EXPIRED"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Event;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged_/Event;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
