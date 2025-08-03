.class public final enum Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
.super Ljava/lang/Enum;
.source "CmcInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum NOT_DEFINED:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

.field public static final enum STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    .locals 5

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->NOT_DEFINED:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->BOOLEAN:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v1, "INTEGER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->INTEGER:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v1, "STRING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->STRING:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v1, "LIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    const-string v1, "NOT_DEFINED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->NOT_DEFINED:Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->$values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->$VALUES:[Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    return-object v0
.end method
