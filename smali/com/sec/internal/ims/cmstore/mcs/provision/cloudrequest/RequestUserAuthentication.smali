.class public Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;
.super Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;
.source "RequestUserAuthentication.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mDeviceInfo:Lorg/json/JSONObject;

.field private final mMobileIp:Ljava/lang/String;

.field private final mMsisdn:Ljava/lang/String;

.field private final mOtpCode:Ljava/lang/String;

.field private final mPhoneId:I

.field private mRequestType:Ljava/lang/String;

.field private transient mWorkFlow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkFlow(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mWorkFlow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 27
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->TAG:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mMsisdn:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mDeviceInfo:Lorg/json/JSONObject;

    .line 44
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mOtpCode:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mRequestType:Ljava/lang/String;

    .line 46
    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mMobileIp:Ljava/lang/String;

    .line 47
    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mWorkFlow:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    .line 48
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 49
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mPhoneId:I

    .line 50
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 51
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->updateUrl()V

    .line 52
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 53
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBasic()Ljava/lang/String;

    move-result-object p2

    .line 52
    const-string p3, "application/json"

    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->setCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->makePostData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 56
    new-instance p2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;

    invoke-direct {p2, p0, p9, p8, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;Ljava/lang/String;Ljava/lang/Boolean;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method private makePostData()Ljava/lang/String;
    .locals 6

    .line 147
    const-string v0, ""

    const-string v1, "mobile_ip"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string/jumbo v3, "type"

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mRequestType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v3, "id"

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mRequestType:Ljava/lang/String;

    const-string/jumbo v4, "otp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    const-string/jumbo v1, "password"

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mOtpCode:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mRequestType:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mMobileIp:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_1
    :goto_0
    const-string v1, "device_info"

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mDeviceInfo:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\\"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 160
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestUserAuthentication;->mPhoneId:I

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private updateUrl()V
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisAuthRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oapi/v1/auth/user"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method
