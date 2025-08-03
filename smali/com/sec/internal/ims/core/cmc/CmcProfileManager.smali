.class public Lcom/sec/internal/ims/core/cmc/CmcProfileManager;
.super Ljava/lang/Object;
.source "CmcProfileManager.java"


# static fields
.field private static final DEFAULT_PROFILE_NAME:Ljava/lang/String; = "SamsungCMC"

.field private static final LOG_TAG:Ljava/lang/String; = "CmcProfileManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsSD:Z

.field private final mPhoneCount:I

.field private mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5nHWkSm9GAvhq_uCy6HsR5RUHSY(Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->lambda$updateProfile$2(Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eKRmTLA43yPZ7I0GNr462laNk_Y(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->lambda$findCmcProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vSqjI1i8nNoshAJ01guTQ5XdcYs(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->lambda$add2G3GNetworksIntoProfile$1(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mProfileMap:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mPhoneCount:I

    .line 27
    iput-boolean p3, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mIsSD:Z

    .line 28
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->makeProfileMap()V

    return-void
.end method

.method private add2G3GNetworksIntoProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 3

    const/4 p0, 0x6

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x5

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v0, v1, v2}, [Ljava/lang/Integer;

    move-result-object p0

    .line 58
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private findCmcProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mContext:Landroid/content/Context;

    const-string v0, "MDMN"

    invoke-static {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 53
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method private static synthetic lambda$add2G3GNetworksIntoProfile$1(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/Integer;)V
    .locals 3

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "mmtel"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    return-void
.end method

.method private static synthetic lambda$findCmcProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    .line 53
    const-string v0, "SamsungCMC"

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateProfile$2(Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;Lcom/sec/ims/settings/ImsProfile;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->update(Lcom/sec/ims/settings/ImsProfile;)V

    return-void
.end method

.method private makeProfileMap()V
    .locals 2

    const/4 v0, 0x0

    .line 32
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 33
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->makeProfileMap(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private makeProfileMap(I)V
    .locals 4

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->findCmcProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeProfileMap: No pre-defined profile slot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 43
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeProfileMap: CMC profile found slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mIsSD:Z

    if-eqz v1, :cond_1

    .line 45
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->add2G3GNetworksIntoProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 47
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 3

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    if-nez p0, :cond_0

    .line 75
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "profile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] profile ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public updateProfile(Lcom/sec/internal/ims/core/cmc/CmcInfo;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;-><init>(Lcom/sec/internal/ims/core/cmc/CmcInfo;)V

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcProfileManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
