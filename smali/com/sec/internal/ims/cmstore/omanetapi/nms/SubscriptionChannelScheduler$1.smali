.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionChannelScheduler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo p1, "phoneId"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 80
    const-string p1, "com.samsung.ims.mcs.ACTION_RETRY_SUBSCRIPTION_FAILED_API"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    const-string p1, "apiName"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryParam(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getMrequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
