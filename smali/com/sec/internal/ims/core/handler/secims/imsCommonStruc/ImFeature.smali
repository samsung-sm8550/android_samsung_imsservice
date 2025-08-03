.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFeature;
.super Ljava/lang/Object;
.source "ImFeature.java"


# static fields
.field public static final GEOLOCATION:I = 0x4

.field public static final HTTP_FT:I = 0x3

.field public static final IMDN:I = 0x2

.field public static final ISCOMPOSING_TYPE:I = 0x1

.field public static final MULTIMEDIA:I = 0x5

.field public static final TEXT_PLAIN:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    const-string v4, "GEOLOCATION"

    const-string v5, "MULTIMEDIA"

    const-string v0, "TEXT_PLAIN"

    const-string v1, "ISCOMPOSING_TYPE"

    const-string v2, "IMDN"

    const-string v3, "HTTP_FT"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFeature;->names:[Ljava/lang/String;

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

    .line 16
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFeature;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
