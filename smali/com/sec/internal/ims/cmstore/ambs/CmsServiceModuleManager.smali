.class public Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;
.super Landroid/os/Handler;
.source "CmsServiceModuleManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "CmsServiceModuleManager"

.field private static mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;


# instance fields
.field mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .locals 1

    .line 52
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 54
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    return-void
.end method

.method public static getInstance(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    .line 48
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mCmsModuleManager:Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    return-object p0
.end method


# virtual methods
.method public checkRcsServiceModules(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public cleanUpModules()V
    .locals 0

    .line 0
    return-void
.end method

.method public forceCallOnServiceSwitched(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmsModule()Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEucModule()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    return-object p0
.end method

.method public getGlsModule()Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsStatusServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IImsStatusServiceModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOpenApiServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/openapi/IOpenApiServiceModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOptionsModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/IOptionsModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getQuantumEncryptionServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceModuleHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTapiServiceManager()Lcom/sec/internal/ims/servicemodules/tapi/service/api/interfaces/ITapiServiceManager;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoShareModule()Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public initSequentially()V
    .locals 0

    .line 0
    return-void
.end method

.method public isLooperExist()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyAutoConfigDone(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyConfigured(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyImsSwitchUpdateToApp()V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyOmadmVolteConfigDone(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyRcsDeregistering(Ljava/util/Set;Lcom/sec/ims/ImsRegistration;)V
    .locals 0
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

    .line 0
    return-void
.end method

.method public notifyReRegistering(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public notifySimChange(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onImsSwitchUpdated(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public serviceStartDeterminer(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updateCapabilities(I)V
    .locals 0

    .line 0
    return-void
.end method
