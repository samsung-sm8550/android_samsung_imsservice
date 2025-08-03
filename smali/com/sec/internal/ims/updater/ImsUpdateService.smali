.class public Lcom/sec/internal/ims/updater/ImsUpdateService;
.super Landroid/app/Service;
.source "ImsUpdateService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;
.implements Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;
.implements Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;
.implements Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;


# static fields
.field public static final ACTION_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.samsung.ims.action.NOTIFICATION_DISMISSED"

.field public static final ACTION_REBOOT_NOTIFICATION_DISMISSED:Ljava/lang/String; = "com.samsung.ims.action.REBOOT_NOTIFICATION_DISMISSED"

.field public static final ACTION_SHOW_IMS_REBOOT_DIALOG:Ljava/lang/String; = "com.samsung.ims.action.SHOW_IMS_REBOOT_DIALOG"

.field public static final ACTION_SHOW_IMS_UPDATE_DIALOG:Ljava/lang/String; = "com.samsung.ims.action.SHOW_IMS_UPDATE_DIALOG"

.field public static EXTRA_NOTIFICATION_DISMISSED:Ljava/lang/String; = "notification_dismissed"

.field public static EXTRA_REBOOT_CONSENT:Ljava/lang/String; = "need_to_show_reboot_consent"

.field public static EXTRA_REBOOT_NOTIFICATION_DISMISSED:Ljava/lang/String; = "reboot_notification_dismissed"

.field public static EXTRA_SHOW_CONSENT:Ljava/lang/String; = "need_to_show_consent"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mBinder:Landroid/os/IBinder;

.field mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

.field mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

.field mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

.field mUpdateConsentManager:Lcom/sec/internal/ims/updater/UpdateConsentManager;

.field mUpdateDownloader:Lcom/sec/internal/ims/updater/UpdateDownloader;

.field mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;


