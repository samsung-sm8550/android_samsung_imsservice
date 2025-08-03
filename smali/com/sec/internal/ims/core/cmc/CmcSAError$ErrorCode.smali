.class final enum Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;
.super Ljava/lang/Enum;
.source "CmcSAError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

.field public static final enum SAC_0301:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

.field public static final enum SAC_0402:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

.field public static final enum SAC_0501:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;
    .locals 4

    .line 17
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->SAC_0402:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->SAC_0501:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->SAC_0301:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->NETWORK_ERROR:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    const-string v1, "SAC_0402"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->SAC_0402:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    const-string v1, "SAC_0501"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->SAC_0501:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    .line 20
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    const-string v1, "SAC_0301"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->SAC_0301:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    .line 21
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->NETWORK_ERROR:Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    .line 17
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->$values()[Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;
    .locals 1

    .line 17
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcSAError$ErrorCode;

    return-object v0
.end method
