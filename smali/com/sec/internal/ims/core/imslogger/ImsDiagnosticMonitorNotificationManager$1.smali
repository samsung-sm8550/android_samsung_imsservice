.class Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsDiagnosticMonitorNotificationManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received Intent : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImsDiagMonitorNotiMgr"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string p2, "com.googlecode.android_scripting.action.STTS_EVENT_READY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->-$$Nest$fgetmExternalSupporter(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    move-result-object p1

    const-string p2, "com.googlecode.android_scripting"

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->checkPackageStatus(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    goto :goto_0

    .line 103
    :cond_0
    const-string p2, "com.sec.imslogger"

    .line 107
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->-$$Nest$fgetmExternalSupporter(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->initializeDmEvent(Ljava/lang/String;)V

    return-void
.end method
