.class Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;
.super Landroid/telephony/PhoneStateListener;
.source "AMBSClient.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MWI is changed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 715
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->vvmNormalSyncRequest()V

    .line 716
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetmJanskyTranslation(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/JanskyIntentTranslation;->onNotifyVVMAppMWIReceived()V

    goto :goto_0

    .line 718
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cms profile is not enabled or mwi is false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
