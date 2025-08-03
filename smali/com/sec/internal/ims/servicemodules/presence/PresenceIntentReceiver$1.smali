.class Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "PresenceIntentReceiver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onReceive: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PresenceIntentReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo p0, "sim_slot_id"

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 39
    const-string p1, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->-$$Nest$sfgetmPresence()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->-$$Nest$sfgetmPresence()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 41
    :cond_0
    const-string p1, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->-$$Nest$sfgetmPresence()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->-$$Nest$sfgetmPresence()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0xe

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 43
    :cond_1
    const-string p1, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->-$$Nest$sfgetmPresence()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->-$$Nest$sfgetmPresence()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x12

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
