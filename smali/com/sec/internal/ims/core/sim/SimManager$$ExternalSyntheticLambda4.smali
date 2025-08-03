.class public final synthetic Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/sim/SimManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iput-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/sec/internal/ims/core/sim/Plmn;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->$r8$lambda$srjltpeCjQKdxNbHMuPyKvsJx7k(Lcom/sec/internal/ims/core/sim/SimManager;Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
