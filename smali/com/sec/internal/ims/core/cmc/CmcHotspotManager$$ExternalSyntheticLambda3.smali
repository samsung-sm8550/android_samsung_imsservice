.class public final synthetic Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->$r8$lambda$rOJzoSicGkBGrRnduUrlAFhoD30(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
