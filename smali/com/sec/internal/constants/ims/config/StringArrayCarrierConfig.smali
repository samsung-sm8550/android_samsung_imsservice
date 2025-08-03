.class public final enum Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;
.super Ljava/lang/Enum;
.source "StringArrayCarrierConfig.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;",
        ">;",
        "Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final enum PUBLISH_SERVICE_DESC_FEATURE_TAG_MAP_OVERRIDE:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

.field public static final enum RCS_FEATURE_TAG_ALLOWED:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;


# instance fields
.field private final mCarrierConfigName:Ljava/lang/String;

.field private final mGlobalSettingsName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$49vcs-u5cYnMz0Mp4kYCoWCXKGk(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->lambda$putOverrideConfig$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZB1KTLj7-xc79mmj6su3Vu9brlI(Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->lambda$putOverrideConfig$1(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method private static synthetic $values()[Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;
    .locals 2

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->PUBLISH_SERVICE_DESC_FEATURE_TAG_MAP_OVERRIDE:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    sget-object v1, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->RCS_FEATURE_TAG_ALLOWED:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    const-string/jumbo v1, "publish_service_desc_feature_tag_map_override_string_array"

    const-string v2, "ims.publish_service_desc_feature_tag_map_override_string_array"

    const-string v3, "PUBLISH_SERVICE_DESC_FEATURE_TAG_MAP_OVERRIDE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->PUBLISH_SERVICE_DESC_FEATURE_TAG_MAP_OVERRIDE:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    .line 17
    new-instance v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    const-string/jumbo v1, "rcs_feature_tag_allowed_string_array"

    const-string v2, "ims.rcs_feature_tag_allowed_string_array"

    const-string v3, "RCS_FEATURE_TAG_ALLOWED"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->RCS_FEATURE_TAG_ALLOWED:Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    .line 14
    invoke-static {}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->$values()[Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    .line 20
    const-class v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->LOG_TAG:Ljava/lang/String;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$putOverrideConfig$0(I)[Ljava/lang/String;
    .locals 0

    .line 40
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$putOverrideConfig$1(Landroid/os/PersistableBundle;Lcom/google/gson/JsonElement;)V
    .locals 2

    .line 38
    :try_start_0
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 40
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 41
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->mCarrierConfigName:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 43
    sget-object p1, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putOverrideConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " => "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->$VALUES:[Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    return-object v0
.end method


# virtual methods
.method public getGlobalSettingsName()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    return-object p0
.end method

.method public putOverrideConfig(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->mGlobalSettingsName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;Landroid/os/PersistableBundle;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
