.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallState;
.super Ljava/lang/Object;
.source "CallState.java"


# static fields
.field public static final CALL_BUSY:I = 0x7

.field public static final CALL_CALLING:I = 0x2

.field public static final CALL_EARLY_MEDIA_START:I = 0xc

.field public static final CALL_ENDED:I = 0xb

.field public static final CALL_ESTABLISHED:I = 0x8

.field public static final CALL_EXTEND_TO_CONFERENCE:I = 0x12

.field public static final CALL_FORWARDED:I = 0x5

.field public static final CALL_HELD_BOTH:I = 0xd

.field public static final CALL_HELD_LOCAL:I = 0x9

.field public static final CALL_HELD_REMOTE:I = 0xa

.field public static final CALL_IDLE:I = 0x0

.field public static final CALL_INFO_RESPONSE:I = 0x13

.field public static final CALL_MODIFIED:I = 0xe

.field public static final CALL_REFRESHFAIL:I = 0x10

.field public static final CALL_RINGING:I = 0x3

.field public static final CALL_RINGING_BACK:I = 0x4

.field public static final CALL_SESSIONPROGRESS:I = 0xf

.field public static final CALL_TRIGGER_EPSFB:I = 0x14

.field public static final CALL_TRYING:I = 0x1

.field public static final CALL_USSD_INDI_BY_MESSAGE:I = 0x11

.field public static final CAll_ACK_RECEIVED:I = 0x6

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 29
    const-string v19, "CALL_INFO_RESPONSE"

    const-string v20, "CALL_TRIGGER_EPSFB"

    const-string v0, "CALL_IDLE"

    const-string v1, "CALL_TRYING"

    const-string v2, "CALL_CALLING"

    const-string v3, "CALL_RINGING"

    const-string v4, "CALL_RINGING_BACK"

    const-string v5, "CALL_FORWARDED"

    const-string v6, "CAll_ACK_RECEIVED"

    const-string v7, "CALL_BUSY"

    const-string v8, "CALL_ESTABLISHED"

    const-string v9, "CALL_HELD_LOCAL"

    const-string v10, "CALL_HELD_REMOTE"

    const-string v11, "CALL_ENDED"

    const-string v12, "CALL_EARLY_MEDIA_START"

    const-string v13, "CALL_HELD_BOTH"

    const-string v14, "CALL_MODIFIED"

    const-string v15, "CALL_SESSIONPROGRESS"

    const-string v16, "CALL_REFRESHFAIL"

    const-string v17, "CALL_USSD_INDI_BY_MESSAGE"

    const-string v18, "CALL_EXTEND_TO_CONFERENCE"

    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallState;->names:[Ljava/lang/String;

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

    .line 31
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CallState;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
