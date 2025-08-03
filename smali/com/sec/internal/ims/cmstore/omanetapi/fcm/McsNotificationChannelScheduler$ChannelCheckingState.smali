.class Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;
.super Lcom/sec/internal/helper/State;
.source "McsNotificationChannelScheduler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChannelCheckingState: enter"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ChannelCheckingState: exit"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 528
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p1

    .line 529
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChannelCheckingState: processMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$OMASyncEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 553
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChannelCheckingState: processMessage: unknown event"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_2

    .line 538
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getFcmRegistrationToken()Ljava/lang/String;

    move-result-object p1

    .line 539
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)I

    move-result v1

    const-string v2, "fcm registration token is empty wait for token"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmNetApiController(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$misAlreadyInRetry(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$mremoveRetryEvent(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V

    .line 546
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-direct {v1, v2, v2, p1, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmChannelCreatingState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 532
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$mremoveChannelLifeTimeEvent(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->-$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
