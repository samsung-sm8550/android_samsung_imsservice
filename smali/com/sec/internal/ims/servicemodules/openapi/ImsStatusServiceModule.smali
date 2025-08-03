.class public Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "ImsStatusServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IImsStatusServiceModule;


# instance fields
.field private mVolteService:Lcom/sec/ims/volte2/IVolteService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/ims/volte2/IVolteService;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 37
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    return-void
.end method


# virtual methods
.method public getCallCount()[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    .line 100
    invoke-static {p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCallCount(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 42
    const-string p0, "mmtel"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IVolteService;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 49
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->mVolteService:Lcom/sec/ims/volte2/IVolteService;

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IVolteService;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 82
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    :cond_0
    return-void
.end method
