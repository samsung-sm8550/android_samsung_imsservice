.class public abstract Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;
.super Ljava/lang/Object;
.source "ImsDiagnosticMonitorNotifier.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;


# static fields
.field private static final MAX_PENDING_QUEUE:I = 0xa


# instance fields
.field protected LOG_TAG:Ljava/lang/String;

.field protected mAllowPending:Z

.field protected final mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected mDmBinder:Landroid/os/IBinder;

.field protected mDmSreviceName:Ljava/lang/String;

.field protected mIsBound:Z

.field protected mPackageName:Ljava/lang/String;

.field protected mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

.field private mPendingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendPendingObject(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->sendPendingObject()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    .line 33
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mConnection:Landroid/content/ServiceConnection;

    .line 54
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmSreviceName:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mAllowPending:Z

    return-void
.end method

.method private addPendingObject(Ljava/lang/Object;)V
    .locals 3

    .line 121
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mAllowPending:Z

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPendingObject size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 126
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private sendDmNotification(Ljava/lang/Object;)Z
    .locals 5

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 148
    :try_start_0
    instance-of v3, p1, Landroid/os/Bundle;

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    .line 158
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    iput-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    .line 160
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return v2

    .line 162
    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 163
    throw p0
.end method

.method private sendPendingObject()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mAllowPending:Z

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->send(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPendingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "succeed send pending requests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected allowedDmEvent()Z
    .locals 1

    .line 88
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isDiagnosticsAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isKeyStringActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->disconnectService()V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected checkBinderAvailable()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkPackageStatus()Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 4

    .line 61
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmSreviceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    .line 74
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPackageStatus() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPackageStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    return-object p0
.end method

.method protected connectService()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v1, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmSreviceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method protected disconnectService()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->checkBinderAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mDmBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mIsBound:Z

    :cond_0
    return-void
.end method

.method public initializeDmEvent()V
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->allowedDmEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->connectService()V

    :cond_0
    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->allowedDmEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->EMERGENCY_MODE:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send() with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->mPackageStatus:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_CONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v2, :cond_1

    .line 179
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->sendDmNotification(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 180
    :cond_1
    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->DM_DISCONNECTED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v0, v2, :cond_2

    .line 181
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotifier;->addPendingObject(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1
.end method
