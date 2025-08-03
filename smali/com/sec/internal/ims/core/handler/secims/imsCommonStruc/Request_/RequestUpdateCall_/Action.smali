.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall_/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final CODEC_CHANGE:I = 0x1

.field public static final IDC_EXTRA:I = 0x2

.field public static final REINVITE_ONLY:I

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-string v0, "CODEC_CHANGE"

    const-string v1, "IDC_EXTRA"

    const-string v2, "REINVITE_ONLY"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall_/Action;->names:[Ljava/lang/String;

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
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateCall_/Action;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
