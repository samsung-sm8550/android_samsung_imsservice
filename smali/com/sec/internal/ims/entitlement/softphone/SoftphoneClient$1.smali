.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;
.super Landroid/os/Handler;
.source "SoftphoneClient.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Looper;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 205
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 206
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget p1, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 209
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 210
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 212
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {p1, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleTryRegisterRequest()V

    :cond_1
    :goto_0
    return-void
.end method
