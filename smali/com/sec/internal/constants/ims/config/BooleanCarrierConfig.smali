.class public final enum Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;
.super Ljava/lang/Enum;
.source "BooleanCarrierConfig.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;",
        ">;",
        "Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum ENABLE_PRESENCE_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum ENABLE_PRESENCE_GROUP_SUBSCRIBE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum ENABLE_PRESENCE_PUBLISH:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum IMS_SINGLE_REGISTRATION_REQUIRED:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum RCS_BULK_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum RCS_REQUEST_FORBIDDEN_BY_SIP_489:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

.field public static final enum USE_ACS_FOR_RCS:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;


# instance fields
.field private final mCarrierConfigName:Ljava/lang/String;

.field private final mGlobalSettingsName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$CIGqSIIdMZjJJ84uDwjhOoTwqDg(Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method private static synthetic $values()[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;
    .locals 7

    .line 11
    sget-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->IMS_SINGLE_REGISTRATION_REQUIRED:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    sget-object v1, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_PUBLISH:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    sget-object v2, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    sget-object v3, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->RCS_BULK_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    sget-object v4, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_GROUP_SUBSCRIBE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    sget-object v5, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->RCS_REQUEST_FORBIDDEN_BY_SIP_489:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    sget-object v6, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->USE_ACS_FOR_RCS:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v1, "ims_single_registration_required_bool"

    const-string v2, "ims.ims_single_registration_required_bool"

    const-string v3, "IMS_SINGLE_REGISTRATION_REQUIRED"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->IMS_SINGLE_REGISTRATION_REQUIRED:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v1, "enable_presence_publish_bool"

    const-string v2, "ims.enable_presence_publish_bool"

    const-string v3, "ENABLE_PRESENCE_PUBLISH"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_PUBLISH:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 16
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v1, "enable_presence_capability_exchange_bool"

    const-string v2, "ims.enable_presence_capability_exchange_bool"

    const-string v3, "ENABLE_PRESENCE_CAPABILITY_EXCHANGE"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string/jumbo v1, "rcs_bulk_capability_exchange_bool"

    const-string v2, "ims.rcs_bulk_capability_exchange_bool"

    const-string v3, "RCS_BULK_CAPABILITY_EXCHANGE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->RCS_BULK_CAPABILITY_EXCHANGE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string v1, "enable_presence_group_subscribe_bool"

    const-string v2, "ims.enable_presence_group_subscribe_bool"

    const-string v3, "ENABLE_PRESENCE_GROUP_SUBSCRIBE"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->ENABLE_PRESENCE_GROUP_SUBSCRIBE:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const-string/jumbo v1, "rcs_request_forbidden_by_sip_489_bool"

    const-string v2, "ims.rcs_request_forbidden_by_sip_489_bool"

    const-string v3, "RCS_REQUEST_FORBIDDEN_BY_SIP_489"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->RCS_REQUEST_FORBIDDEN_BY_SIP_489:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    const/4 v1, 0x6

    const-string/jumbo v2, "use_acs_for_rcs_bool"

    const-string v3, "USE_ACS_FOR_RCS"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->USE_ACS_FOR_RCS:Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    .line 11
    invoke-static {}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->$values()[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$putOverrideConfig$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;
    .locals 1

    .line 11
    sget-object v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalSettingsName()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    return-object p0
.end method

.method public putOverrideConfig(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;Landroid/os/PersistableBundle;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
