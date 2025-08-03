.class Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;
.super Ljava/lang/Object;
.source "McsDeleteNotificationChannel.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$isNeedRecreateChannel:Z


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$isNeedRecreateChannel:Z

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$channelId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

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
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isNeedRecreateChannel: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$isNeedRecreateChannel:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-virtual {v1, v0}, Lcom/sec/internal/omanetapi/nc/BaseNCRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v2, p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    .line 68
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    invoke-interface {v1, v2, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z

    :cond_1
    return-void

    .line 52
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->remove(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 53
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$channelId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$mupdateChannelData(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;Ljava/lang/String;)V

    .line 54
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->val$isNeedRecreateChannel:Z

    if-eqz p1, :cond_3

    .line 55
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onComplete: notificationChannel is deleted: try to create notificationChannel"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V

    goto :goto_1

    .line 58
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onComplete: notificationChannel is deleted"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetmHttpInterface(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    .line 61
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",NC:DEL"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, -0x6ffdfffc

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

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

    .line 76
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;->access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nc/McsDeleteNotificationChannel;)I

    move-result p0

    const-string/jumbo v0, "onFail: IOException"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
