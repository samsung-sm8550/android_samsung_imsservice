.class Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;
.super Ljava/lang/Object;
.source "ImsDiagnosticMonitorNotifier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 37
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    iget-object p1, p1, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onServiceConnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    .line 39
    sget-object p1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    .line 41
    invoke-static {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->-$$Nest$msendPendingObject(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    iget-object p1, p1, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onServiceDisconnected()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p1, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 48
    invoke-static {p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->-$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->disconnectService()V

    return-void
.end method
