.class abstract enum Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
.super Ljava/lang/Enum;
.source "DualRcsPolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

.field private static final LOG_TAG:Ljava/lang/String; = "DualRcsPolicyType"

.field public static final enum NOT_SUPPORT:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

.field public static final enum SUPPORT:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

.field public static final enum SUPPORT_SAME_RCS_APPLICATION_SERVER:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

.field public static final enum SUPPORT_SAME_RCS_PROFILES:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

.field public static final enum SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

.field public static final enum SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

.field public static final enum SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;


# instance fields
.field final value:I


# direct methods
.method public static synthetic $r8$lambda$nea2nL6NQF-no-tt80fAnsAGU6I(ILcom/sec/internal/ims/rcs/util/DualRcsPolicyType;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->lambda$fromInt$0(ILcom/sec/internal/ims/rcs/util/DualRcsPolicyType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic $values()[Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
    .locals 7

    .line 19
    sget-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->NOT_SUPPORT:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    sget-object v1, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    sget-object v2, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_RCS_PROFILES:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    sget-object v3, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    sget-object v4, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    sget-object v5, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    sget-object v6, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_RCS_APPLICATION_SERVER:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$1;

    const-string v1, "NOT_SUPPORT"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$1;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$1-IA;)V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->NOT_SUPPORT:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 28
    new-instance v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$2;

    const-string v1, "SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$2;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$2-IA;)V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_SIM_OPERATORS_ALLOW_FAMILY_SALES_CODE:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 38
    new-instance v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$3;

    const-string v1, "SUPPORT_SAME_RCS_PROFILES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$3;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$3-IA;)V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_RCS_PROFILES:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 50
    new-instance v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$4;

    const-string v1, "SUPPORT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$4;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$4-IA;)V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 58
    new-instance v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$5;

    const-string v1, "SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$5;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$5-IA;)V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_SIM_OPERATORS_DISALLOW_FAMILY_SALES_CODE:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 75
    new-instance v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$6;

    const-string v1, "SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$6;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$6-IA;)V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_SIM_OPERATORS_KOR_ONLY:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 89
    new-instance v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$7;

    const-string v1, "SUPPORT_SAME_RCS_APPLICATION_SERVER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$7;-><init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType$7-IA;)V

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->SUPPORT_SAME_RCS_APPLICATION_SERVER:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 19
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->$values()[Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->value:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/sec/internal/ims/rcs/util/DualRcsPolicyType-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static fromInt(I)Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
    .locals 2

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->values()[Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType$$ExternalSyntheticLambda0;-><init>(I)V

    .line 114
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->NOT_SUPPORT:Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    .line 116
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    return-object p0
.end method

.method private static synthetic lambda$fromInt$0(ILcom/sec/internal/ims/rcs/util/DualRcsPolicyType;)Z
    .locals 0

    .line 114
    iget p1, p1, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->value:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;
    .locals 1

    .line 19
    sget-object v0, Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->$VALUES:[Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/rcs/util/DualRcsPolicyType;

    return-object v0
.end method


# virtual methods
.method abstract isDualRcsPolicyConditionMatch(I)Z
.end method
