.class public final enum Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;
.super Ljava/lang/Enum;
.source "CmcSAError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

.field public static final enum ANOTHER_REQUEST_IS_ONGOING:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

.field public static final enum NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

.field public static final enum NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

.field public static final enum OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

.field public static final enum REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

.field public static final enum RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

.field public static final enum SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;
    .locals 7

    .line 7
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    sget-object v5, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->ANOTHER_REQUEST_IS_ONGOING:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    sget-object v6, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, "SERVICE_DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 9
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, "NOT_LOGGED_IN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 10
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, "REQUEST_TIMER_EXPIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 11
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, "RESIGN_REQUIRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 12
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, "NETWORK_UNAVAILABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 13
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, "ANOTHER_REQUEST_IS_ONGOING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->ANOTHER_REQUEST_IS_ONGOING:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 14
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, "OTHERS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    .line 7
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->$values()[Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;
    .locals 1

    .line 7
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;
    .locals 1

    .line 7
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    return-object v0
.end method
