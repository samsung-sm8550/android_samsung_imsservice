.class public interface abstract Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;
.super Ljava/lang/Object;
.source "ICarrierConfig.java"


# direct methods
.method public static getAllConfigs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 17
    new-array v0, v0, [[Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;->values()[Lcom/sec/internal/constants/ims/config/BooleanCarrierConfig;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 18
    invoke-static {}, Lcom/sec/internal/constants/ims/config/IntCarrierConfig;->values()[Lcom/sec/internal/constants/ims/config/IntCarrierConfig;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 19
    invoke-static {}, Lcom/sec/internal/constants/ims/config/LongCarrierConfig;->values()[Lcom/sec/internal/constants/ims/config/LongCarrierConfig;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 20
    invoke-static {}, Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;->values()[Lcom/sec/internal/constants/ims/config/StringArrayCarrierConfig;

    move-result-object v2

    aput-object v2, v0, v1

    .line 17
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/interfaces/ims/config/ICarrierConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/interfaces/ims/config/ICarrierConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 21
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public abstract putOverrideConfig(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V
.end method
