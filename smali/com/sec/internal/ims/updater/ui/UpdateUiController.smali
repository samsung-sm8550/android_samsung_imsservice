.class public Lcom/sec/internal/ims/updater/ui/UpdateUiController;
.super Ljava/lang/Object;
.source "UpdateUiController.java"


# static fields
.field private static final CHANNEL_ID_MISC:Ljava/lang/String; = "imsservice.misc"

.field private static final CHANNEL_ID_PRIMARY:Ljava/lang/String; = "imsservice.update"

.field private static final CHANNEL_NAME_MISC:Ljava/lang/String; = "Miscellaneous notifications"

.field private static final CHANNEL_NAME_PRIMARY:Ljava/lang/String; = "Important notifications"

.field private static final NOTIFICATION_ID_BASE_MISC:I = -0x64

.field private static final NOTIFICATION_ID_PRIMARY:I = 0x64

.field private static final NOTIFICATION_ID_PROGRESS:I = -0xa

.field private static final TAG:Ljava/lang/String; = "UpdateUiController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastNotifiedTime:Ljava/time/Instant;

.field private mMiscNotiCounter:I

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$hEgr5w2B9K6OmR9MYuemLniCUEo(Lcom/sec/internal/ims/updater/ui/UpdateUiController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->lambda$showDebugToast$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfqWLpvsxoaL2cV7RRN9hnhcXxk(Lcom/sec/internal/ims/updater/ui/UpdateUiController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->lambda$showDebugNotification$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mMiscNotiCounter:I

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mUiHandler:Landroid/os/Handler;

    .line 49
    const-string p2, "notification"

    .line 50
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 52
    new-instance p0, Landroid/app/NotificationChannel;

    const-string p2, "Important notifications"

    const/4 v0, 0x4

    const-string v1, "imsservice.update"

    invoke-direct {p0, v1, p2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 54
    new-instance p0, Landroid/app/NotificationChannel;

    const-string p2, "Miscellaneous notifications"

    const/4 v0, 0x2

    const-string v1, "imsservice.misc"

    invoke-direct {p0, v1, p2, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private getPrimaryNotificationBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 2

    .line 145
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const-string v1, "imsservice.update"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p0, 0x7f040016

    .line 146
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 147
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method private isDebugging()Z
    .locals 2

    .line 59
    const-string/jumbo p0, "ro.debuggable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 60
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isDebugNotificationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private isExcessiveNotifying()Z
    .locals 2

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mLastNotifiedTime:Ljava/time/Instant;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showDebugNotification$0(Ljava/lang/String;)V
    .locals 3

    .line 112
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const-string v2, "imsservice.misc"

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f040016

    .line 113
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 115
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mNotificationMgr:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mMiscNotiCounter:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mMiscNotiCounter:I

    add-int/lit8 v1, v1, -0x64

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private synthetic lambda$showDebugToast$1(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showDebugNotification(Ljava/lang/String;)V
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDebugNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateUiController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->isDebugging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/updater/ui/UpdateUiController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/ui/UpdateUiController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showDebugToast(Ljava/lang/String;)V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDebugToast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateUiController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->isDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/updater/ui/UpdateUiController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/ui/UpdateUiController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private showUserConsentNotification(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showUserConsentNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateUiController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->getPrimaryNotificationBuilder(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    if-eqz p3, :cond_1

    .line 138
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 141
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 p2, 0x64

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public notifyDownloadApkFailed()V
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v0, -0xa

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public notifyInstallStarted(Ljava/lang/String;)V
    .locals 2

    .line 85
    const-string v0, "Install started"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showDebugToast(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install started. Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showDebugNotification(Ljava/lang/String;)V

    return-void
.end method

.method public notifyUpdateInfoReceived(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 1

    .line 64
    const-string v0, "UpdateCheckInfo received!"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showDebugToast(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showDebugNotification(Ljava/lang/String;)V

    return-void
.end method

.method public notifyUserConsent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/updater/ImsUpdateService$ImsUpdateConsentReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/updater/ImsUpdateService$ImsUpdateConsentReceiver;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    iget-object p2, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f090004

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 77
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showDebugToast(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/high16 v3, 0x4000000

    .line 80
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    .line 81
    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 79
    invoke-direct {p0, p2, v0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showUserConsentNotification(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public notifyUserRebootConsent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/updater/ImsUpdateService$ImsUpdateConsentReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/updater/ImsUpdateService$ImsUpdateConsentReceiver;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object p2, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f090005

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showDebugToast(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/high16 v3, 0x4000000

    .line 101
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    .line 102
    invoke-static {v1, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 100
    invoke-direct {p0, p2, v0, p1}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->showUserConsentNotification(Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public removeNotification()V
    .locals 1

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mNotificationMgr:Landroid/app/NotificationManager;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public showDownloadProgress(JJ)V
    .locals 6

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    long-to-float v0, v0

    long-to-float v1, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->isExcessiveNotifying()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 159
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%,d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v2, v4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 161
    new-instance p4, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    const-string v4, "imsservice.misc"

    invoke-direct {p4, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f040016

    .line 162
    invoke-virtual {p4, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p4

    iget-object v2, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f090002

    invoke-virtual {v2, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p4

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 164
    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 p4, 0x0

    .line 166
    invoke-virtual {p3, v1, v0, p4}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p3

    const/4 p4, 0x1

    .line 167
    invoke-virtual {p3, p4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    const/16 p4, -0xa

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mLastNotifiedTime:Ljava/time/Instant;

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {p0, p4}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 175
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDownloadProgress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "% ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UpdateUiController"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 177
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/ui/UpdateUiController;->mLastNotifiedTime:Ljava/time/Instant;

    return-void
.end method
