.class public Lcom/sec/internal/ims/util/CarrierConfigUtil;
.super Ljava/lang/Object;
.source "CarrierConfigUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CarrierConfigUtil"


# direct methods
.method public static synthetic $r8$lambda$5mwYu3x654kMJEmgx_Cs8kiF4YQ(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/CarrierConfigUtil;->lambda$overrideConfigFromGlobalSettings$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$overrideConfigFromGlobalSettings$0(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;)V
    .locals 0

    .line 31
    invoke-interface {p2, p0, p1}, Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;->putOverrideConfig(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public static overrideConfigFromGlobalSettings(Landroid/content/Context;ILcom/google/gson/JsonObject;)V
    .locals 4

    .line 17
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_3

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 26
    sget-object p0, Lcom/sec/internal/ims/util/CarrierConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "overrideConfigFromGlobalSettings: Invalid subscription ID"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 30
    :cond_1
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 31
    invoke-static {}, Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;->getAllConfigs()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/util/CarrierConfigUtil$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p2}, Lcom/sec/internal/ims/util/CarrierConfigUtil$$ExternalSyntheticLambda0;-><init>(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 34
    sget-object p2, Lcom/sec/internal/ims/util/CarrierConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overrideConfigFromGlobalSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 35
    invoke-virtual {p0, v0, v1, p1}, Landroid/telephony/CarrierConfigManager;->overrideConfig(ILandroid/os/PersistableBundle;Z)V

    :cond_2
    return-void

    .line 20
    :cond_3
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/util/CarrierConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "overrideConfigFromGlobalSettings: CarrierConfigManager or object is null"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
