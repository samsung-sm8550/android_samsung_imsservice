.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallType;
.super Ljava/lang/Object;
.source "CallType.java"


# static fields
.field public static final RTT_VIDEO_CALL:I = 0xf

.field public static final RTT_VIDEO_CONF_CALL:I = 0x11

.field public static final RTT_VIDEO_E911_CALL:I = 0x13

.field public static final RTT_VOICE_CALL:I = 0xe

.field public static final RTT_VOICE_CONF_CALL:I = 0x10

.field public static final RTT_VOICE_E911_CALL:I = 0x12

.field public static final TTY_FULL_CALL:I = 0x9

.field public static final TTY_HCO_CALL:I = 0xa

.field public static final TTY_VCO_CALL:I = 0xb

.field public static final UNKNOWN_CALL:I = 0x0

.field public static final USSD_CALL:I = 0xc

.field public static final VIDEO_CALL:I = 0x2

.field public static final VIDEO_CONF_CALL:I = 0x6

.field public static final VIDEO_E911_CALL:I = 0x8

.field public static final VOICE_CALL:I = 0x1

.field public static final VOICE_CONF_CALL:I = 0x5

.field public static final VOICE_E911_CALL:I = 0x7

.field public static final VSH_RX_CALL:I = 0x4

.field public static final VSH_TX_CALL:I = 0x3

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 27
    const-string v18, "RTT_VOICE_E911_CALL"

    const-string v19, "RTT_VIDEO_E911_CALL"

    const-string v0, "UNKNOWN_CALL"

    const-string v1, "VOICE_CALL"

    const-string v2, "VIDEO_CALL"

    const-string v3, "VSH_TX_CALL"

    const-string v4, "VSH_RX_CALL"

    const-string v5, "VOICE_CONF_CALL"

    const-string v6, "VIDEO_CONF_CALL"

    const-string v7, "VOICE_E911_CALL"

    const-string v8, "VIDEO_E911_CALL"

    const-string v9, "TTY_FULL_CALL"

    const-string v10, "TTY_HCO_CALL"

    const-string v11, "TTY_VCO_CALL"

    const-string v12, "USSD_CALL"

    const-string v13, ""

    const-string v14, "RTT_VOICE_CALL"

    const-string v15, "RTT_VIDEO_CALL"

    const-string v16, "RTT_VOICE_CONF_CALL"

    const-string v17, "RTT_VIDEO_CONF_CALL"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallType;->names:[Ljava/lang/String;

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

    .line 29
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallType;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
