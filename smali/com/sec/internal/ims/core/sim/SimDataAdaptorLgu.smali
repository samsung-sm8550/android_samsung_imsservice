.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorLgu;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptorLgu.java"


# static fields
.field private static final DOMAIN:Ljava/lang/String; = "lte-lguplus.co.kr"

.field private static final LOG_TAG:Ljava/lang/String; = "SimDataAdaptorLgu"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;I)V

    return-void
.end method


# virtual methods
.method fetchDerivedImpi(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 15
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "lte-lguplus.co.kr"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s@%s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method fetchDerivedImpuFromMsisdn(Ljava/lang/String;Lcom/sec/internal/ims/core/sim/Plmn;)Ljava/lang/String;
    .locals 0

    .line 20
    const-string p0, "+82"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 21
    const-string p2, "0"

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "lte-lguplus.co.kr"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "sip:%s@%s"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
