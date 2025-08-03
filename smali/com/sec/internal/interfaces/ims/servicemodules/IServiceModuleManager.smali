.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
.super Ljava/lang/Object;
.source "IServiceModuleManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# virtual methods
.method public abstract checkRcsServiceModules(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract cleanUpModules()V
.end method

.method public abstract forceCallOnServiceSwitched(I)V
.end method

.method public abstract getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
.end method

.method public abstract getCmsModule()Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;
.end method

.method public abstract getEucModule()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucModule;
.end method

.method public abstract getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
.end method

.method public abstract getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
.end method

.method public abstract getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
.end method

.method public abstract getImageShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;
.end method

.method public abstract getImsStatusServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IImsStatusServiceModule;
.end method

.method public abstract getOpenApiServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;
.end method

.method public abstract getOptionsModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/IOptionsModule;
.end method

.method public abstract getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
.end method

.method public abstract getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;
.end method

.method public abstract getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;
.end method

.method public abstract getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
.end method

.method public abstract getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
.end method

.method public abstract getTapiServiceManager()Lcom/sec/internal/ims/servicemodules/tapi/service/api/interfaces/ITapiServiceManager;
.end method

.method public abstract getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
.end method

.method public abstract getVideoShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
.end method

.method public abstract getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
.end method

.method public abstract isLooperExist()Z
.end method

.method public abstract notifyAutoConfigDone(I)V
.end method

.method public abstract notifyConfigured(ZI)V
.end method

.method public abstract notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V
.end method

.method public abstract notifyImsSwitchUpdateToApp()V
.end method

.method public abstract notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
.end method

.method public abstract notifyOmadmVolteConfigDone(I)V
.end method

.method public abstract notifyRcsDeregistering(Ljava/util/Set;Lcom/sec/ims/ImsRegistration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/ImsRegistration;",
            ")V"
        }
    .end annotation
.end method

.method public abstract notifyReRegistering(ILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract notifySimChange(I)V
.end method

.method public abstract onImsSwitchUpdated(I)V
.end method

.method public abstract serviceStartDeterminer(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract updateCapabilities(I)V
.end method
