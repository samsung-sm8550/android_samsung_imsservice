.class public Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;
.super Landroid/content/BroadcastReceiver;
.source "DeviceLocale.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale;


# static fields
.field public static final DEFAULT_LANG_VALUE:Ljava/lang/String; = "def"

.field private static final LOCALE_SET_INTENT_FILTER:Landroid/content/IntentFilter;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceLocaleListener:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;

.field private final mHandler:Landroid/os/Handler;

.field private mStarted:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeviceLocaleListener(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mDeviceLocaleListener:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLocale(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Ljava/util/Locale;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->LOCALE_SET_INTENT_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mStarted:Z

    return-void
.end method

.method private getLocale()Ljava/util/Locale;
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDeviceLocale(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;)V
    .locals 2

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getLanguageCode(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 100
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 105
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->getLocale()Ljava/util/Locale;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$3;-><init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;Ljava/util/Locale;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mStarted:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Already started!"

    invoke-static {v0, v2}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 60
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mStarted:Z

    .line 61
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mDeviceLocaleListener:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;

    .line 62
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->LOCALE_SET_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    new-instance p1, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->getDeviceLocale(Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;)V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mStarted:Z

    const-string v1, "Not started!"

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mStarted:Z

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
