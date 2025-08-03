.class public Lcom/sec/internal/ims/registry/ImsRegistry;
.super Ljava/lang/Object;
.source "ImsRegistry.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsRegistry"

.field private static mIsReady:Z = false

.field private static sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableRcsByPhoneId(ZI)V
    .locals 2

    .line 210
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->enableRcsByPhoneId(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 212
    sget-object p1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRcsByPhoneId RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 1

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    return-object v0
.end method

.method public static getAllServiceModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAllServiceModules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 1

    .line 192
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 1

    .line 196
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(ILjava/lang/String;Z)Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getCallCount(I)[I
    .locals 3

    .line 235
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCallCount(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 237
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallCount RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 238
    new-array p0, p0, [I

    return-object p0
.end method

.method public static getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 1

    .line 63
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 1

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 1

    .line 152
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .locals 1

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 1

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    return-object v0
.end method

.method public static getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 1

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .locals 1

    .line 91
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    return-object v0
.end method

.method public static getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 1

    .line 107
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    return-object v0
.end method

.method private static getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;
    .locals 1

    .line 50
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-object v0
.end method

.method public static getInt(ILjava/lang/String;I)I
    .locals 1

    .line 136
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;
    .locals 1

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNetworkType(I)I

    move-result p0

    return p0
.end method

.method public static getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 1

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;

    move-result-object v0

    return-object v0
.end method

.method public static getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 1

    .line 59
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    return-object v0
.end method

.method public static getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .locals 1

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 1

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsProfileType(I)Ljava/lang/String;
    .locals 3

    .line 201
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 203
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsProfileType RemoteException return empty String : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string p0, ""

    return-object p0
.end method

.method public static getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public static getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 1

    .line 71
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 1

    .line 123
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    return-object v0
.end method

.method public static getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .locals 1

    .line 115
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/sec/internal/ims/registry/ImsRegistry;->sImsFrameworkInstance:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 p0, 0x1

    .line 46
    sput-boolean p0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return-void
.end method

.method public static isRcsEnabledByPhoneId(I)Z
    .locals 1

    .line 184
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public static isReady()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/sec/internal/ims/registry/ImsRegistry;->mIsReady:Z

    return v0
.end method

.method public static isServiceAvailable(Ljava/lang/String;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 2

    .line 218
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 220
    sget-object p1, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceEnabledByPhoneId RemoteException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 3

    .line 165
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsRegistrationListener RemoteException do nothing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    return-void
.end method

.method public static setRttMode(II)V
    .locals 1

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->setRttMode(II)V

    return-void
.end method

.method public static startAutoConfig(ZLandroid/os/Message;)V
    .locals 1

    .line 188
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->startAutoConfig(ZLandroid/os/Message;)V

    return-void
.end method

.method public static triggerAutoConfigurationForApp(I)V
    .locals 3

    .line 227
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->triggerAutoConfigurationForApp(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    sget-object v0, Lcom/sec/internal/ims/registry/ImsRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerAutoConfigurationForApp RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsFramework()Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method
