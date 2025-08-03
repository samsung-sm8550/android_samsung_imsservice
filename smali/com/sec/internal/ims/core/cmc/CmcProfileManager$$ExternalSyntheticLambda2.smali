.class public final synthetic Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->$r8$lambda$5nHWkSm9GAvhq_uCy6HsR5RUHSY(Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method
