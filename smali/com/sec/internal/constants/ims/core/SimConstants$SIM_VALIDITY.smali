.class public final enum Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;
.super Ljava/lang/Enum;
.source "SimConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

.field public static final enum GBA_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

.field public static final enum MSISDN_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;


# instance fields
.field private mCode:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;
    .locals 2

    .line 61
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    sget-object v1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    const-string v1, "GBA_NOT_SUPPORTED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->GBA_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    .line 64
    new-instance v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    const-string v1, "MSISDN_INVALID"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->MSISDN_INVALID:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    .line 61
    invoke-static {}, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->$values()[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;
    .locals 1

    .line 61
    const-class v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;
    .locals 1

    .line 61
    sget-object v0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->$VALUES:[Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_VALIDITY;->mCode:I

    return p0
.end method
