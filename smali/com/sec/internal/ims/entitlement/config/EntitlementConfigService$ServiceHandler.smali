.class final Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;
.super Landroid/os/Handler;
.source "EntitlementConfigService.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Looper;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    .line 107
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 112
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->actionTriggerForDeletingDB()V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$mupdateEntitlementUrl(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$mretriveAkaToken(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$mforceConfigUpdate(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V

    goto :goto_0

    .line 121
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$monDeviceReady(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;I)V

    goto :goto_0

    .line 118
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$minitEntitlementConfigService(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService$ServiceHandler;->this$0:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;->-$$Nest$monEventSimReady(Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6a
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
