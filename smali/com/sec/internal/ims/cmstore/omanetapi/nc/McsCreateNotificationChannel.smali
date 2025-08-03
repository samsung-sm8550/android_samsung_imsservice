.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;
.super Lcom/sec/internal/omanetapi/nc/NotificationChannels;
.source "McsCreateNotificationChannel.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mControllerInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private final mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field private final mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final mPhoneId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllerInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mControllerInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mPhoneId:I

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 3

    .line 41
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-direct {p0, v0, v1, v2, p4}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 31
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->TAG:Ljava/lang/String;

    .line 43
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mPhoneId:I

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->TAG:Ljava/lang/String;

    .line 45
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mContext:Landroid/content/Context;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 47
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mControllerInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 48
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 50
    new-instance p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;

    invoke-direct {p1}, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;-><init>()V

    .line 51
    const-string p2, "cms_channel_type"

    const-string v1, "NativeChannel"

    invoke-static {p4, v0, p2, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getStringGlobalSettings(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->channelType:Ljava/lang/String;

    .line 53
    new-instance p2, Lcom/sec/internal/omanetapi/nc/data/McsChannelData;

    invoke-direct {p2}, Lcom/sec/internal/omanetapi/nc/data/McsChannelData;-><init>()V

    .line 54
    const-string v1, "cms_channel_sub_type"

    const-string v2, "FCM"

    invoke-static {p4, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getStringGlobalSettings(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/internal/omanetapi/nc/data/McsChannelData;->channelSubType:Ljava/lang/String;

    .line 55
    const-string v1, "cms_channel_sub_type_version"

    const-string v2, "1.0"

    invoke-static {p4, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getStringGlobalSettings(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/internal/omanetapi/nc/data/McsChannelData;->channelSubTypeVersion:Ljava/lang/String;

    .line 57
    const-string v1, "cms_max_notifications"

    const/4 v2, 0x3

    invoke-static {p4, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v1

    iput v1, p2, Lcom/sec/internal/omanetapi/nc/data/McsChannelData;->maxNotifications:I

    .line 58
    iput-object p3, p2, Lcom/sec/internal/omanetapi/nc/data/McsChannelData;->registrationToken:Ljava/lang/String;

    .line 60
    new-instance p3, Lcom/sec/internal/omanetapi/nc/data/McsLargeDataPolling;

    invoke-direct {p3}, Lcom/sec/internal/omanetapi/nc/data/McsLargeDataPolling;-><init>()V

    .line 61
    const-string v1, "cms_max_polling_notifications"

    const/16 v2, 0x14

    invoke-static {p4, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v1

    iput v1, p3, Lcom/sec/internal/omanetapi/nc/data/McsLargeDataPolling;->maxPollingNotifications:I

    .line 63
    const-string v1, "cms_polling_enabled"

    const/4 v2, 0x1

    invoke-static {p4, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getBooleanGlobalSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p3, Lcom/sec/internal/omanetapi/nc/data/McsLargeDataPolling;->pollingEnabled:Z

    .line 64
    iput-object p3, p2, Lcom/sec/internal/omanetapi/nc/data/McsChannelData;->largeDataPolling:Lcom/sec/internal/omanetapi/nc/data/McsLargeDataPolling;

    .line 66
    iput-object p2, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->channelData:Lcom/sec/internal/omanetapi/nc/data/McsChannelData;

    .line 67
    const-string p2, "cms_channel_lifetime"

    const p3, 0x15180

    invoke-static {p4, v0, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->channelLifetime:I

    .line 68
    invoke-virtual {p1}, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->toString()Ljava/lang/String;

    .line 70
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 71
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p2

    .line 70
    const-string p3, "application/json"

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initMcsCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/omanetapi/nc/NotificationChannels;->initPostRequest(Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;Z)V

    .line 74
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method
