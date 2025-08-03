.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

.field public static final enum AVAILABLE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

.field public static final enum AVAILABLE_MOBILE_DATA_PHYSICAL_INTERFACE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

.field public static final enum UNAVAILABLE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;
    .locals 3

    .line 692
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->UNAVAILABLE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->AVAILABLE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->AVAILABLE_MOBILE_DATA_PHYSICAL_INTERFACE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 693
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->UNAVAILABLE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    .line 694
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->AVAILABLE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    .line 695
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    const-string v1, "AVAILABLE_MOBILE_DATA_PHYSICAL_INTERFACE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->AVAILABLE_MOBILE_DATA_PHYSICAL_INTERFACE:Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    .line 692
    invoke-static {}, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->$values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 699
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 700
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;
    .locals 1

    .line 692
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;
    .locals 1

    .line 692
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 703
    iget p0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$EPDG_STATUS;->value:I

    return p0
.end method
