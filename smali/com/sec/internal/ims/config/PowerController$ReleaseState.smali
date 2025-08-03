.class Lcom/sec/internal/ims/config/PowerController$ReleaseState;
.super Ljava/lang/Object;
.source "PowerController.java"

# interfaces
.implements Lcom/sec/internal/ims/config/PowerController$State;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/PowerController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/PowerController;)V
    .locals 1

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ReleaseState"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetmWakeLock(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 80
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetmWakeLock(Lcom/sec/internal/ims/config/PowerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized lock()V
    .locals 2

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    new-instance v1, Lcom/sec/internal/ims/config/PowerController$LockState;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/PowerController$LockState;-><init>(Lcom/sec/internal/ims/config/PowerController;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "already released"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sleep(J)V
    .locals 3

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {v0}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ sleep start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 102
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/PowerController$ReleaseState;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "--- sleep end"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
