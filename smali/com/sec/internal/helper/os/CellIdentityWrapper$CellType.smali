.class abstract enum Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
.super Ljava/lang/Enum;
.source "CellIdentityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum GSM:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum LTE:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

.field public static final enum WCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
    .locals 7

    .line 19
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v1, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->GSM:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v2, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v3, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v4, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->WCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v5, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->LTE:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    sget-object v6, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$1-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->UNKNOWN:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 37
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2;

    const-string v1, "GSM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$2-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->GSM:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 58
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$3;

    const-string v1, "CDMA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$3;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$3-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->CDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 75
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4;

    const-string v1, "TDSCDMA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$4-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->TDSCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 94
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$5;

    const-string v1, "WCDMA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$5;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$5-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->WCDMA:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 118
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$6;

    const-string v1, "LTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$6;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$6-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->LTE:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 137
    new-instance v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;

    const-string v1, "NR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7;-><init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType$7-IA;)V

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->NR:Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    .line 19
    invoke-static {}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->$values()[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->$VALUES:[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/helper/os/CellIdentityWrapper$CellType-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->$VALUES:[Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    invoke-virtual {v0}, [Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/helper/os/CellIdentityWrapper$CellType;

    return-object v0
.end method


# virtual methods
.method abstract isMatchedWith(I)Z
.end method

.method abstract retrieveAreaCode(Landroid/telephony/CellIdentity;)I
.end method

.method abstract retrieveCellId(Landroid/telephony/CellIdentity;)J
.end method
