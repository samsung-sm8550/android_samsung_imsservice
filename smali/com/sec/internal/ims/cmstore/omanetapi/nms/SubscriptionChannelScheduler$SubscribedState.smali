.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;
.super Lcom/sec/internal/helper/State;
.source "SubscriptionChannelScheduler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    const-string v0, "SubscribedState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    const-string v0, "SubscribedState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10

    .line 274
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscribed state processMessage:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$3;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 315
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {p1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fputisDelaySubscriptionUpdateInProgress(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Z)V

    goto/16 :goto_0

    .line 296
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    .line 297
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    goto/16 :goto_0

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 305
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v4

    .line 307
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v4

    .line 308
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v9, v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 306
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 309
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " UPDATE_SUBSCRIPTION_CHANNEL_DELAY restartToken "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->getInstance(I)Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/McsNotificationListContainer;->clear(I)V

    .line 311
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fputisDelaySubscriptionUpdateInProgress(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;Z)V

    goto/16 :goto_0

    .line 288
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "large data polling channelUrl:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v4, v2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, v2, v2, p1, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 292
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 293
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mLargePollingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 280
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 281
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getRestartToken()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->-$$Nest$fgetmReSyncParam(Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;)Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->getChannelResURL()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v9, v8, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageUpdateSubscriptionChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 282
    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    :cond_2
    :goto_0
    :pswitch_5
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler$SubscribedState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscribedState, Handled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
