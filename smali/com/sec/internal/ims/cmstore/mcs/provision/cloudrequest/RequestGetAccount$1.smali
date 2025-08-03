.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;
.super Ljava/lang/Object;
.source "RequestGetAccount.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 9

    .line 38
    const-string v0, "consent_context"

    const-string v1, "alias"

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    .line 40
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resultCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strBody: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 42
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 45
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz p1, :cond_0

    .line 46
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    const/4 v5, 0x1

    invoke-interface {p1, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object p1, v4

    .line 48
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p1, v2

    .line 49
    :goto_1
    const-string v2, "account"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 50
    const-string v2, "account_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAccountId(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alias: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAlias(Ljava/lang/String;)V

    .line 61
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "consentContext: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 69
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)I

    move-result v1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_3

    .line 72
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->isErrorCodeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    if-lez p1, :cond_5

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_3

    .line 79
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http request onFail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetAccount;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
