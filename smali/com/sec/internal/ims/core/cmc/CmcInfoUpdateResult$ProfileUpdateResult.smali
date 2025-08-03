.class final enum Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;
.super Ljava/lang/Enum;
.source "CmcInfoUpdateResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

.field public static final enum FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

.field public static final enum NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

.field public static final enum UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;
    .locals 3

    .line 12
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    const-string v1, "UPDATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    const-string v1, "NOT_UPDATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    .line 12
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->$values()[Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;
    .locals 1

    .line 12
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    return-object v0
.end method
