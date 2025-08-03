.class public Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;
.super Lcom/sec/internal/helper/StateMachine;
.source "McsNotificationChannelScheduler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# static fields
.field private static final INTENT_ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME:Ljava/lang/String; = "com.samsung.ims.mcs.ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME"

.field private static final INTENT_ACTION_RETRY_FAILED_API:Ljava/lang/String; = "com.samsung.ims.mcs.ACTION_RETRY_FAILED_API"


# instance fields
.field private final NO_RETRY_AFTER_VALUE:I

.field private TAG:Ljava/lang/String;

.field private mChannelCheckingState:Lcom/sec/internal/helper/State;

.field private mChannelCreatedState:Lcom/sec/internal/helper/State;

.field private mChannelCreatingState:Lcom/sec/internal/helper/State;

.field private mChannelLifeTimeExpiry:Landroid/app/PendingIntent;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/sec/internal/helper/State;

.field private mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private mLine:Ljava/lang/String;

.field private mNetApiController:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

.field private mPaused:Z

.field private mPhoneId:I

.field private mRetryIntent:Landroid/app/PendingIntent;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelCheckingState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelCreatedState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCreatedState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelCreatingState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCreatingState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmINetAPIEventListener(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLine(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mLine:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetApiController(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mNetApiController:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPaused:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPaused(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPaused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misAlreadyInRetry(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->isAlreadyInRetry(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monApiTreatAsSucceed(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveChannelLifeTimeEvent(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->removeChannelLifeTimeEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveRetryEvent(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->removeRetryEvent()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McsNotificationChannelScheduler["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 42
    const-class p1, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    .line 46
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$DefaultState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 47
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCheckingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    .line 48
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCreatingState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCreatingState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCreatingState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCreatingState:Lcom/sec/internal/helper/State;

    .line 49
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCreatedState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCreatedState;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$ChannelCreatedState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCreatedState:Lcom/sec/internal/helper/State;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mNetApiController:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 52
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPaused:Z

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->NO_RETRY_AFTER_VALUE:I

    .line 65
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 68
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mNetApiController:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 69
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 70
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 71
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 72
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCreatingState:Lcom/sec/internal/helper/State;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCheckingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 73
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCreatedState:Lcom/sec/internal/helper/State;

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelCreatingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 74
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 75
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    .line 76
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mLine:Ljava/lang/String;

    .line 77
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 78
    const-string p2, "com.samsung.ims.mcs.ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string p2, "com.samsung.ims.mcs.ACTION_RETRY_FAILED_API"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;)V

    const/4 p4, 0x4

    invoke-virtual {p2, p3, p1, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 108
    invoke-super {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private gotoHandlerEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method private gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotoHandlerEventOnFailure isRetryEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isRetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    const/4 v1, -0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    :cond_0
    return-void
.end method

.method private handleChannelCreationRecovery(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x4

    if-lt p3, v0, :cond_0

    const/16 v1, 0x9

    if-gt p3, v1, :cond_0

    sub-int/2addr p3, v0

    int-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 246
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    .line 247
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exponential backoff retry for create NC delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p3, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->updateDelayRetryRequest(Ljava/lang/String;J)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    const-string v0, "handleChannelCreationRecovery: max retry limit of create NC reached"

    invoke-static {p2, p3, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    :goto_0
    return-void
.end method

.method private isAlreadyInRetry(Ljava/lang/String;)Z
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->isAlreadyInRetry(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private declared-synchronized onApiTreatAsSucceed(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 3

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onApiTreatAsSucceed: mOnApiSucceedOnceListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 362
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    const-string/jumbo v1, "onApiTreatAsSucceed"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;->onMoveOn()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 366
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private removeChannelLifeTimeEvent()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChannelLifeTimeEvent mChannelLifeTimeExpiry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelLifeTimeExpiry:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelLifeTimeExpiry:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelLifeTimeExpiry:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method private removeRetryEvent()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mRetryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 341
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mRetryIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method


# virtual methods
.method InitEvent(Landroid/os/Message;)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 0

    .line 112
    iget p0, p1, Landroid/os/Message;->what:I

    invoke-static {p0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    :goto_0
    return-object p0
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->gotoHandlerEventOnFailure(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 4

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFailedCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " errorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->checkAndIncreaseRetry(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p2

    .line 196
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    if-eq v1, p2, :cond_2

    const/4 p2, 0x2

    if-eq v1, p2, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    .line 209
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onFailed Call retry count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 211
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->handleChannelCreationRecovery(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-wide/32 p1, 0xea60

    .line 206
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->updateDelayRetryRequest(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x7530

    .line 203
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->updateDelayRetryRequest(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    const-wide/16 p1, 0x2710

    .line 200
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->updateDelayRetryRequest(Ljava/lang/String;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 5

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 235
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OnOverRequest : request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  retryAfter "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    if-le v1, p2, :cond_0

    .line 237
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    const-string/jumbo v0, "onOverRequest: max retry limit of create NC reached"

    invoke-static {p2, p3, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void

    :cond_0
    int-to-long p1, p3

    .line 241
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->updateDelayRetryRequest(Ljava/lang/String;J)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 123
    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    if-eqz p1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->removeChannelLifeTimeEvent()V

    :cond_0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 118
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 1

    .line 142
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->removeChannelLifeTimeEvent()V

    .line 145
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->API_SUCCEED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    .line 146
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->gotoHandlerEvent(ILjava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 276
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 277
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public resetChannelData()V
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetChannelData"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    .line 694
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 696
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 697
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPaused:Z

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 284
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 353
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setOnApiSucceedOnceListener: listener is null"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 355
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mOnApiSucceedOnceListener:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public start()V
    .locals 1

    .line 270
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 271
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->START:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 290
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 291
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->STOP:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public update(I)Z
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 308
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 309
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelLifeTimeExpiry:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelLifeTimeExpiry:Landroid/app/PendingIntent;

    .line 313
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.ims.mcs.ACTION_CHECK_NOTIFICATION_CHANNEL_LIFETIME"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v0, "phoneId"

    iget v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    const/high16 v1, 0x2000000

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mChannelLifeTimeExpiry:Landroid/app/PendingIntent;

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;JZ)V

    goto :goto_0

    .line 319
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 322
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDelayRetryRequest(Ljava/lang/String;J)V
    .locals 3

    .line 329
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->removeRetryEvent()V

    .line 330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ims.mcs.ACTION_RETRY_FAILED_API"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string/jumbo v1, "phoneId"

    iget v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v1, "apiName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    const/high16 v1, 0x2000000

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mRetryIntent:Landroid/app/PendingIntent;

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;JZ)V

    return-void
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 302
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method