# direct methods
.method public static synthetic $r8$lambda$7EqXxOxRd0PcEK94IXMJPAIIGXw(Lcom/sec/internal/ims/updater/ImsUpdateService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService;->lambda$onDownloadComplete$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J4jKdXK7HjZ8VkJr7UnMFHl--zo(Lcom/sec/internal/ims/updater/ImsUpdateService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/ImsUpdateService;->lambda$onUserAccepted$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Kku9pt4clBlMwo5kkT7KGIfi3LI(Lcom/sec/internal/ims/updater/ImsUpdateService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService;->lambda$onInstallSessionStateChanged$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDsc4i3tHUfeXWRveM-WvX9mlJQ(Lcom/sec/internal/ims/updater/ImsUpdateService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/ImsUpdateService;->lambda$onForcedUpdateTriggered$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monForcedUpdateReset(Lcom/sec/internal/ims/updater/ImsUpdateService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/ImsUpdateService;->onForcedUpdateReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monForcedUpdateTriggered(Lcom/sec/internal/ims/updater/ImsUpdateService;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService;->onForcedUpdateTriggered(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInstallSessionStateChanged(Lcom/sec/internal/ims/updater/ImsUpdateService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService;->onInstallSessionStateChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    const-string v0, "ImsUpdateService"

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->LOG_TAG:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/sec/internal/ims/updater/ImsUpdateService$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/ImsUpdateService$1;-><init>(Lcom/sec/internal/ims/updater/ImsUpdateService;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic lambda$onDownloadComplete$2(Ljava/lang/String;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onDownloadComplete: Trigger install"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyInstallStarted(Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateInstaller;->install(Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$onForcedUpdateTriggered$0()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onForcedUpdateTriggered: Need to check immediately"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->scheduleByForceUser()V

    return-void
.end method

.method private synthetic lambda$onInstallSessionStateChanged$1(I)V
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/UpdateInstaller;->hasActiveSession()Z

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 212
    const-string/jumbo v3, "onInstallSessionStateChanged: status [%d], has active session [%s]"

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->onInstallCompleted()V

    .line 217
    iget-object p1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateDownloader:Lcom/sec/internal/ims/updater/UpdateDownloader;

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->onInstallCompleted()V

    .line 218
    iget-object p1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/UpdateInstaller;->onInstallCompleted()V

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateConsentManager:Lcom/sec/internal/ims/updater/UpdateConsentManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->showRebootConsent()V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateInstaller;->resetActiveSession()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onUserAccepted$3()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserAccepted: Trigger download"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->onUserAccepted()V

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateDownloader:Lcom/sec/internal/ims/updater/UpdateDownloader;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateDownloader;->downloadUpdate()V

    return-void
.end method

.method private onForcedUpdateReset()V
    .locals 2

    .line 203
    const-string v0, "ImsUpdateService"

    const-string v1, "Reset Update Information"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/UpdateInstaller;->abandonActiveSession()V

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->removeNotification()V

    .line 206
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->resetUpdateInformation()V

    return-void
.end method

.method private onForcedUpdateTriggered(Landroid/content/Context;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/UpdateInstaller;->hasActiveSession()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    const-string p1, "com.samsung.ims.action.SHOW_IMS_REBOOT_DIALOG"

    const-string v0, "com.samsung.ims.action.REBOOT_NOTIFICATION_DISMISSED"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyUserRebootConsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string p0, "ImsUpdateService"

    const-string/jumbo p1, "onForcedUpdateTriggered: Already staged, waiting for reboot complete"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/updater/ImsUpdateService;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onInstallSessionStateChanged(I)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/updater/ImsUpdateService;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private printPackageInfo()V
    .locals 5

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageInfo failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUpdateService"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-wide v1, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 145
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 143
    const-string/jumbo v2, "printPackageInfo: lastApkUpdateTime: %s, version: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 358
    new-instance p1, Lcom/sec/internal/log/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/log/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 359
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    return-void
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .locals 4

    .line 289
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->getLastSwUpdateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 291
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 292
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getNextUpdateTime()Ljava/lang/String;
    .locals 4

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->getNextScheduleTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 313
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 314
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 9

    .line 100
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 102
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "ImsUpdateService"

    const/16 v2, 0xc8

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 104
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/ImsUpdateService;->printPackageInfo()V

    .line 106
    new-instance v0, Lcom/sec/internal/ims/updater/ImsUpdateService$LocalImsUpdateService;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/ImsUpdateService$LocalImsUpdateService;-><init>(Lcom/sec/internal/ims/updater/ImsUpdateService;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBinder:Landroid/os/IBinder;

    .line 107
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 108
    new-instance v0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    .line 110
    new-instance v0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    .line 111
    new-instance v0, Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    iget-object v3, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/updater/UpdateChecker;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    .line 113
    new-instance v0, Lcom/sec/internal/ims/updater/UpdateDownloader;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    iget-object v3, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/updater/UpdateDownloader;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateDownloader:Lcom/sec/internal/ims/updater/UpdateDownloader;

    .line 115
    new-instance v0, Lcom/sec/internal/ims/updater/UpdateInstaller;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/updater/UpdateInstaller;-><init>(Landroid/content/Context;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateInstaller:Lcom/sec/internal/ims/updater/UpdateInstaller;

    .line 116
    new-instance v0, Lcom/sec/internal/ims/updater/UpdateConsentManager;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 117
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/updater/IUpdateConsentNotifiable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateConsentManager:Lcom/sec/internal/ims/updater/UpdateConsentManager;

    .line 119
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    const-string v0, "com.samsung.intent.action.update_ims"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v0, "com.samsung.intent.action.update_reset"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v4, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v6, "com.sec.imsservice.PERMISSION"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.imsservice.install_session_state_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 182
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->unRegisterToConnectivityManager()V

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDownloadApkInProgress(JJ)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showDownloadProgress(JJ)V

    return-void
.end method

.method public onDownloadComplete(Ljava/lang/String;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/updater/ImsUpdateService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDownloadFailed()V
    .locals 2

    .line 269
    const-string v0, "ImsUpdateService"

    const-string/jumbo v1, "onDownloadFailed"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyDownloadApkFailed()V

    return-void
.end method

.method public onRebootLater()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onRebootLater"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    const-string v0, "com.samsung.ims.action.SHOW_IMS_REBOOT_DIALOG"

    const-string v1, "com.samsung.ims.action.REBOOT_NOTIFICATION_DISMISSED"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyUserRebootConsent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStartCommand: startId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", intent: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImsUpdateService"

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStartCommand: action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object p2, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_SHOW_CONSENT:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 154
    const-string p2, "Received consent dialog up"

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/updater/UpdateChecker;->getUpdateCheckInfo()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    move-result-object p2

    .line 156
    iget-object v1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateConsentManager:Lcom/sec/internal/ims/updater/UpdateConsentManager;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->showUpdateConsent(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    .line 159
    :cond_0
    sget-object p2, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_NOTIFICATION_DISMISSED:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 160
    const-string p2, "Received notification dismiss"

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    const-string v1, "com.samsung.ims.action.SHOW_IMS_UPDATE_DIALOG"

    const-string v2, "com.samsung.ims.action.NOTIFICATION_DISMISSED"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyUserConsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    sget-object p2, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_REBOOT_CONSENT:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 166
    const-string p2, "Reboot Consent"

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateConsentManager:Lcom/sec/internal/ims/updater/UpdateConsentManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->showRebootConsent()V

    .line 170
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_REBOOT_NOTIFICATION_DISMISSED:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    const-string p1, "Reboot Notification Dismissed"

    invoke-static {p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    const-string p1, "com.samsung.ims.action.SHOW_IMS_REBOOT_DIALOG"

    const-string p2, "com.samsung.ims.action.REBOOT_NOTIFICATION_DISMISSED"

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyUserRebootConsent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onUpdateCheckComplete()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUpdateCheckComplete: Show user consent"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    const-string v0, "com.samsung.ims.action.SHOW_IMS_UPDATE_DIALOG"

    const-string v1, "com.samsung.ims.action.NOTIFICATION_DISMISSED"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyUserConsent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateCheckSkipped()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUpdateCheckSkipped"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateDownloader:Lcom/sec/internal/ims/updater/UpdateDownloader;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/UpdateDownloader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUpdateInfoReceived(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUiController:Lcom/sec/internal/ims/updater/ui/UpdateUiController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->notifyUpdateInfoReceived(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    return-void
.end method

.method public onUserAccepted()V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/ImsUpdateService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLastUpdateTime(Ljava/lang/String;)V
    .locals 4

    .line 299
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLastUpdateTime: parseLong failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsUpdateService"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/UpdateChecker;->setLastSwUpdateTime(J)V

    :cond_0
    return-void
.end method

.method public setNextUpdateTime(Ljava/lang/String;)V
    .locals 4

    .line 321
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNextUpdateTime: parseLong failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsUpdateService"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 327
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateChecker:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/UpdateChecker;->setNextScheduleTime(J)V

    :cond_0
    return-void
.end method

.method public showStorageWarning()V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->mUpdateConsentManager:Lcom/sec/internal/ims/updater/UpdateConsentManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateConsentManager;->showStorageWarning()V

    return-void
.end method
