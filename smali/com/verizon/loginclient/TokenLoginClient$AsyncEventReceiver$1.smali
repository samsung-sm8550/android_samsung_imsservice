.class Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;
.super Ljava/lang/Object;
.source "TokenLoginClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

.field final synthetic val$result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;


# direct methods
.method constructor <init>(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    iput-object p2, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->val$result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->this$1:Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;

    invoke-static {v0}, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;->access$1300(Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver;)Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;

    move-result-object v0

    iget-object p0, p0, Lcom/verizon/loginclient/TokenLoginClient$AsyncEventReceiver$1;->val$result:Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;

    invoke-interface {v0, p0}, Lcom/verizon/loginclient/TokenLoginClient$ILoginClientReceiver;->onTokenResult(Lcom/verizon/loginclient/TokenLoginClient$TokenQueryData;)V

    return-void
.end method
