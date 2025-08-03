.class public Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "VSimClient.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/softphone/VSimClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". current state is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient$DefaultState;->this$0:Lcom/sec/internal/ims/entitlement/softphone/VSimClient;

    .line 44
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
