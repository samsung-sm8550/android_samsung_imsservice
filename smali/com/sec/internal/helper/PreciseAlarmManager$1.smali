.class Lcom/sec/internal/helper/PreciseAlarmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "PreciseAlarmManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/PreciseAlarmManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 225
    const-string p1, "PreciseAlarmManager"

    const-string/jumbo p2, "sendMessageDelayed: get intent, get wake lock for 10secs."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager$1;->this$0:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object p0, p0, Lcom/sec/internal/helper/PreciseAlarmManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 p1, 0x2710

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method
