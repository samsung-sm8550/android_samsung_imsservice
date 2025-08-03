.class Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;
.super Landroid/os/Handler;
.source "CmcAccountManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 834
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 867
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$fgetmHotspotStrategy(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->updateHotspotStateToStack()V

    goto :goto_0

    .line 864
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$fgetmHotspotStrategy(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;->onHotspotStateChanged()V

    goto :goto_0

    .line 861
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/cmc/CmcSAError;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V

    goto :goto_0

    .line 858
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAError;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->REQUEST_TIMER_EXPIRED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAError;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V

    goto :goto_0

    .line 855
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onCmcDeviceChanged()V

    goto :goto_0

    .line 851
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monStopCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_0

    .line 848
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monStartCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    goto :goto_0

    .line 842
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$monSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;)V

    goto :goto_0

    .line 845
    :pswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;->this$0:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->-$$Nest$mstartSAServiceInternal(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
