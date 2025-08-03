.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;
.super Lcom/sec/ims/options/ICapabilityService$Stub;
.source "CapabilityDiscoveryService.java"


# static fields
.field private static mRegisterToken:I


# instance fields
.field mCapabilityListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field mQueuedCapabilityListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;


# direct methods
.method static bridge synthetic -$$Nest$fgetmServiceModule(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;)Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mCapabilityListenerMap:Ljava/util/Map;

    return-void
.end method

.method protected static declared-synchronized getRegisterToken(Lcom/sec/ims/options/ICapabilityServiceEventListener;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    monitor-enter v0

    .line 40
    :try_start_0
    sget v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mRegisterToken:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v1, 0x64

    .line 41
    sput v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mRegisterToken:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    sget v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mRegisterToken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mRegisterToken:I

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "$"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mRegisterToken:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addFakeCapabilityInfo(Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->addFakeCapabilityInfo(Ljava/util/List;ZI)V

    :cond_0
    return-void
.end method

.method public deRegisterService(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->deRegisterService(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 74
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v2

    aget-object p2, v2, p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 76
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    throw p0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    .line 131
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;I)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    .line 85
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v2

    aget-object p2, v2, p2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZI)Lcom/sec/ims/options/Capabilities;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 87
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0
.end method

.method public getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    .line 96
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object v2

    aget-object p2, v2, p2

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZI)Lcom/sec/ims/options/Capabilities;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 98
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    throw p0
.end method

.method public getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 106
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    int-to-long v2, p2

    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 108
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw p0
.end method

.method public getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;III)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v2, :cond_0

    .line 117
    invoke-static {}, Lcom/sec/ims/options/CapabilityRefreshType;->values()[Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object p0

    aget-object v4, p0, p2

    int-to-long v5, p3

    move-object v3, p1

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 119
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw p0
.end method

.method public getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 66
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0
.end method

.method public isOwnInfoPublished()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOwnInfoPublished()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getRegisterToken(Lcom/sec/ims/options/ICapabilityServiceEventListener;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;Lcom/sec/ims/options/ICapabilityServiceEventListener;ILjava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mCapabilityListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public registerListenerWithToken(Lcom/sec/ims/options/ICapabilityServiceEventListener;Ljava/lang/String;I)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;Lcom/sec/ims/options/ICapabilityServiceEventListener;ILjava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mCapabilityListenerMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    goto :goto_0

    .line 166
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerService(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method removeCallback(Ljava/lang/String;)Lcom/sec/ims/options/ICapabilityServiceEventListener;
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mCapabilityListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    move-object v0, p0

    :cond_1
    if-eqz v0, :cond_2

    .line 230
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mListener:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    .line 231
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->reset()V

    :cond_2
    return-object v1
.end method

.method public setServiceModule(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 3

    .line 48
    check-cast p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

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

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;

    .line 53
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mCapabilityListenerMap:Ljava/util/Map;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mToken:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mListener:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService$CallBack;->mPhoneId:I

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mQueuedCapabilityListener:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public setUserActivity(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setUserActive(ZI)V

    :cond_0
    return-void
.end method

.method public unregisterListener(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->removeCallback(Ljava/lang/String;)Lcom/sec/ims/options/ICapabilityServiceEventListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p0, :cond_1

    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    :cond_1
    return-void
.end method
