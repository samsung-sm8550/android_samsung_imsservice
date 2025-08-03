.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
.super Ljava/lang/Enum;
.source "ImSessionStopReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum CLOSE_1_TO_1_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

.field public static final enum VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;


# instance fields
.field private final mCauseCode:I

.field private final mReasonText:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    .locals 6

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->CLOSE_1_TO_1_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v1, "VOLUNTARILY"

    const/4 v2, 0x0

    const/16 v3, 0xc8

    const-string v4, "Call completed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v1, "INVOLUNTARILY"

    const/4 v2, 0x1

    const/16 v5, 0x1f7

    const-string v6, "Service Unavailable"

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 21
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v1, "DEDICATED_BEARER_UNAVAILABLE_TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 23
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v1, "GC_FORCE_CLOSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 25
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v1, "NO_RESPONSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 27
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const-string v1, "CLOSE_1_TO_1_SESSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->CLOSE_1_TO_1_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    .line 14
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x25b

    .line 33
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mCauseCode:I

    .line 34
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mReasonText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mCauseCode:I

    .line 39
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mReasonText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    return-object v0
.end method


# virtual methods
.method public getCauseCode()I
    .locals 0

    .line 43
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mCauseCode:I

    return p0
.end method

.method public getReasonText()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->mReasonText:Ljava/lang/String;

    return-object p0
.end method
