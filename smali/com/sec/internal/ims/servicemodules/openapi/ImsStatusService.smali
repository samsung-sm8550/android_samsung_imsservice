.class public Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;
.super Lcom/sec/ims/openapi/IImsStatusService$Stub;
.source "ImsStatusService.java"


# instance fields
.field mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/sec/ims/openapi/IImsStatusService$Stub;-><init>()V

    .line 28
    check-cast p1, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

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

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->getCallCount()[I

    move-result-object p0

    return-object p0
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/ImsStatusServiceModule;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method
