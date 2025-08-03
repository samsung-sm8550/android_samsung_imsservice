.class public final enum Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;
.super Ljava/lang/Enum;
.source "RegistrationGovernorKor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

.field public static final enum LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

.field public static final enum VOLTE_SETTING:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;
    .locals 2

    .line 151
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->VOLTE_SETTING:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    filled-new-array {v0, v1}, [Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    const-string v1, "VOLTE_SETTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->VOLTE_SETTING:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    .line 154
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    const-string v1, "LTE_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->LTE_MODE:Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    .line 151
    invoke-static {}, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->$values()[Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;
    .locals 1

    .line 151
    const-class v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;
    .locals 1

    .line 151
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->$VALUES:[Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/core/RegistrationGovernorKor$VoltePreferenceChangedReason;

    return-object v0
.end method
