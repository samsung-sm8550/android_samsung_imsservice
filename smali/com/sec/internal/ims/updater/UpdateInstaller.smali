.class public Lcom/sec/internal/ims/updater/UpdateInstaller;
.super Ljava/lang/Object;
.source "UpdateInstaller.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mInstalling:Z

.field mPackageInstaller:Landroid/content/pm/PackageInstaller;

.field private mSessionId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "UpdateInstaller"

    iput-object v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mSessionId:I

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    .line 36
    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private install(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-static {p2}, Lcom/sec/internal/ims/updater/util/StubUtil;->newInputStream(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p0

    .line 77
    :try_start_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/updater/util/StubUtil;->openWrite(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v0, 0x10000

    .line 79
    :try_start_1
    new-array v0, v0, [B

    .line 80
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 83
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 84
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 85
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void

    :goto_2
    if-eqz p2, :cond_2

    .line 77
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz p0, :cond_3

    .line 76
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    throw p1
.end method


# virtual methods
.method public abandonActiveSession()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateInstaller;->hasActiveSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    iget p0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mSessionId:I

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abandon failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UpdateInstaller"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public hasActiveSession()Z
    .locals 1

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller;->getMySessions()Ljava/util/List;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/updater/UpdateInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/updater/UpdateInstaller$$ExternalSyntheticLambda0;-><init>()V

    .line 96
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized install(Ljava/lang/String;)Z
    .locals 5

    monitor-enter p0

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mContext:Landroid/content/Context;

    const-string v1, "TYPE"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;I)V

    .line 43
    iget-boolean v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mInstalling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    const-string p1, "UpdateInstaller"

    const-string v0, "Under installing already.. return.."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 48
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    const-string p1, "UpdateInstaller"

    const-string v0, "installPackage: APK file not found !!!!"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    .line 54
    :try_start_2
    iput-boolean v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mInstalling:Z

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/updater/util/StubUtil;->createSession(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mSessionId:I

    if-gtz v0, :cond_2

    .line 57
    iput-boolean v1, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mInstalling:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    monitor-exit p0

    return v1

    .line 61
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/updater/util/StubUtil;->openSession(Landroid/content/Context;I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/updater/UpdateInstaller;->install(Landroid/content/pm/PackageInstaller$Session;Ljava/io/File;)V

    .line 63
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mSessionId:I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.imsservice.install_session_state_changed"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x4000000

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 66
    :try_start_5
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_3

    .line 61
    :try_start_6
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 67
    :goto_1
    :try_start_8
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mContext:Landroid/content/Context;

    const-string v0, "IVER"

    invoke-static {p1}, Lcom/sec/internal/ims/updater/util/StubUtil;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;I)V

    .line 69
    iput-boolean v1, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mInstalling:Z

    .line 72
    :goto_2
    iget-boolean p1, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mInstalling:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return p1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onInstallCompleted()V
    .locals 2

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onInstallCompleted"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mInstalling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetActiveSession()V
    .locals 1

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Lcom/sec/internal/ims/updater/UpdateInstaller;->mSessionId:I

    return-void
.end method
