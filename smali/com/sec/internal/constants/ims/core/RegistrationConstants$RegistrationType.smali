.class public final enum Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
.super Ljava/lang/Enum;
.source "RegistrationConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

.field public static final enum DUAL_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

.field public static final enum DUAL_WHEN_ROAMING_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

.field public static final enum IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

.field public static final enum SINGLE_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .locals 4

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->DUAL_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->SINGLE_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->DUAL_WHEN_ROAMING_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    const/4 v1, -0x1

    const-string v2, "IMS_PROFILE_BASED_REG"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    const-string v1, "DUAL_REG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->DUAL_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    const-string v1, "SINGLE_REG"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->SINGLE_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 26
    new-instance v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    const-string v1, "DUAL_WHEN_ROAMING_REG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->DUAL_WHEN_ROAMING_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    .line 16
    invoke-static {}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->$values()[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->$VALUES:[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .locals 5

    .line 39
    invoke-static {}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->values()[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    iget v4, v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    const-class v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RegistrationType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;
    .locals 1

    .line 16
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->$VALUES:[Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->mValue:I

    return p0
.end method
