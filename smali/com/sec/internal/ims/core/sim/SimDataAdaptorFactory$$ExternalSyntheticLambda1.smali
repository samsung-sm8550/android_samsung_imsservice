.class public final synthetic Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/sim/SimManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/sim/SimManager;

    check-cast p1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->$r8$lambda$rHoHW0dp1XUREhlG884StLgfo78(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object p0

    return-object p0
.end method
