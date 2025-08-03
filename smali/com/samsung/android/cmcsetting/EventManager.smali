.class Lcom/samsung/android/cmcsetting/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# instance fields
.field private authorityUriForCmcActivation:Landroid/net/Uri;

.field private authorityUriForCmcCallActivation:Landroid/net/Uri;

.field private authorityUriForCmcMessageActivation:Landroid/net/Uri;

.field private authorityUriForDevices:Landroid/net/Uri;

.field private authorityUriForLines:Landroid/net/Uri;

.field private authorityUriForNetworkMode:Landroid/net/Uri;

.field private authorityUriForSaInfo:Landroid/net/Uri;

.field private authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

.field private authorityUriForWatchActivation:Landroid/net/Uri;

.field private cmcActivationChangedListenerList:Ljava/util/ArrayList;

.field private cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private cmcCallActivationChangedListenerList:Ljava/util/ArrayList;

.field private cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private cmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

.field private cmcLineInfoChangedListenerList:Ljava/util/ArrayList;

.field private cmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

.field private cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

.field private cmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

.field private cmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

.field private cmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

.field private context:Landroid/content/Context;

.field private devicesDbChangeObserver:Landroid/database/ContentObserver;

.field private linesDbChangeObserver:Landroid/database/ContentObserver;

.field private networkModeDbChangeObserver:Landroid/database/ContentObserver;

.field private saInfoDbChangeObserver:Landroid/database/ContentObserver;

.field private sameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

.field private sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

.field private watchActivationDbChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_activation"

    .line 17
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_message_activation"

    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/cmc_call_activation"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/watch_activation"

    .line 20
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/network_mode"

    .line 21
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/lines"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForLines:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/devices"

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForDevices:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/sainfo"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForSaInfo:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.mdec.provider.setting/same_wifi_network_status"

    .line 25
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 33
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 42
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    .line 43
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 45
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcActivation()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcMessageActivation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcCallActivation()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcWatchActivation()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcNetworkMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcLines()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcDevices()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventCmcSaInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/cmcsetting/EventManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->sendEventSameWifiNetworkStatus()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/cmcsetting/EventManager;)Ljava/util/ArrayList;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationChangedListenerList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private registerCmcActivationObserver()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$1;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 335
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForCmcActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcCallActivationObserver()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$3;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 361
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForCmcCallActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcDeviceInfoObserver()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$7;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 413
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForDevices:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcLineInfoObserver()V
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$6;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    .line 400
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForLines:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcMessageActivationObserver()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$2;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 348
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForCmcMessageActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcNetworkModeObserver()V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$5;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 387
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForNetworkMode:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerCmcWatchActivationObserver()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$4;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 374
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForWatchActivation:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object p1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->mainActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    return-void
.end method

.method private registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object p1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->callActivation:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    return-void
.end method

.method private registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object p1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->deviceInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    return-void
.end method

.method private registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object p1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->lineInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    return-void
.end method

.method private registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object p1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->networkMode:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    return-void
.end method

.method private registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object p1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->sameWifiNetworkStatus:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    return-void
.end method

.method private registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object p1, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->saInfo:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    return-void
.end method

