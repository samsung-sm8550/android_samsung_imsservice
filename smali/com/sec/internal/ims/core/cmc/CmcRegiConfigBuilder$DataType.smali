.class final enum Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;
.super Ljava/lang/Enum;
.source "CmcRegiConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

.field public static final enum BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

.field public static final enum STRING:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

.field public static final enum STRING_LIST:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;
    .locals 3

    .line 18
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING_LIST:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    const-string v1, "STRING_LIST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING_LIST:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    .line 18
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->$values()[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;
    .locals 1

    .line 18
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    return-object v0
.end method
