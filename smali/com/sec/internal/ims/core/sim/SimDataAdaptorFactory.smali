.class final Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;
.super Ljava/lang/Object;
.source "SimDataAdaptorFactory.java"


# direct methods
.method public static synthetic $r8$lambda$nP6IdMO-9XmwE_v1nUn_nXnUKtc(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->lambda$create$0(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rHoHW0dp1XUREhlG884StLgfo78(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory;->lambda$create$1(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
    .locals 2

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;->values()[Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 96
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorBase;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorBase;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    return-object p0
.end method

.method private static synthetic lambda$create$0(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Z
    .locals 0

    .line 96
    iget-object p1, p1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;->mno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$create$1(Lcom/sec/internal/ims/core/sim/SimManager;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
    .locals 0

    .line 98
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;->create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;

    move-result-object p0

    return-object p0
.end method
