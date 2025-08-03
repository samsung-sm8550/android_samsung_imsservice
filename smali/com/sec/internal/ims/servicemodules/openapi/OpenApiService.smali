.class public Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;
.super Lcom/sec/ims/openapi/IOpenApiService$Stub;
.source "OpenApiService.java"


# instance fields
.field mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sec/ims/openapi/IOpenApiService$Stub;-><init>()V

    .line 31
    check-cast p1, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    return-void
.end method


# virtual methods
.method public registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method

.method public sendSip(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->sendSip(Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z

    move-result p0

    return p0
.end method

.method public setFeatureTags([Ljava/lang/String;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->setFeatureTags([Ljava/lang/String;)V

    return-void
.end method

.method public setupMediaPath([Ljava/lang/String;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->setupMediaPath([Ljava/lang/String;)V

    return-void
.end method

.method public unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiService;->mModule:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method
