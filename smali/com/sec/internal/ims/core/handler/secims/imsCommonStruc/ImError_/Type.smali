.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError_/Type;
.super Ljava/lang/Object;
.source "Type.java"


# static fields
.field public static final DEDICATED_BEARER_ERROR:I = 0xb

.field public static final DEVICE_UNREGISTERED:I = 0x8

.field public static final ENGINE_ERROR:I = 0x3

.field public static final MSRP_ERROR:I = 0x2

.field public static final NETWORK_ERROR:I = 0x5

.field public static final REMOTE_PARTY_CANCELED:I = 0x7

.field public static final SESSION_RELEASE:I = 0x4

.field public static final SESSION_RSRC_UNAVAILABLE:I = 0x6

.field public static final SIP_ERROR:I = 0x1

.field public static final SIP_PROVISIONAL:I = 0x9

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_IM_ERROR:I = 0xa

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 20
    const-string v10, "UNKNOWN_IM_ERROR"

    const-string v11, "DEDICATED_BEARER_ERROR"

    const-string v0, "SUCCESS"

    const-string v1, "SIP_ERROR"

    const-string v2, "MSRP_ERROR"

    const-string v3, "ENGINE_ERROR"

    const-string v4, "SESSION_RELEASE"

    const-string v5, "NETWORK_ERROR"

    const-string v6, "SESSION_RSRC_UNAVAILABLE"

    const-string v7, "REMOTE_PARTY_CANCELED"

    const-string v8, "DEVICE_UNREGISTERED"

    const-string v9, "SIP_PROVISIONAL"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError_/Type;->names:[Ljava/lang/String;

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

    .line 22
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError_/Type;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
