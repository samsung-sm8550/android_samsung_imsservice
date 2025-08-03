.class Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "McsNotificationChannelScheduler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p1

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

    .line 84
    const-string/jumbo p1, "phoneId"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "com.samsung.ims.mcs.ACTION_RETRY_FAILED_API"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p2, "com.samsung.ims.mcs.ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "onReceive: INTENT_ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",NC:LT_EX"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, -0x6ffdfffa

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 93
    :cond_1
    const-string p1, "apiName"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryParam(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getMrequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_FAILED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
