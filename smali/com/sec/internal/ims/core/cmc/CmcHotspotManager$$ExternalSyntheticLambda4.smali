.class public final synthetic Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    iput-boolean p2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda4;->f$1:Z

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->$r8$lambda$aLKITwQwl-lBAbmEj3AlaXPozeE(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;ZLjava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
