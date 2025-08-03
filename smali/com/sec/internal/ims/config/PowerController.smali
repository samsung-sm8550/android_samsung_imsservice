.class public Lcom/sec/internal/ims/config/PowerController;
.super Ljava/lang/Object;
.source "PowerController.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field protected mPendingIntent:Landroid/app/PendingIntent;

.field protected final mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

.field protected mState:Lcom/sec/internal/ims/config/PowerController$State;

.field private mTimeout:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeout(Lcom/sec/internal/ims/config/PowerController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/config/PowerController;->mTimeout:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeLock(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->LOG_TAG:Ljava/lang/String;

    .line 30
    new-instance v1, Lcom/sec/internal/ims/config/PowerController$Receiver;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/PowerController$Receiver;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/PowerController;->mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

    const/4 v2, 0x0

    .line 32
    iput-object v2, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    const-wide/16 v3, 0x0

    .line 34
    iput-wide v3, p0, Lcom/sec/internal/ims/config/PowerController;->mTimeout:J

    .line 35
    iput-object v2, p0, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 36
    iput-object v2, p0, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    .line 39
    const-string v2, "PowerController"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController;->mContext:Landroid/content/Context;

    .line 41
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v2, v1, Lcom/sec/internal/ims/config/PowerController$Receiver;->ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    .line 44
    invoke-static {p1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mPendingIntent:Landroid/app/PendingIntent;

    .line 46
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController$Receiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 47
    iput-wide p2, p0, Lcom/sec/internal/ims/config/PowerController;->mTimeout:J

    .line 48
    new-instance p1, Lcom/sec/internal/ims/config/PowerController$ReleaseState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/PowerController$ReleaseState;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController;->mReceiver:Lcom/sec/internal/ims/config/PowerController$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public lock()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {p0}, Lcom/sec/internal/ims/config/PowerController$State;->lock()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {p0}, Lcom/sec/internal/ims/config/PowerController$State;->release()V

    return-void
.end method

.method public sleep(J)V
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/config/PowerController$State;->sleep(J)V

    return-void
.end method
