.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo_/ErrorReason;
.super Ljava/lang/Object;
.source "ErrorReason.java"


# static fields
.field public static final AUTOMATA_PRESENT:I = 0x6

.field public static final DOES_NOT_EXIST_ANYWHERE:I = 0x2

.field public static final FAILURE_NONE:I = 0x0

.field public static final FAILURE_OTHERS:I = 0x9

.field public static final FORBIDDEN:I = 0x8

.field public static final INVALID_DATA:I = 0x7

.field public static final REQUEST_TIMEOUT:I = 0x5

.field public static final USER_NOT_AVAIABLE:I = 0x1

.field public static final USER_NOT_REACHABLE:I = 0x4

.field public static final USER_NOT_REGISTERED:I = 0x3

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 18
    const-string v8, "FORBIDDEN"

    const-string v9, "FAILURE_OTHERS"

    const-string v0, "FAILURE_NONE"

    const-string v1, "USER_NOT_AVAIABLE"

    const-string v2, "DOES_NOT_EXIST_ANYWHERE"

    const-string v3, "USER_NOT_REGISTERED"

    const-string v4, "USER_NOT_REACHABLE"

    const-string v5, "REQUEST_TIMEOUT"

    const-string v6, "AUTOMATA_PRESENT"

    const-string v7, "INVALID_DATA"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo_/ErrorReason;->names:[Ljava/lang/String;

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

    .line 20
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/OptionsReceivedInfo_/ErrorReason;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
