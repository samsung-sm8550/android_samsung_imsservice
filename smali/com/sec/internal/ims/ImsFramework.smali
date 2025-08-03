.class public Lcom/sec/internal/ims/ImsFramework;
.super Ljava/lang/Object;
.source "ImsFramework.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# instance fields
.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 38
    invoke-static {p0}, Lcom/sec/internal/ims/registry/ImsRegistry;->init(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    return-void
.end method


# virtual methods
.method public enableRcsByPhoneId(ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object p0

    return-object p0
.end method

.method public getAllServiceModules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAllServiceModules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCallCount(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    return-object p0
.end method

.method public getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p0

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object p0

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object p0

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p0

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object p0

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object p0

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object p0

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkType(I)I
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNetworkType(I)I

    move-result p0

    return p0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object p0

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p0

    return-object p0
.end method

.method public getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;

    move-result-object p0

    return-object p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    move-result-object p0

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    return-object p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object p0

    return-object p0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public notifyImsReady(ZI)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public sendDeregister(II)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->sendDeregister(II)V

    return-void
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setIsimLoaded()V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setIsimLoaded()V

    return-void
.end method

.method public setRttMode(II)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setRttMode(II)V

    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->startAutoConfig(ZLandroid/os/Message;)V

    return-void
.end method

.method public suspendRegister(ZI)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->suspendRegister(ZI)V

    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->triggerAutoConfigurationForApp(I)V

    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/ImsFramework;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method
