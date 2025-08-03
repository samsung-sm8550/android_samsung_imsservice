.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DialogAdapter.java"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 214
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 215
    const-string p0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmTelephony(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmDialog(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result p2

    const-string/jumbo v0, "onReceive: HANDLE_SIM_STATE_ABSENT"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$Receiver;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 p1, 0x6

    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmDialog(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
