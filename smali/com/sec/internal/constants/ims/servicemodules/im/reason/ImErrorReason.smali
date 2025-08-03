.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
.super Ljava/lang/Enum;
.source "ImErrorReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

.field public static final enum PARTICIPANT_ALREADY_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;


# instance fields
.field private final mInfo:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .locals 8

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->PARTICIPANT_ALREADY_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x0

    const-string v2, "Invalid error"

    const-string v3, "INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 29
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x1

    const-string v2, "Engine error"

    const-string v3, "ENGINE_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x2

    const-string v2, "Illegal session state"

    const-string v3, "ILLEGAL_SESSION_STATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ILLEGAL_SESSION_STATE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x3

    const-string v2, "fallback error"

    const-string v3, "FRAMEWORK_ERROR_FALLBACKFAILED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 44
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x4

    const-string v2, "Service not authorized"

    const-string v3, "FORBIDDEN_SERVICE_NOT_AUTHORIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x5

    const-string v2, "Session doesn\'t exist in framework"

    const-string v3, "NO_SESSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->NO_SESSION:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x6

    const-string v2, "All participant left"

    const-string v3, "PARTICIPANT_ALREADY_LEFT"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->PARTICIPANT_ALREADY_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 59
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    const/4 v1, 0x7

    const-string v2, "Invalid"

    const-string v3, "INVALID_ICON_PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->INVALID_ICON_PATH:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 19
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->mInfo:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->mInfo:Ljava/lang/String;

    return-object p0
.end method
