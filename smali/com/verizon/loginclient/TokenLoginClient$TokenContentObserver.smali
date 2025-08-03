.class Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;
.super Landroid/database/ContentObserver;
.source "TokenLoginClient.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    .line 693
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 694
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mHandler:Landroid/os/Handler;

    .line 695
    iput-object p3, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mQueryUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 700
    iget-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {p1}, Lcom/verizon/loginclient/TokenLoginClient;->access$1000(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 703
    iget-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 704
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 705
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mQueryUri:Landroid/net/Uri;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
