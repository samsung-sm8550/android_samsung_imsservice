.class public interface abstract Lcom/sec/internal/interfaces/ims/IImsFramework;
.super Ljava/lang/Object;
.source "IImsFramework.java"


# virtual methods
.method public abstract enableRcsByPhoneId(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
.end method

.method public abstract getAllServiceModules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBinder(Ljava/lang/String;)Landroid/os/Binder;
.end method

.method public abstract getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
.end method

.method public abstract getBoolean(ILjava/lang/String;Z)Z
.end method

.method public abstract getCallCount(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
.end method

.method public abstract getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
.end method

.method public abstract getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
.end method

.method public abstract getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
.end method

.method public abstract getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
.end method

.method public abstract getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
.end method

.method public abstract getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
.end method

.method public abstract getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
.end method

.method public abstract getInt(ILjava/lang/String;I)I
.end method

.method public abstract getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;
.end method

.method public abstract getNetworkType(I)I
.end method

.method public abstract getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
.end method

.method public abstract getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
.end method

.method public abstract getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
.end method

.method public abstract getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
.end method

.method public abstract getRcsProfileType(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
.end method

.method public abstract getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
.end method

.method public abstract getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
.end method

.method public abstract isCrossSimCallingSupportedByPhoneId(I)Z
.end method

.method public abstract isDefaultDmValue(Ljava/lang/String;I)Z
.end method

.method public abstract isRcsEnabledByPhoneId(I)Z
.end method

.method public abstract isServiceAvailable(Ljava/lang/String;II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyImsReady(ZI)V
.end method

.method public abstract registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
.end method

.method public abstract registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendDeregister(II)V
.end method

.method public abstract setDefaultDmValue(Ljava/lang/String;I)Z
.end method

.method public abstract setIsimLoaded()V
.end method

.method public abstract setRttMode(II)V
.end method

.method public abstract startAutoConfig(ZLandroid/os/Message;)V
.end method

.method public abstract suspendRegister(ZI)V
.end method

.method public abstract triggerAutoConfigurationForApp(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
