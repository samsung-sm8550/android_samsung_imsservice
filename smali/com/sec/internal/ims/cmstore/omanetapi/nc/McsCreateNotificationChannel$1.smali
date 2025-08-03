.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;
.super Ljava/lang/Object;
.source "McsCreateNotificationChannel.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 77
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 135
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    .line 136
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_1
    return-void

    .line 81
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 82
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: decryptedData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object p1, v0

    goto :goto_1

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)I

    move-result v1

    const-string v2, "decryptedData is empty"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    :cond_4
    :goto_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 96
    :try_start_0
    const-class v1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_9

    .line 101
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;

    if-nez p1, :cond_5

    goto/16 :goto_3

    .line 106
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 108
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->resourceURL:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_6

    move-object v1, v2

    .line 109
    :cond_6
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 111
    iget-object v3, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->callbackURL:Ljava/lang/String;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move-object v2, v3

    .line 112
    :goto_2
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onComplete: callbackUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " resUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    .line 115
    iget p1, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;->channelLifetime:I

    .line 116
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)I

    move-result v2

    const-string v3, "cms_channel_expiration"

    const/16 v4, 0x708

    invoke-static {v1, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v1

    sub-int v2, p1, v1

    if-gtz v2, :cond_8

    move v2, p1

    .line 119
    :cond_8
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onComplete: channelLifetime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " channelExpiration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " delay: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v3, p1

    .line 121
    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    .line 123
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionChannelDuration()V

    .line 124
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionTime()V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmControllerInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    int-to-long v3, v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created, channelLifetime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", delay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",NC:CRT,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x6ffdfffd

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    .line 102
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onComplete: there is no notificationChannel"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 98
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

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
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

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

    .line 144
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)I

    move-result v0

    const-string/jumbo v1, "onFail: IOException"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsCreateNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method
