.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;
.super Ljava/lang/Object;
.source "McsGetNotificationChannelListInfo.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 9

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onComplete: decryptedData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)I

    move-result v3

    const-string v4, "decryptedData is empty"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 65
    :try_start_0
    const-class v3, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_6

    .line 70
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannelList:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelList;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelList;->notificationChannel:[Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;

    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_2

    goto :goto_4

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: there is notificationChannelList: notificationChannelList length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;-><init>()V

    .line 82
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v6, p1, v4

    .line 83
    iget-object v6, v6, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->resourceURL:Ljava/lang/String;

    add-int/2addr v5, v1

    if-nez v6, :cond_3

    goto :goto_3

    .line 88
    :cond_3
    iput-object v6, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 89
    array-length v6, p1

    if-ne v5, v6, :cond_4

    move v6, v1

    goto :goto_2

    :cond_4
    move v6, v3

    :goto_2
    iput-boolean v6, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 90
    const-string v6, "NORMAL"

    iput-object v6, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->deleteReason:Ljava/lang/String;

    .line 91
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v8

    invoke-interface {v6, v7, v8, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-void

    .line 73
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onComplete: there is no notificationChannelList: try to create notificationChannel"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p1, p0, v0, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onComplete: JsonParseException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/gson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x194

    if-ne v0, v1, :cond_8

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    return-void

    .line 102
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_9
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

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

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)I

    move-result v0

    const-string/jumbo v1, "onFail: IOException"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelListInfo;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method
