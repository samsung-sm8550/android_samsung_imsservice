.class Lcom/sec/internal/ims/core/sim/SimManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    .line 189
    const-string v0, "com.google.android.gts.telephony"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "LOADED"

    const-string v0, "SimManager"

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 195
    const-string p1, "ADD GTS package, SendMessage SIM LOAD again"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/sim/SimManager;->setGtsAppInstalled(Z)V

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 198
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 202
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/sim/SimManager;->getGtsAppInstalled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 203
    const-string p1, "Remove GTS package, SendMessage SIM LOAD again"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/sim/SimManager;->setGtsAppInstalled(Z)V

    .line 205
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$2;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    sget-object p1, Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;->UNKNOWN:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager;->mSimState:Lcom/sec/internal/constants/ims/core/SimConstants$SIM_STATE;

    .line 206
    invoke-virtual {p0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method
