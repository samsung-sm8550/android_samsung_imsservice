.class public Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;
.super Lcom/sec/internal/omanetapi/nc/NotificationList;
.source "McsCreateLargeDataPolling.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final transient mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private final mPhoneId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mPhoneId:I

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 40
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/omanetapi/nc/NotificationList;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 30
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->TAG:Ljava/lang/String;

    .line 43
    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p4

    iput p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mPhoneId:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "]"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->TAG:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 47
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 48
    iget-object p1, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 49
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p1

    .line 48
    const-string p2, "application/json"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->initMcsCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/omanetapi/nc/NotificationList;->initPostRequest(Lcom/sec/internal/omanetapi/nc/data/LongPollingRequestParameters;Z)V

    .line 52
    new-instance p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;

    invoke-direct {p1, p0, p0, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateLargeDataPolling;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method
