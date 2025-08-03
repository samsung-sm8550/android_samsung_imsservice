.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorBell;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptorBell.java"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "ims.bell.ca"

.field private static final LOG_TAG:Ljava/lang/String; = "SimDataAdaptorBell"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;I)V

    return-void
.end method


# virtual methods
.method fetchDerivedImpuFromMsisdn(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 16
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "ims.bell.ca"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "sip:%s@%s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
