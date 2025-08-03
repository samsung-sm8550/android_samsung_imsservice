.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

.field public static final enum DEFAULT:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

.field public static final enum PDN_EMERGENCY:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

.field public static final enum PDN_IMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

.field public static final enum PDN_INTERNET:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

.field public static final enum PDN_WIFI:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;
    .locals 5

    .line 572
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->DEFAULT:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_IMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_WIFI:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_INTERNET:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_EMERGENCY:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 573
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->DEFAULT:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    .line 574
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    const-string v1, "PDN_IMS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_IMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    .line 575
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    const-string v1, "PDN_WIFI"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_WIFI:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    .line 576
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    const-string v1, "PDN_INTERNET"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_INTERNET:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    .line 577
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    const-string v1, "PDN_EMERGENCY"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->PDN_EMERGENCY:Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    .line 572
    invoke-static {}, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->$values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 581
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 582
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;
    .locals 1

    .line 572
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;
    .locals 1

    .line 572
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 585
    iget p0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$PDN;->value:I

    return p0
.end method
