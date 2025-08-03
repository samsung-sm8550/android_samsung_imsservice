.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;
.super Ljava/lang/Object;
.source "McsGetNotificationChannelInfo.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: decryptedData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)I

    move-result v1

    const-string v2, "decryptedData is empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 67
    :try_start_0
    const-class v1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    .line 72
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;

    if-nez p1, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->resourceURL:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onComplete: notificationChannel resUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;-><init>()V

    .line 80
    iput-object p1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 82
    const-string p1, "NORMAL"

    iput-object p1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->deleteReason:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-interface {p1, p0, v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    .line 73
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onComplete: there is no notificationChannel"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onComplete: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x194

    if-ne v0, v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 92
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_6
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onFail: exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)I

    move-result v0

    const-string/jumbo v1, "onFail: IOException"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method
