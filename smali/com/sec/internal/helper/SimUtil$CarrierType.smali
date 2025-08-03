.class public final enum Lcom/sec/internal/helper/SimUtil$CarrierType;
.super Ljava/lang/Enum;
.source "SimUtil.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/SimUtil$CarrierType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/SimUtil$CarrierType;

.field public static final enum CARRIER:Lcom/sec/internal/helper/SimUtil$CarrierType;

.field public static final enum OPEN:Lcom/sec/internal/helper/SimUtil$CarrierType;

.field public static final enum UNDEFINED:Lcom/sec/internal/helper/SimUtil$CarrierType;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/helper/SimUtil$CarrierType;
    .locals 3

    .line 534
    sget-object v0, Lcom/sec/internal/helper/SimUtil$CarrierType;->UNDEFINED:Lcom/sec/internal/helper/SimUtil$CarrierType;

    sget-object v1, Lcom/sec/internal/helper/SimUtil$CarrierType;->OPEN:Lcom/sec/internal/helper/SimUtil$CarrierType;

    sget-object v2, Lcom/sec/internal/helper/SimUtil$CarrierType;->CARRIER:Lcom/sec/internal/helper/SimUtil$CarrierType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/helper/SimUtil$CarrierType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 538
    new-instance v0, Lcom/sec/internal/helper/SimUtil$CarrierType;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/helper/SimUtil$CarrierType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/helper/SimUtil$CarrierType;->UNDEFINED:Lcom/sec/internal/helper/SimUtil$CarrierType;

    .line 543
    new-instance v0, Lcom/sec/internal/helper/SimUtil$CarrierType;

    const-string v1, "OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/helper/SimUtil$CarrierType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/helper/SimUtil$CarrierType;->OPEN:Lcom/sec/internal/helper/SimUtil$CarrierType;

    .line 548
    new-instance v0, Lcom/sec/internal/helper/SimUtil$CarrierType;

    const-string v1, "CARRIER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/helper/SimUtil$CarrierType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/helper/SimUtil$CarrierType;->CARRIER:Lcom/sec/internal/helper/SimUtil$CarrierType;

    .line 534
    invoke-static {}, Lcom/sec/internal/helper/SimUtil$CarrierType;->$values()[Lcom/sec/internal/helper/SimUtil$CarrierType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/SimUtil$CarrierType;->$VALUES:[Lcom/sec/internal/helper/SimUtil$CarrierType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 552
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 553
    iput p3, p0, Lcom/sec/internal/helper/SimUtil$CarrierType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/SimUtil$CarrierType;
    .locals 1

    .line 534
    const-class v0, Lcom/sec/internal/helper/SimUtil$CarrierType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/SimUtil$CarrierType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/SimUtil$CarrierType;
    .locals 1

    .line 534
    sget-object v0, Lcom/sec/internal/helper/SimUtil$CarrierType;->$VALUES:[Lcom/sec/internal/helper/SimUtil$CarrierType;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/SimUtil$CarrierType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/SimUtil$CarrierType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 562
    iget p0, p0, Lcom/sec/internal/helper/SimUtil$CarrierType;->value:I

    return p0
.end method
