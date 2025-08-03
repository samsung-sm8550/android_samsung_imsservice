.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;
.super Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannelLifetime;
.source "McsUpdateNotificationChannelLifetime.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mControllerInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private final mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field private final mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final mPhoneId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControllerInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mControllerInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mPhoneId:I

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 7

    .line 39
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerRoot()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    move-object v6, p4

    .line 39
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannelLifetime;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 29
    const-class p3, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->TAG:Ljava/lang/String;

    .line 41
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p3

    iput p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mPhoneId:I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->TAG:Ljava/lang/String;

    .line 43
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mContext:Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 45
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mControllerInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 46
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 48
    new-instance p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;

    invoke-direct {p1}, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;-><init>()V

    .line 49
    const-string v0, "cms_channel_lifetime"

    const v1, 0x15180

    invoke-static {p4, p3, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p3

    iput p3, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;->channelLifetime:I

    .line 51
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notificationChannelLifetime.channelLifetime: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;->channelLifetime:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p3, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 54
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p3

    .line 53
    const-string p4, "application/json"

    invoke-virtual {p0, p4, p3}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initMcsCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 55
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/omanetapi/nc/IndividualNotificationChannel;->initPutRequest(Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;Z)V

    .line 57
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method
