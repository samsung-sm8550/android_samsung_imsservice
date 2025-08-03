.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

.field final synthetic val$reject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->val$reject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 521
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.rcs.framework.dialogadapter.action.CANCEL_TC_NOTIFICATION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result v0

    const-string/jumbo v1, "phone_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 525
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmSupportNotiBar(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 526
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$munregisterReceiverForTcPopup(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    .line 528
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result p2

    const-string v0, "PositiveButton"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmAcceptReject(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 530
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->val$reject:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$mshallRcsRegisterByDefault(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 531
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$2;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmSemaphore(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    return-void
.end method
