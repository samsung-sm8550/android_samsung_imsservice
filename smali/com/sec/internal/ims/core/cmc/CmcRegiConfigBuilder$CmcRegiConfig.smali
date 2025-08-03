.class public final enum Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;
.super Ljava/lang/Enum;
.source "CmcRegiConfigBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

.field public static final enum EMERGENCY_CALL_NUMBERS:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

.field public static final enum HOTSPOT_ADDRESSES:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

.field public static final enum RELAY_TYPE:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

.field public static final enum SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

.field public static final enum SUPPORT_DUAL_SIM_CMC:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;


# instance fields
.field defaultValue:Ljava/lang/Object;

.field needLogChecker:Z

.field type:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;
    .locals 5

    .line 22
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->RELAY_TYPE:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->EMERGENCY_CALL_NUMBERS:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SUPPORT_DUAL_SIM_CMC:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->HOTSPOT_ADDRESSES:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v6, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v7, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    const/4 v4, 0x1

    const-string v5, ""

    const-string v1, "SA_SERVER_URL"

    const/4 v2, 0x0

    move-object v0, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;ZLjava/lang/Object;)V

    sput-object v6, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 24
    new-instance v6, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    const/4 v4, 0x0

    const-string v5, ""

    const-string v1, "RELAY_TYPE"

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;ZLjava/lang/Object;)V

    sput-object v6, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->RELAY_TYPE:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 25
    new-instance v6, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    const/4 v4, 0x1

    const-string v5, ""

    const-string v1, "EMERGENCY_CALL_NUMBERS"

    const/4 v2, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;ZLjava/lang/Object;)V

    sput-object v6, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->EMERGENCY_CALL_NUMBERS:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 26
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v11, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v9, "SUPPORT_DUAL_SIM_CMC"

    const/4 v10, 0x3

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;ZLjava/lang/Object;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SUPPORT_DUAL_SIM_CMC:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 27
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;->STRING_LIST:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    const/4 v5, 0x1

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v2, "HOTSPOT_ADDRESSES"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;-><init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;ZLjava/lang/Object;)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->HOTSPOT_ADDRESSES:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 22
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->$values()[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;ZLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->type:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$DataType;

    .line 35
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->needLogChecker:Z

    .line 36
    iput-object p5, p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;
    .locals 1

    .line 22
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    return-object v0
.end method
