.class public final synthetic Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/SettingsProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/SettingsProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/settings/SettingsProvider;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/SettingsProvider;->$r8$lambda$RK1UijUADcg8YgR7NjD1A5sDKVU(Lcom/sec/internal/ims/settings/SettingsProvider;I)V

    return-void
.end method
