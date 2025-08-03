.class Lcom/sec/internal/helper/os/ImsFrameworkState$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsFrameworkState.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/os/ImsFrameworkState;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 42
    const-string p1, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    const-string p1, "ImsFrameworkState"

    const-string p2, "ImsService is ready."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$sfgetMUTEX()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 p2, 0x1

    .line 46
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$sfputsIsFwReady(Z)V

    .line 47
    iget-object p2, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-static {p2}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$fgetmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-static {v0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$fgetmFwStatusReceiver(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    iget-object p2, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$fputmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;Landroid/content/Context;)V

    .line 50
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState$1;->this$0:Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-static {p0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->-$$Nest$mnotifyFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState;)V

    .line 51
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
