.class public Lcom/sec/internal/ims/updater/stub/ExtukManager;
.super Ljava/lang/Object;
.source "ExtukManager.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "ExtukManager"


# instance fields
.field private final DEVICE_ID_SERVICE_CLASS_NAME:Ljava/lang/String;

.field private final DEVICE_ID_SERVICE_PACKAGE_NAME:Ljava/lang/String;

.field private final RETRY_BIND_INIT_DELAY_SECS:J

.field private final RETRY_BIND_MAX_COUNT:I

.field private mBindRetryHelper:Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;

.field private mServiceConnection:Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$gmqsljQiXtgzoIUIlin6eejekQ8(Lcom/sec/internal/ims/updater/stub/ExtukManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->lambda$initRetryHelper$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monOAIDFetchFailed(Lcom/sec/internal/ims/updater/stub/ExtukManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->onOAIDFetchFailed()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monOAIDReceived(Lcom/sec/internal/ims/updater/stub/ExtukManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->onOAIDReceived(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "com.samsung.android.deviceidservice"

    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->DEVICE_ID_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "com.samsung.android.deviceidservice.DeviceIdService"

    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->DEVICE_ID_SERVICE_CLASS_NAME:Ljava/lang/String;

    const-wide/16 v0, 0x5

    .line 29
    iput-wide v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->RETRY_BIND_INIT_DELAY_SECS:J

    const/4 v0, 0x5

    .line 30
    iput v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->RETRY_BIND_MAX_COUNT:I

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mListener:Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mServiceConnection:Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->initRetryHelper()V

    return-void
.end method

.method private bindService()Z
    .locals 3

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    const-string v1, "com.samsung.android.deviceidservice"

    const-string v2, "com.samsung.android.deviceidservice.DeviceIdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    new-instance v1, Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;-><init>(Lcom/sec/internal/ims/updater/stub/ExtukManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mServiceConnection:Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private getAndroidId()Ljava/lang/String;
    .locals 3

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndroidId: androidId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndroidId: androidId is empty. Use UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private initRetryHelper()V
    .locals 5

    .line 43
    new-instance v0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;

    new-instance v1, Lcom/sec/internal/ims/updater/stub/ExtukManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/stub/ExtukManager;)V

    const-wide/16 v2, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;-><init>(JILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mBindRetryHelper:Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;

    return-void
.end method

.method private isDeviceIdServiceExists()Z
    .locals 4

    const/4 v0, 0x0

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.deviceidservice"

    const/16 v2, 0x80

    .line 65
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 66
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceIdServiceExists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 69
    sget-object v1, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceIdServiceExists: false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private isOAIDRequired()Z
    .locals 1

    .line 59
    invoke-static {}, Lcom/sec/internal/constants/ims/updater/StubUrlConstants;->isOAIDUsedForExtuk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->isDeviceIdServiceExists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initRetryHelper$0()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->tryFetchOAID()V

    return-void
.end method

.method private notifyResult(Ljava/lang/String;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyResult: extuk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mListener:Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;->onResult(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mListener:Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;

    return-void
.end method

.method private onOAIDFetchFailed()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->notifyResult(Ljava/lang/String;)V

    return-void
.end method

.method private onOAIDReceived(Ljava/lang/String;)V
    .locals 3

    .line 124
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOAIDReceived: OAID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->unbindService()V

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object p1, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onOAIDReceived: Invalid OAID, notify Android ID"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->onOAIDFetchFailed()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->notifyResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private tryFetchOAID()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->bindService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryFetchOAID: bindService succeeded"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mBindRetryHelper:Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;

    invoke-static {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->-$$Nest$mreset(Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mBindRetryHelper:Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;

    invoke-static {v0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->-$$Nest$mretry(Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    sget-object p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "tryFetchOAID: bindService failed. Retry"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 104
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryFetchOAID: bind retry max count reached. Notify Android ID"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mBindRetryHelper:Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;

    invoke-static {v0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->-$$Nest$mreset(Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;)V

    .line 106
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->onOAIDFetchFailed()V

    return-void
.end method

.method private unbindService()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mServiceConnection:Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;

    if-eqz v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mServiceConnection:Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;

    return-void
.end method


# virtual methods
.method public fetchExtuk(Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;)V
    .locals 2

    .line 47
    sget-object v0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fetchExtuk"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mListener:Lcom/sec/internal/ims/updater/stub/ExtukManager$ExtukListener;

    .line 50
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->isOAIDRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager;->mBindRetryHelper:Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;

    invoke-static {p1}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->-$$Nest$mreset(Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;)V

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->tryFetchOAID()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->getAndroidId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->notifyResult(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
