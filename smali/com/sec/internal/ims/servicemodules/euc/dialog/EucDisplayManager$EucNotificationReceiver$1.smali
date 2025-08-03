.class Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;
.super Ljava/lang/Object;
.source "EucDisplayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->val$intent:Landroid/content/Intent;

    .line 106
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "euc_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->unmarshall([B)Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmNotificationManager(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmDialogs(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver$1;->this$1:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager$EucNotificationReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;->-$$Nest$fgetmDialogs(Lcom/sec/internal/ims/servicemodules/euc/dialog/EucDisplayManager;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
