.class public final synthetic Lcom/sec/internal/ims/core/cmc/CmcInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/cmc/CmcInfo;

.field public final synthetic f$1:Lcom/sec/internal/ims/core/cmc/CmcInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    check-cast p1, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->$r8$lambda$Yn2qHP6s7UJssTVaNXoenH-XRhw(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z

    move-result p0

    return p0
.end method
