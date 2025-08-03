.class Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;
.super Ljava/lang/Object;
.source "DialogAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iput-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 626
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 627
    invoke-static {}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)I

    move-result p2

    const-string v0, "PositiveButton"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    iget-object p2, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->val$input:Landroid/widget/EditText;

    .line 629
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {v0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmCountryCode(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/helper/ImsCallUtil;->validatePhoneNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmMsisdn(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmYesNo(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 631
    iget-object p1, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fputmSkip(Lcom/sec/internal/ims/config/adapters/DialogAdapter;Z)V

    .line 632
    iget-object p0, p0, Lcom/sec/internal/ims/config/adapters/DialogAdapter$6;->this$0:Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-static {p0}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;->-$$Nest$fgetmSemaphore(Lcom/sec/internal/ims/config/adapters/DialogAdapter;)Ljava/util/concurrent/Semaphore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
