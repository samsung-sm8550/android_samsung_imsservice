.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;
.super Ljava/lang/Object;
.source "McsGetNotificationChannelLifetime.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

.field final synthetic val$callCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->val$callCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 10

    .line 50
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 55
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: decryptedData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)I

    move-result v1

    const-string v2, "decryptedData is empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 66
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 69
    :try_start_0
    const-class v1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    .line 74
    iget-object v0, p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelCreateTime()J

    move-result-wide v0

    .line 79
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;

    iget p1, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;->channelLifetime:I

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v4, v0

    sub-long/2addr v4, v2

    .line 82
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)I

    move-result v7

    const-string v8, "cms_channel_expiration"

    const/16 v9, 0x708

    invoke-static {v6, v7, v8, v9}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v6

    .line 84
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onComplete: channelCreateTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " channelLifetime: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentTime: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " remainTime: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " channelExpiration: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v0, v6

    cmp-long p1, v4, v0

    if-gtz p1, :cond_3

    .line 87
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onComplete: send UPDATE_NOTIFICATION_CHANNEL_LIFETIME"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NOTIFICATION_CHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    :cond_3
    return-void

    .line 75
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onComplete: there is no notificationChannelLifetime"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onComplete: Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x194

    if-ne v0, v1, :cond_6

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->val$callCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    return-void

    .line 97
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    .line 99
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_7
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

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

    .line 107
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)I

    move-result v0

    const-string/jumbo v1, "onFail: IOException"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsGetNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method
