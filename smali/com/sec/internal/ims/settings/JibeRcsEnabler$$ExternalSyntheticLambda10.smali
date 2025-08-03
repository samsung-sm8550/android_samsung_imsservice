.class public final synthetic Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/gson/JsonObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;->f$0:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler$$ExternalSyntheticLambda10;->f$0:Lcom/google/gson/JsonObject;

    check-cast p1, Lcom/google/gson/JsonElement;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->$r8$lambda$ESKOpbxtR0MMHH0gzm70TDqiQSc(Lcom/google/gson/JsonObject;Lcom/google/gson/JsonElement;)V

    return-void
.end method
