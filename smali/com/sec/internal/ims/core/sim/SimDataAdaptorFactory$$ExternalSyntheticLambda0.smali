.class public final synthetic Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/sim/SimManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/sim/SimManager;

    check-cast p1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->$r8$lambda$nP6IdMO-9XmwE_v1nUn_nXnUKtc(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Z

    move-result p0

    return p0
.end method
