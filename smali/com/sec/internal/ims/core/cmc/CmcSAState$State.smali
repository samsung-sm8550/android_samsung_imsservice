.class public final enum Lcom/sec/internal/ims/core/cmc/CmcSAState$State;
.super Ljava/lang/Enum;
.source "CmcSAState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcSAState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

.field public static final enum IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

.field public static final enum REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

.field public static final enum SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

.field public static final enum SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcSAState$State;
    .locals 4

    .line 6
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    const-string v1, "SERVICE_CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    const-string v1, "SERVICE_CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    const-string v1, "REQUESTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    .line 6
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->$values()[Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAState$State;
    .locals 1

    .line 6
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcSAState$State;
    .locals 1

    .line 6
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    return-object v0
.end method
