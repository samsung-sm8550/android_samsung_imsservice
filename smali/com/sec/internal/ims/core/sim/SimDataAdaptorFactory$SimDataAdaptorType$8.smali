.class final enum Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType$8;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;
.source "SimDataAdaptorFactory.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType;-><init>(Ljava/lang/String;ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType$8-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorFactory$SimDataAdaptorType$8;-><init>(Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V

    return-void
.end method


# virtual methods
.method create(Lcom/sec/internal/ims/core/sim/SimManager;)Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
    .locals 0

    .line 54
    new-instance p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorUsc;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    return-object p0
.end method
