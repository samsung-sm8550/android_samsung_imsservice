.class public final enum Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
.super Ljava/lang/Enum;
.source "RegistrationGovernor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

.field public static final enum PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;


# instance fields
.field private mType:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 7

    .line 113
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v3, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v4, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v5, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    sget-object v6, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 115
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const/4 v1, -0x2

    const-string v2, "PCO_DEFAULT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 116
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v4, "PCO_AWAITING"

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_AWAITING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 119
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_POSTPAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_POSTPAY:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 120
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_RESTRICTED_ACCESS"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RESTRICTED_ACCESS:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 121
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_ZERO_BALANCE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_ZERO_BALANCE:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 122
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_RATE_THROTTLING"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_RATE_THROTTLING:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 123
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    const-string v1, "PCO_SELF_ACTIVATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    .line 113
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->$values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 128
    iput p3, p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->mType:I

    return-void
.end method

.method public static fromType(I)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 5

    .line 132
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 133
    iget v4, v3, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->mType:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_DEFAULT:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 1

    .line 113
    const-class v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;
    .locals 1

    .line 113
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    return-object v0
.end method