.method private registerObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V
    .locals 2

    .line 288
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CmcSettingManager"

    const-string v1, "looper is null create"

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 293
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/EventManager$19;->$SwitchMap$com$samsung$android$cmcsetting$EventManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 319
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerSameWifiNetworkStatusObserver()V

    goto :goto_0

    .line 316
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerSamsungAccountInfoObserver()V

    goto :goto_0

    .line 313
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerCmcDeviceInfoObserver()V

    goto :goto_0

    .line 310
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerCmcLineInfoObserver()V

    goto :goto_0

    .line 307
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerCmcNetworkModeObserver()V

    goto :goto_0

    .line 304
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerCmcWatchActivationObserver()V

    goto :goto_0

    .line 301
    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerCmcCallActivationObserver()V

    goto :goto_0

    .line 298
    :pswitch_7
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerCmcMessageActivationObserver()V

    goto :goto_0

    .line 295
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/android/cmcsetting/EventManager;->registerCmcActivationObserver()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerSameWifiNetworkStatusObserver()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 432
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$9;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    .line 439
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForSameWifiNetworkStatus:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerSamsungAccountInfoObserver()V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/samsung/android/cmcsetting/EventManager$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/cmcsetting/EventManager$8;-><init>(Lcom/samsung/android/cmcsetting/EventManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 426
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/EventManager;->authorityUriForSaInfo:Landroid/net/Uri;

    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private sendEventCmcActivation()V
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$10;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 524
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcCallActivation()V
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$12;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 554
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcDevices()V
    .locals 2

    .line 603
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$16;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 614
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcLines()V
    .locals 2

    .line 588
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$15;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 599
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcMessageActivation()V
    .locals 2

    .line 528
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$11;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 539
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcNetworkMode()V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$14;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcSaInfo()V
    .locals 2

    .line 618
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$17;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 629
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventCmcWatchActivation()V
    .locals 2

    .line 558
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$13;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 569
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendEventSameWifiNetworkStatus()V
    .locals 2

    .line 633
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/cmcsetting/EventManager$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcsetting/EventManager$18;-><init>(Lcom/samsung/android/cmcsetting/EventManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 644
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private unregisterObserver(Landroid/database/ContentObserver;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 508
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/EventManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V
    .locals 1

    .line 444
    sget-object v0, Lcom/samsung/android/cmcsetting/EventManager$19;->$SwitchMap$com$samsung$android$cmcsetting$EventManager$OBSERVER_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 482
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 483
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 484
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 485
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 486
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 487
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 488
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 489
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    .line 490
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 491
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    .line 492
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 493
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    .line 494
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 495
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    .line 496
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 497
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    .line 498
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 499
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 478
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 479
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 474
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 475
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->saInfoDbChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 470
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 471
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->devicesDbChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 466
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 467
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->linesDbChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 462
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 463
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->networkModeDbChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 458
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 459
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->watchActivationDbChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 454
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 455
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationDbChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 450
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 451
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationDbChangeObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 446
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Landroid/database/ContentObserver;)V

    .line 447
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationDbChangeObserver:Landroid/database/ContentObserver;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method registerListenerCommon(Ljava/lang/Object;)V
    .locals 1

    .line 58
    instance-of v0, p1, Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)V

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;

    if-eqz v0, :cond_1

    .line 63
    check-cast p1, Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)V

    goto :goto_0

    .line 66
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;

    if-eqz v0, :cond_2

    .line 67
    check-cast p1, Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)V

    goto :goto_0

    .line 68
    :cond_2
    instance-of v0, p1, Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;

    if-eqz v0, :cond_3

    .line 69
    check-cast p1, Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)V

    goto :goto_0

    .line 70
    :cond_3
    instance-of v0, p1, Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;

    if-eqz v0, :cond_4

    .line 71
    check-cast p1, Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)V

    goto :goto_0

    .line 72
    :cond_4
    instance-of v0, p1, Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;

    if-eqz v0, :cond_5

    .line 73
    check-cast p1, Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)V

    goto :goto_0

    .line 74
    :cond_5
    instance-of v0, p1, Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;

    if-eqz v0, :cond_6

    .line 75
    check-cast p1, Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcsetting/EventManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;)V

    :cond_6
    :goto_0
    return-void
.end method

.method unregisterAllListener()Z
    .locals 2

    const-string v0, "CmcSettingManager"

    const-string/jumbo v1, "unregisterListener : all"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcActivationChangedListenerList:Ljava/util/ArrayList;

    .line 275
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcMessageActivationChangedListenerList:Ljava/util/ArrayList;

    .line 276
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcCallActivationChangedListenerList:Ljava/util/ArrayList;

    .line 277
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcWatchActivationChangedListenerList:Ljava/util/ArrayList;

    .line 278
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcNetworkModeChangedListenerList:Ljava/util/ArrayList;

    .line 279
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcLineInfoChangedListenerList:Ljava/util/ArrayList;

    .line 280
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcDeviceInfoChangedListenerList:Ljava/util/ArrayList;

    .line 281
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->cmcSamsungAccountInfoChangedListenerList:Ljava/util/ArrayList;

    .line 282
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/EventManager;->sameWifiNetworkStatusListenerList:Ljava/util/ArrayList;

    .line 283
    sget-object v0, Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;->all:Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcsetting/EventManager;->unregisterObserver(Lcom/samsung/android/cmcsetting/EventManager$OBSERVER_TYPE;)V

    const/4 p0, 0x1

    return p0
.end method
