.class public final enum Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;
.super Ljava/lang/Enum;
.source "DiagnosisConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

.field public static final enum CS:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

.field public static final enum LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

.field public static final enum NR:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

.field public static final enum WLAN:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;
    .locals 4

    .line 706
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->CS:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->WLAN:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->NR:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 707
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    const-string v1, "CS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->CS:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    .line 708
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    const-string v1, "LTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->LTE:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    .line 709
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    const-string v1, "WLAN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->WLAN:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    .line 710
    new-instance v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    const-string v1, "NR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->NR:Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    .line 706
    invoke-static {}, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->$values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 714
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 715
    iput p3, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;
    .locals 1

    .line 706
    const-class v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;
    .locals 1

    .line 706
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->$VALUES:[Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 718
    iget p0, p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$CALL_BEARER;->value:I

    return p0
.end method
