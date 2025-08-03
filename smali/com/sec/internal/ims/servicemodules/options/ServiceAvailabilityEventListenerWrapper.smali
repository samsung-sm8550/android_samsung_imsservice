.class public Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;
.super Ljava/lang/Object;
.source "ServiceAvailabilityEventListenerWrapper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;


# static fields
.field private static final EXPECTED_NUMBER_OF_SIM_SLOTS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceAvailabilityEventListenerWrapper"


# instance fields
.field mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field private mProfileList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    .line 38
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    return-void
.end method

.method private attach(ILjava/lang/String;)V
    .locals 3

    .line 61
    invoke-static {p2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "ServiceAvailabilityEventListenerWrapper"

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 62
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 63
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc(I)I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attaching ServiceAvailabilityEventListenerUp phoneId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance p2, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 66
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerUp;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;Lcom/sec/internal/ims/util/UriGenerator;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attaching ServiceAvailabilityEventListenerBasic phoneId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance p2, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerBasic;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerBasic;-><init>()V

    .line 72
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attachServiceAvailabilityEventListener(ILjava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V

    .line 48
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->attach(ILjava/lang/String;)V

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public detachServiceAvailabilityEventListener(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 80
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterServiceAvailabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;)V

    :cond_0
    return-void
.end method

.method public onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V
    .locals 4

    .line 95
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    .line 96
    const-string v2, "!"

    const-string v3, "ServiceAvailabilityEventListenerWrapper"

    if-ne v0, v1, :cond_0

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onServiceAvailabilityUpdate: failed to find phoneId for ownIdentity: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/IServiceAvailabilityEventListener;->onServiceAvailabilityUpdate(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Date;)V

    goto :goto_0

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onServiceAvailabilityUpdate: ServiceAvailability listener is not attached for ownIdentity: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateServiceAvailabilityEventListener(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mServiceAvailabilityEventListenerList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    .line 88
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->mProfileList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;->attach(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
