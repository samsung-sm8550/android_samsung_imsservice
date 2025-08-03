.class public final enum Lcom/sec/internal/ims/core/SipTestManager$ActionMode;
.super Ljava/lang/Enum;
.source "SipTestManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/SipTestManager$ActionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

.field public static final enum LOCAL_TOOL:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

.field public static final enum NONE:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

.field public static final enum REMOTE_SERVER_HOME:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

.field public static final enum REMOTE_SERVER_ROAMING:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;


# instance fields
.field private mMode:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/SipTestManager$ActionMode;
    .locals 4

    .line 46
    sget-object v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->NONE:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    sget-object v1, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->REMOTE_SERVER_HOME:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    sget-object v2, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->REMOTE_SERVER_ROAMING:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    sget-object v3, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->LOCAL_TOOL:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->NONE:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    .line 48
    new-instance v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    const-string v1, "REMOTE_SERVER_HOME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->REMOTE_SERVER_HOME:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    .line 49
    new-instance v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    const-string v1, "REMOTE_SERVER_ROAMING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->REMOTE_SERVER_ROAMING:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    .line 50
    new-instance v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    const-string v1, "LOCAL_TOOL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->LOCAL_TOOL:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->$values()[Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->$VALUES:[Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->mMode:I

    return-void
.end method

.method public static fromValue(I)Lcom/sec/internal/ims/core/SipTestManager$ActionMode;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 59
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->values()[Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 61
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/SipTestManager$ActionMode;
    .locals 1

    .line 46
    const-class v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/SipTestManager$ActionMode;
    .locals 1

    .line 46
    sget-object v0, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->$VALUES:[Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    return-object v0
.end method
