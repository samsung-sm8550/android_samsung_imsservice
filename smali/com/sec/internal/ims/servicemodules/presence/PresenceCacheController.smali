.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;
.super Ljava/lang/Object;
.source "PresenceCacheController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceCacheController"


# instance fields
.field private final mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-void
.end method


# virtual methods
.method clearPresenceInfo(I)V
    .locals 2

    .line 46
    const-string v0, "PresenceCacheController"

    const-string v1, "clearPresenceInfo"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->clear()V

    return-void
.end method

.method getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPresenceInfo: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceCacheController"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method getPresenceInfoByContactId(Ljava/lang/String;Ljava/util/List;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/sec/ims/presence/PresenceInfo;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPresenceInfoByContactId: contactId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceCacheController"

    invoke-static {v0, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_1

    .line 31
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method loadPresenceStorage(Ljava/util/Set;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->get(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPresenceStorage: found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " presenceInfo from DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceCacheController"

    invoke-static {v2, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 105
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/PresenceInfo;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v2, p2}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 109
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->add(Lcom/sec/ims/presence/PresenceInfo;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    .line 116
    new-instance v1, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v1, p2}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 117
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->add(Lcom/sec/ims/presence/PresenceInfo;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method removePresenceCache(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->remove(Ljava/util/List;)V

    .line 42
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->removeSubscription(Ljava/util/List;)V

    return-void
.end method

.method updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;Lcom/sec/internal/ims/util/UriGenerator;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            "Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            "I)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePresenceDatabase: uris "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceCacheController"

    invoke-static {v1, p5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 60
    invoke-virtual {p4, v2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess()Z

    move-result v4

    if-nez v4, :cond_3

    .line 66
    invoke-virtual {p0, v3, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 68
    new-instance v1, Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, p5}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    .line 69
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    :goto_1
    invoke-interface {p3, p5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 76
    invoke-interface {p3, p5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 78
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getContactId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 80
    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setContactId(Ljava/lang/String;)V

    .line 86
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v4, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 88
    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setId(J)V

    .line 91
    :cond_5
    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Ljava/util/List;)V

    .line 96
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v2, p5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->update(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;)V

    goto :goto_0

    :cond_6
    :goto_2
    return-void
.end method
