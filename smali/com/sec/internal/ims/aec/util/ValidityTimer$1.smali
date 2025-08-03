.class Lcom/sec/internal/ims/aec/util/ValidityTimer$1;
.super Landroid/content/BroadcastReceiver;
.source "ValidityTimer.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/aec/util/ValidityTimer;Landroid/os/Handler;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iput-object p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionVersionValidityTimeout()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    invoke-static {}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-static {p2}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/ValidityTimer;)I

    move-result p2

    const-string/jumbo v0, "version validity timer is expired"

    invoke-static {p1, v0, p2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->val$handler:Landroid/os/Handler;

    const/16 p1, 0x3f2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionTokenValidityTimeout()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    invoke-static {}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-static {p2}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/ValidityTimer;)I

    move-result p2

    const-string/jumbo v0, "token validity timer is expired"

    invoke-static {p1, v0, p2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->val$handler:Landroid/os/Handler;

    const/16 p1, 0x3f3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->getActionPollIntervalTimer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-static {p2}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/ValidityTimer;)I

    move-result p2

    const-string/jumbo v0, "poll interval timer is expired"

    invoke-static {p1, v0, p2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->this$0:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopPollIntervalTimer()V

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/ValidityTimer$1;->val$handler:Landroid/os/Handler;

    const/16 p1, 0x3f5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method
