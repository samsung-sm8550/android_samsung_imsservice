.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 559
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result v1

    const-string/jumbo v2, "onCancel"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmTcPopupFlag(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 561
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 562
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmSupportNotiBar(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$4;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$munregisterReceiverForTcPopup(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)V

    :cond_0
    return-void
.end method
