.class public Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;
.super Landroid/app/Service;
.source "NSDSMultiSimService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static mSimEvtRegistered:[Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mMessenger:Landroid/os/Messenger;

.field protected mModuleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;",
            ">;"
        }
    .end annotation
.end field

.field private mNsdsFcmListenerService:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

.field protected mServiceHandler:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic -$$Nest$mactivateSimDevice(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->activateSimDevice(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindNSDSMultiSimService(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->bindNSDSMultiSimService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeactivateSimDevice(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->deactivateSimDevice(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVoWifToggleOffEvent(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->handleVoWifToggleOffEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleVoWifToggleOnEvent(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->handleVoWifToggleOnEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->isDeviceReady()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->onDeviceReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monEventSimReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->onEventSimReady(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterNsdsEventMessenger(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->registerNsdsEventMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretrieveAkaToken(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->retrieveAkaToken(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterNsdsEventMessenger(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Messenger;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->unregisterNsdsEventMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateE911Address(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->updateE911Address(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEntitlementUrl(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->updateEntitlementUrl(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mSimEvtRegistered:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    .line 55
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mNsdsFcmListenerService:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    return-void
.end method

.method private activateSimDevice(II)V
    .locals 3

    .line 318
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activateSimDevice: deviceEventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->activateSimDevice(II)V

    :cond_0
    return-void
.end method

.method private activateSimDevice(Landroid/os/Bundle;)V
    .locals 4

    .line 326
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 327
    const-string v2, "EVENT_TYPE"

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 328
    const-string v3, "RETRYCOUNT"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 329
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 331
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->activateSimDevice(II)V

    :cond_0
    return-void
.end method

.method private bindNSDSMultiSimService()V
    .locals 3

    .line 185
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "bindNSDSMultiSimService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "binding_service"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private deactivateSimDevice(Landroid/os/Bundle;)V
    .locals 1

    .line 360
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 363
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->deactivateSimDevice(I)V

    :cond_0
    return-void
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 410
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V

    return-object v0
.end method

.method private getGcmRegistrationToken(Ljava/lang/String;)V
    .locals 1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p1

    .line 247
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->queueGcmTokenRetrieval()V

    :cond_1
    return-void
.end method

.method private getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 4

    .line 260
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    return-object p0

    .line 264
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 266
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    return-object p0

    .line 268
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find any NSDSModule for imsi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", returning for ADS slot"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    return-object p0
.end method

.method private getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->getNsdsModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NSDSModule for simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    .line 286
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    return-object p0
.end method

.method private getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    .line 290
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getSimManager(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    return-object p0
.end method

.method private getVSimModuleForSimSlot2(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    return-object p0
.end method

.method private handleVoWifToggleOffEvent(Landroid/os/Bundle;)V
    .locals 2

    .line 352
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 353
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 355
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->handleVoWifToggleOffEvent()V

    :cond_0
    return-void
.end method

.method private handleVoWifToggleOnEvent(Landroid/os/Bundle;)V
    .locals 2

    .line 344
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 345
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->handleVoWifToggleOnEvent()V

    :cond_0
    return-void
.end method

.method private isDeviceReady()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 392
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isDeviceReady() User lock "

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->migrateDBToCe(Landroid/content/Context;)V

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->registerDefaultNetworkCallback()V

    return v1

    .line 405
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->unregisterNetworkCallback()V

    const/4 p0, 0x1

    return p0
.end method

.method private onDeviceReady()V
    .locals 2

    .line 451
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeviceReady()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

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

    check-cast v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 453
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->initForDeviceReady()V

    .line 454
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onDeviceReady()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onEventSimReady(Landroid/os/Bundle;)V
    .locals 5

    .line 368
    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 369
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_ABSENT"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 370
    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SWAPPED"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 372
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEventSimReady: isSimAbsent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 374
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->onSimStateNotAvailable(I)V

    return-void

    .line 377
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isSimSwapped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onSimReady(Z)V

    .line 384
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->isDeviceReady()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 385
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onDeviceReady()V

    :cond_1
    return-void
.end method

.method private onSimStateNotAvailable(I)V
    .locals 2

    .line 462
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimStateNotAvailable()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getVSimModuleForSimSlot2(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->onSimNotAvailable()V

    goto :goto_0

    .line 467
    :cond_0
    const-string/jumbo p0, "onSimStateNotAvailable() - nsdsModule is null"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private registerDefaultNetworkCallback()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 432
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerDefaultNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 434
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method private registerForSimEvents(I)V
    .locals 1

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->registerSimEventMessenger(Landroid/os/Messenger;I)V

    .line 192
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mSimEvtRegistered:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method private registerNsdsEventMessenger(Landroid/os/Messenger;)V
    .locals 1

    .line 294
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerNsdsEventMessenger"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->registerEventMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method private retrieveAkaToken(Landroid/os/Bundle;)V
    .locals 4

    .line 303
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "EVENT_TYPE"

    const/16 v2, 0x13

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 305
    const-string v2, "RETRYCOUNT"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 306
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 308
    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->retrieveAkaToken(II)V

    :cond_0
    return-void
.end method

.method public static startNsdsMultiSimService(Landroid/content/Context;I)V
    .locals 2

    .line 481
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startNsdsMultiSimService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 443
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unregisterNetworkCallback"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 445
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method private unregisterNsdsEventMessenger(Landroid/os/Messenger;)V
    .locals 0

    .line 299
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;->unregisterEventMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method private updateE911Address(Landroid/os/Bundle;)V
    .locals 2

    .line 336
    const-string v0, "SLOT_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 337
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForSimSlot(I)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->updateE911Address()V

    :cond_0
    return-void
.end method

.method private updateEntitlementUrl(Landroid/os/Bundle;)V
    .locals 2

    .line 212
    const-string v0, "IMSI"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v1, "URL"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->updateEntitlementUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 473
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 475
    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->dump()V

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;II)V
    .locals 3

    .line 196
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received startId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " flags:"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " intent:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 199
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartCommand: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string p3, "imsi"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 202
    const-string p3, "com.samsung.nsds.action.REFRESH_DEVICE_CONFIG"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->refreshDeviceConfig(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    const-string p3, "com.samsung.nsds.action.ACTION_SIM_DEVICE_ACTIVATION"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p1, 0xb

    const/4 p2, 0x0

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->activateSimDevice(II)V

    goto :goto_0

    .line 206
    :cond_1
    const-string p3, "com.samsung.nsds.action.ACTION_REFRESH_GCM_TOKEN"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 207
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getGcmRegistrationToken(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 148
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Do not allow bind on non-system user"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBind"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 111
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    :try_start_0
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Do not initialize on non-system user"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalStateException occurred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NSDSMultiSimService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    .line 129
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;-><init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

    .line 130
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceHandler:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$ServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mNsdsFcmListenerService:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->createInstance(Landroid/os/Looper;Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mServiceLooper:Landroid/os/Looper;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 135
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mNsdsFcmListenerService:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->registerFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V

    .line 138
    :try_start_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 139
    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "initialize failed"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 158
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->unregisterSimEventMessenger(Landroid/os/Messenger;)V

    .line 162
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 167
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 169
    const-string v2, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 170
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mSimEvtRegistered:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 171
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->registerForSimEvents(I)V

    .line 173
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> startId:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intent:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->handleIntent(Landroid/content/Intent;II)V

    return v1

    .line 177
    :cond_1
    const-string p0, "handleIntent() - Intent is null. return...."

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public refreshDeviceConfig(Ljava/lang/String;)V
    .locals 2

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->getNsdsModuleForImsi(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 229
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->queueRefreshDeviceConfig(I)V

    goto :goto_1

    .line 232
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Refresh device config for all modules"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->mModuleMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;

    .line 234
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;->queueRefreshDeviceConfig(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
