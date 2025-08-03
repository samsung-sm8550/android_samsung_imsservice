.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;
.super Ljava/lang/Object;
.source "McsUpdateNotificationChannelLifetime.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

.field final synthetic val$callCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->val$callCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 8

    .line 60
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onComplete: statusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_6

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 65
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onComplete: decryptedData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result v2

    const-string v3, "decryptedData is empty"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 79
    :try_start_0
    const-class v2, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    .line 84
    iget-object p1, p1, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 88
    :cond_2
    iget p1, p1, Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;->channelLifetime:I

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result v2

    const-string v3, "cms_channel_expiration"

    const/16 v4, 0x708

    invoke-static {v0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    sub-int v2, p1, v0

    if-gtz v2, :cond_3

    move v2, p1

    .line 92
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onComplete: channelLifetime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " channelExpiration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " delay: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    int-to-long v3, p1

    .line 97
    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmControllerInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL_LIFETIME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v0, v3, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    if-lez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", channelLifetime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", delay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",NC:LT_UP,"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x6ffdfffb

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    .line 85
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onComplete: there is no notificationChannel"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

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

    .line 108
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x194

    if-ne v0, v1, :cond_7

    .line 110
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->val$callCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    return-void

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    .line 115
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_8
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

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

    .line 123
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)I

    move-result v0

    const-string/jumbo v1, "onFail: IOException"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsUpdateNotificationChannelLifetime;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    return-void
.end method
