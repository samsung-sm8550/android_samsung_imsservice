.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;
.super Lcom/sec/internal/omanetapi/nc/NotificationChannels;
.source "CloudMessageCreateNotificationChannels.java"


# static fields
.field private static final serialVersionUID:J = 0x2dcbb94549cdb780L


# instance fields
.field private TAG:Ljava/lang/String;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 3

    .line 41
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNcHost()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-direct {p0, v0, v1, v2, p4}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 35
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->TAG:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->TAG:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 50
    new-instance p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;

    invoke-direct {p2}, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;-><init>()V

    .line 51
    const-string p4, ""

    iput-object p4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->clientCorrelator:Ljava/lang/String;

    .line 52
    iput-object p4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->applicationTag:Ljava/lang/String;

    const p4, 0x15180

    .line 53
    iput p4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelLifetime:I

    .line 55
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p4

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p4, :cond_0

    .line 56
    sget-object p4, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->NativeChannel:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    iput-object p4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelType:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    .line 57
    new-instance p4, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;

    invoke-direct {p4}, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;-><init>()V

    .line 58
    const-string v2, "GCM"

    iput-object v2, p4, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->channelSubType:Ljava/lang/String;

    .line 59
    const-string v2, "1.0"

    iput-object v2, p4, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->channelSubTypeVersion:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getGcmTokenFromVsim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->registrationToken:Ljava/lang/String;

    .line 62
    iput-object v1, p4, Lcom/sec/internal/omanetapi/nc/data/GcmChannelData;->maxNotifications:Ljava/lang/Integer;

    .line 63
    iput-object p4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelData:Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    goto :goto_0

    .line 65
    :cond_0
    sget-object p4, Lcom/sec/internal/omanetapi/nc/data/ChannelType;->LongPolling:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    iput-object p4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelType:Lcom/sec/internal/omanetapi/nc/data/ChannelType;

    .line 66
    new-instance p4, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;

    invoke-direct {p4}, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;-><init>()V

    .line 67
    iput-object v1, p4, Lcom/sec/internal/omanetapi/nc/data/LongPollingData;->maxNotifications:Ljava/lang/Integer;

    .line 68
    iput-object p4, p2, Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;->channelData:Lcom/sec/internal/omanetapi/nc/data/ChannelData;

    .line 71
    :goto_0
    iget-object p4, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p4

    .line 72
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1, p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 74
    iget-object v1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->initPostRequest(Lcom/sec/internal/omanetapi/nc/data/NotificationChannel;Z)V

    .line 77
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;

    invoke-direct {p2, p0, p0, p3, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ZLcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method


# virtual methods
.method public getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 2

    .line 170
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    return-object p1
.end method
