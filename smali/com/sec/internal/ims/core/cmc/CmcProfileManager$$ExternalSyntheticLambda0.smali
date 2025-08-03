.class public final synthetic Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/ims/settings/ImsProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda0;->f$0:Lcom/sec/ims/settings/ImsProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda0;->f$0:Lcom/sec/ims/settings/ImsProfile;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->$r8$lambda$vSqjI1i8nNoshAJ01guTQ5XdcYs(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/Integer;)V

    return-void
.end method
