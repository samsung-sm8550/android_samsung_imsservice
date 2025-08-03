.class public Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;
.super Lcom/sec/internal/ims/cmstore/appapi/BaseAppAPIRequest;
.source "McsAppRequest.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private callBackListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallBackListener(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->callBackListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 21
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/cmstore/appapi/BaseAppAPIRequest;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;)V

    .line 17
    const-class v0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->TAG:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->callBackListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 25
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McsPostAppRequest auth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 28
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;->TAG:Ljava/lang/String;

    const-string v0, "auth is empty, do not process"

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/appapi/BaseAppAPIRequest;->initCommonRequestHeaders(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p3, p5}, Lcom/sec/internal/ims/cmstore/appapi/BaseAppAPIRequest;->initMethodAndBody(Ljava/lang/String;I)V

    .line 33
    new-instance p1, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;

    invoke-direct {p1, p0, p5, p4}, Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest$1;-><init>(Lcom/sec/internal/ims/cmstore/appapi/McsAppRequest;ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method
