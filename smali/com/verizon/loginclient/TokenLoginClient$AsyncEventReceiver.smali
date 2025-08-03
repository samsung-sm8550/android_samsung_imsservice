.class Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"

# interfaces
.implements Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;


# instance fields
.field private final mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

.field final synthetic this$0:Lcom/verizon/loginclient/TokenLoginClient;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient;Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 958
    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    return-void

    .line 957
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client receiver cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$1300(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;
    .locals 0

    .line 952
    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->mClientReceiver:Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    return-object p0
.end method


# virtual methods
.method public onErrorResult(Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1400(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    move-result-object v0

    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$2;-><init>(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/TokenLoginClient$ResultCode;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->this$0:Lcom/verizon/loginclient/TokenLoginClient;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient;->access$1400(Lcom/verizon/loginclient/TokenLoginClient;)Lcom/verizon/loginclient/TokenLoginClient$TokenMsgHandler;

    move-result-object v0

    new-instance v1, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;-><init>(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
