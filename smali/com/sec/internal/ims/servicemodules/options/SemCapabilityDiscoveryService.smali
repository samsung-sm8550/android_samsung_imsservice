.class public Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;
.super Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;
.source "SemCapabilityDiscoveryService.java"


# instance fields
.field private mCapServiceEventCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

.field private mQueuedCapabilityListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mbuildSemCapabilities(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildSemImsUri(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemImsUri(Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    return-void
.end method

.method private buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 2

    if-eqz p1, :cond_0

    .line 167
    invoke-static {}, Lcom/samsung/android/ims/options/SemCapabilities;->getBuilder()Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setIsAvailable(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 169
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setFeature(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 170
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setAvailableFeatures(J)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setIsExpired(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 172
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setLegacyLatching(Z)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 173
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setTimestamp(Ljava/util/Date;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setExtFeature(Ljava/util/List;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    .line 175
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->getBotServiceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->setBotServiceId(Ljava/lang/String;)Lcom/samsung/android/ims/options/SemCapabilities$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/ims/options/SemCapabilities$Builder;->build()Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSemCapabilitiesList([Lcom/sec/ims/options/Capabilities;)[Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 4

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 184
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 185
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v3

    .line 186
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/ims/options/SemCapabilities;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/ims/options/SemCapabilities;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSemImsUri(Lcom/sec/ims/util/ImsUri;)Lcom/samsung/android/ims/util/SemImsUri;
    .locals 1

    if-eqz p1, :cond_0

    .line 154
    new-instance p0, Lcom/samsung/android/ims/util/SemImsUri;

    invoke-direct {p0}, Lcom/samsung/android/ims/util/SemImsUri;-><init>()V

    .line 155
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/util/SemImsUri;->setUser(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/util/SemImsUri;->setMsisdn(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri$UriType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/util/SemImsUri;->setUriType(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/util/SemImsUri;->setScheme(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/util/SemImsUri;->setString(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilitiesList([Lcom/sec/ims/options/Capabilities;)[Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 84
    invoke-virtual {v0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    .line 88
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->buildSemCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;-><init>(Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)V

    .line 111
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mToken:Ljava/lang/String;

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->reset()V

    return-object p1

    .line 121
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getRegisterToken(Lcom/sec/ims/options/ICapabilityServiceEventListener;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 123
    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mToken:Ljava/lang/String;

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p1
.end method

.method public setServiceModule(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;)V
    .locals 4

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 44
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;

    .line 48
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mToken:Ljava/lang/String;

    .line 49
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->mPhoneId:I

    .line 50
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->registerListenerWithToken(Lcom/sec/ims/options/ICapabilityServiceEventListener;Ljava/lang/String;I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public unregisterListener(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapabilityService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->unregisterListener(Ljava/lang/String;I)V

    .line 139
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mCapServiceEventCallbacks:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->reset()V

    .line 144
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 145
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/SemCapabilityDiscoveryService$CapabilityServiceEventCallBack;->reset()V

    :cond_2
    return-void
.end method
