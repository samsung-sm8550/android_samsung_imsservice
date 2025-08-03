.class public Lcom/sec/internal/ims/config/PowerController$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerController.java"


# instance fields
.field public final ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mIntentFilterAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/ims/config/PowerController;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/PowerController;)V
    .locals 2

    .line 150
    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/internal/ims/config/PowerController$Receiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".SLEEP_ALARM_EXPIRED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 148
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilterAction:Ljava/util/List;

    .line 151
    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Receiver"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->ACTION_SLEEP_ALARM_EXPIRED:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    invoke-static {p1}, Lcom/sec/internal/ims/config/PowerController;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/config/PowerController;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "received alarm expired. acquire wake lock"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController$Receiver;->this$0:Lcom/sec/internal/ims/config/PowerController;

    iget-object p0, p0, Lcom/sec/internal/ims/config/PowerController;->mState:Lcom/sec/internal/ims/config/PowerController$State;

    invoke-interface {p0}, Lcom/sec/internal/ims/config/PowerController$State;->lock()V

    :cond_0
    return-void
.end method
