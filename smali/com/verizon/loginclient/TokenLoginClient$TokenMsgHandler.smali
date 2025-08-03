.class Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;
.super Landroid/os/Handler;
.source "TokenLoginClient.java"


# instance fields
.field private final mParent:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;)V
    .locals 0

    .line 660
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 661
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->mParent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$1;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;-><init>(Landroid/os/Looper;Lcom/verizon/loginclient/TokenLoginClient;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 667
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;->mParent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/verizon/loginclient/TokenLoginClient;

    if-nez p0, :cond_0

    return-void

    .line 672
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 673
    invoke-static {p0}, Lcom/verizon/loginclient/TokenLoginClient;->access$700(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 674
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 675
    invoke-static {p0}, Lcom/verizon/loginclient/TokenLoginClient;->access$800(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/verizon/loginclient/TokenLoginClient;->access$900(Lcom/verizon/loginclient/TokenLoginClient;Landroid/net/Uri;Lcom/verizon/loginclient/TokenLoginClient$SelectParameters;Z)Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    .line 678
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 679
    invoke-static {p0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1000(Lcom/verizon/loginclient/TokenLoginClient;)V

    .line 680
    new-instance p1, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;

    sget-object v0, Lcom/verizon/loginclient/TokenLoginClient$ResultCode;->timeout:Lcom/verizon/loginclient/TokenLoginClient$ResultCode;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;-><init>(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;Ljava/lang/Throwable;Lcom/verizon/loginclient/TokenLoginClient$1;)V

    invoke-static {p0, p1}, Lcom/verizon/loginclient/TokenLoginClient;->access$300(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryResult;)V

    :cond_2
    return-void
.end method
