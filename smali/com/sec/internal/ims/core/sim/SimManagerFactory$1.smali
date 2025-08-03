.class Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimManagerFactory.java"


# direct methods
.method public static synthetic $r8$lambda$K_0-t8GvvyiXglw1r49L1JrRO3Y(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;->lambda$onSubscriptionsChanged$1(Landroid/telephony/SubscriptionInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mRSSbluW_YWEOt3RxFzyX5u5t4E(Landroid/telephony/SubscriptionInfo;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;->lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionInfo;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oeROvHPXJlX1-NdVl282JoGfeD0(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;->lambda$onSubscriptionsChanged$2(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionInfo;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2

    .line 70
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionIdInternal()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSubscriptionInfo(Landroid/telephony/SubscriptionInfo;)V

    .line 72
    sget-object p1, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubIdChangeRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onSubscriptionsChanged$1(Landroid/telephony/SubscriptionInfo;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/SubscriptionInfo;)V

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onSubscriptionsChanged$2(Ljava/util/List;)V
    .locals 1

    .line 67
    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 66
    sget-object p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->mSubMan:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda2;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->updateAdsSlot()V

    return-void
.end method
