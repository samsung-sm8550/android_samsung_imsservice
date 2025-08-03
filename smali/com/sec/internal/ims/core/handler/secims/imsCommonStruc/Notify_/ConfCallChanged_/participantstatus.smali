.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/participantstatus;
.super Ljava/lang/Object;
.source "participantstatus.java"


# static fields
.field public static final PARTICIPANT_ACTIVE:I = 0x2

.field public static final PARTICIPANT_ALERTING:I = 0x5

.field public static final PARTICIPANT_INVITING:I = 0x1

.field public static final PARTICIPANT_NON_ACTIVE:I = 0x4

.field public static final PARTICIPANT_ONHOLD:I = 0x6

.field public static final PARTICIPANT_REMOVING:I = 0x3

.field public static final PARTICIPANT_STATUS_NONE:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    const-string v5, "PARTICIPANT_ALERTING"

    const-string v6, "PARTICIPANT_ONHOLD"

    const-string v0, "PARTICIPANT_STATUS_NONE"

    const-string v1, "PARTICIPANT_INVITING"

    const-string v2, "PARTICIPANT_ACTIVE"

    const-string v3, "PARTICIPANT_REMOVING"

    const-string v4, "PARTICIPANT_NON_ACTIVE"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/participantstatus;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ConfCallChanged_/participantstatus;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
