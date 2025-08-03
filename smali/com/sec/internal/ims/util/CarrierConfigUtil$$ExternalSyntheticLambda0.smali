.class public final synthetic Lcom/sec/internal/ims/util/CarrierConfigUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/PersistableBundle;

.field public final synthetic f$1:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/CarrierConfigUtil$$ExternalSyntheticLambda0;->f$0:Landroid/os/PersistableBundle;

    iput-object p2, p0, Lcom/sec/internal/ims/util/CarrierConfigUtil$$ExternalSyntheticLambda0;->f$1:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/util/CarrierConfigUtil$$ExternalSyntheticLambda0;->f$0:Landroid/os/PersistableBundle;

    iget-object p0, p0, Lcom/sec/internal/ims/util/CarrierConfigUtil$$ExternalSyntheticLambda0;->f$1:Lcom/google/gson/JsonObject;

    check-cast p1, Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/util/CarrierConfigUtil;->$r8$lambda$5mwYu3x654kMJEmgx_Cs8kiF4YQ(Landroid/os/PersistableBundle;Lcom/google/gson/JsonObject;Lcom/sec/internal/interfaces/ims/config/ICarrierConfig;)V

    return-void
.end method
