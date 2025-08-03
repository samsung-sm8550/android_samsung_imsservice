.class public Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;
.super Landroid/app/Service;
.source "EntitlementConfigService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field protected static mModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mConfigRcvRegistered:Z

.field protected mConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mMessenger:Landroid/os/Messenger;

.field private mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

.field private mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

.field protected mServiceLooper:Landroid/os/Looper;

.field protected mSimEvtRegistered:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventLog(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceHandler(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mforceConfigUpdate(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->forceConfigUpdate(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitEntitlementConfigService(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->initEntitlementConfigService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDeviceReady(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->onDeviceReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDeviceReady(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->onDeviceReady(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEventSimReady(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->onEventSimReady(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretriveAkaToken(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->retriveAkaToken(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEntitlementUrl(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->updateEntitlementUrl(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    .line 64
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimEvtRegistered:[Z

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 70
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 72
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$1;-><init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addAndGetConfigModule(I)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    .locals 2

    .line 361
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    if-nez v0, :cond_1

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->getInstance()Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 365
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->getInstance()Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->getDeviceConfigModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    move-result-object p0

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    .line 367
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addAndGetConfigModule: added for phoneId "

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private forceConfigUpdate(I)V
    .locals 1

    .line 394
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    if-nez p0, :cond_0

    .line 396
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "configModule is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 400
    :cond_0
    instance-of p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    if-eqz p1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->forceConfigUpdate()V

    goto :goto_0

    .line 403
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "check why config module is not instance of NSDSConfigModule"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 301
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$2;-><init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V

    return-object v0
.end method

.method private getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    .line 375
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    return-object p0
.end method

.method private initEntitlementConfigService()V
    .locals 3

    .line 223
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "initEntitlementConfigService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->registerConfigReceiver()V

    .line 227
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "binding_service"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private onDeviceReady()V
    .locals 1

    .line 387
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDeviceReady"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    .line 389
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onDeviceReady()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDeviceReady(I)V
    .locals 1

    .line 379
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onDeviceReady"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 380
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    if-eqz p0, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onDeviceReady()V

    :cond_0
    return-void
.end method

.method private onEventSimReady(Landroid/os/Bundle;)V
    .locals 5

    .line 237
    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 238
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_ABSENT"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 239
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SWAPPED"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 241
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEventSimReady: isSimAbsent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isSimSwapped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_1

    .line 243
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "remove nsdsconfigmodule for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->unregisterReceiver()V

    .line 246
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 251
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->addAndGetConfigModule(I)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    move-result-object v2

    .line 252
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/MnoNsdsConfigStrategyCreator;->updateMnoStrategy(Landroid/content/Context;I)V

    .line 253
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->resetDeviceConfigState()V

    if-eqz v2, :cond_2

    .line 256
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onSimReady(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->isDeviceReady()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 258
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->onDeviceReady()V

    goto :goto_0

    .line 261
    :cond_2
    const-string/jumbo p0, "onEventSimReady: config module was not initiated"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private registerConfigReceiver()V
    .locals 3

    .line 342
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 344
    const-string v1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    :cond_0
    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 323
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerDefaultNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 325
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private registerForSimEvents(I)V
    .locals 2

    .line 232
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerSimEventMessenger(Landroid/os/Messenger;I)V

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimEvtRegistered:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method private resetDeviceConfigState()V
    .locals 7

    .line 285
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 286
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    .line 287
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 289
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string v4, "device_config_state"

    invoke-static {v3, v2, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 291
    const-string v5, "deviceconfig_in_progress"

    .line 292
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] reset... device config state"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private retriveAkaToken(I)V
    .locals 1

    .line 408
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    if-nez p0, :cond_0

    .line 410
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "configModule is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 414
    :cond_0
    instance-of p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    if-eqz p1, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->retriveAkaToken()V

    goto :goto_0

    .line 417
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "check why config module is not instance of NSDSConfigModule"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static startEntitlementConfigService(Landroid/content/Context;I)V
    .locals 2

    .line 458
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startEntitlementConfigService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private unregisterConfigReceiver()V
    .locals 1

    .line 353
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mConfigRcvRegistered:Z

    :cond_0
    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 334
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method private updateEntitlementUrl(Landroid/os/Bundle;)V
    .locals 6

    .line 439
    const-string v0, "URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 440
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEntitlementUrl: url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 446
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 447
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 449
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 450
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    invoke-virtual {v3, v2, v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->deleteConfigAndResetDeviceAndAccountStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveActionTrigger(Landroid/content/Context;Ljava/lang/String;I)V

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->setEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateTelephonyCallStatus(II)V
    .locals 3

    .line 422
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonyCallStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 423
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 424
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    if-nez v1, :cond_0

    .line 426
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "configModule is null"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_0
    instance-of v2, v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    if-eqz v2, :cond_1

    .line 431
    invoke-virtual {v1, p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->updateTelephonyCallStatus(II)V

    goto :goto_1

    .line 433
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "check why config module is not instance of NSDSConfigModule"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public actionTriggerForDeletingDB()V
    .locals 5

    .line 465
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const-string v2, "entitlement.config"

    const-string v3, "action_trigger"

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getIntInDe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 470
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "actionTriggerForDeletingDB (saved) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveActionTrigger(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 478
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 479
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mModuleMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;

    .line 480
    invoke-virtual {p3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->dump()V

    goto :goto_0

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 483
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected isDeviceReady()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isDeviceReady() User lock "

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->migrateDBToCe(Landroid/content/Context;)V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->registerDefaultNetworkCallback()V

    return v1

    .line 280
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->unregisterNetworkCallback()V

    const/4 p0, 0x1

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 170
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBind"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 144
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EntitlementConfigService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 148
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    .line 149
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;-><init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    .line 150
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    .line 152
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    .line 153
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v3, 0x14

    invoke-direct {v2, v1, v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 154
    new-instance v0, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->createInstance(Landroid/os/Looper;Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 160
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x6a

    .line 161
    iput v1, v0, Landroid/os/Message;->what:I

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "initialize failed"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 176
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->unregisterSimEventMessenger(Landroid/os/Messenger;)V

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->unregisterConfigReceiver()V

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 186
    sget-object p2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onStartCommand"

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    .line 188
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 189
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mSimEvtRegistered:[Z

    aget-boolean v4, v4, v3

    if-nez v4, :cond_0

    .line 190
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->registerForSimEvents(I)V

    .line 192
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "> startId:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " intent:"

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string p2, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 196
    :cond_1
    const-string p2, "device_event_type"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 197
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p3, 0x12

    if-eq p2, p3, :cond_3

    const/16 p3, 0x13

    if-eq p2, p3, :cond_2

    .line 209
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x6b

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 205
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0xc8

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 206
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 201
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p3, 0x6c

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    return v0

    .line 215
    :cond_5
    const-string p0, "handleIntent() - Intent is null. return...."

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
