.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;
.super Ljava/lang/Object;
.source "RequestMCSToken.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 18

    move-object/from16 v1, p0

    .line 53
    const-string/jumbo v0, "server_version"

    const-string/jumbo v2, "oasis_server_root"

    const-string/jumbo v3, "oasis_large_file_server_root"

    const-string/jumbo v4, "oasis_small_file_server_root"

    const-string v5, "max_small_file_size"

    const-string v6, "fcm_sender_id"

    const-string/jumbo v7, "validity"

    const-string v8, "exp"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v9

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v10

    .line 55
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "resultCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 56
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v11}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v12}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "strBody: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_a

    .line 58
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 60
    :try_start_0
    const-string v11, ""

    .line 61
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v12, v12, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEncrypted()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    .line 62
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v11, v11, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v11}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v11

    invoke-interface {v11, v9, v13}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->decrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 64
    :cond_0
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v11, v9

    .line 65
    :goto_1
    const-string v9, "access_token"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 66
    iget-object v12, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v12, v12, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAccessToken(Ljava/lang/String;)V

    .line 67
    invoke-static {v9, v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    move-wide/from16 v16, v14

    .line 68
    invoke-static {v9, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    .line 69
    iget-object v9, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v9, v9, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v9

    move-object v12, v2

    move-object v15, v3

    move-wide/from16 v2, v16

    invoke-virtual {v9, v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAccessTokenExpireTime(J)V

    .line 70
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmWorkFlow(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setAccessTokenValidityTimer(J)V

    .line 72
    const-string/jumbo v2, "refresh_token"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsRefreshToken(Ljava/lang/String;)V

    .line 74
    invoke-static {v2, v8}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 75
    invoke-static {v2, v7}, Lcom/sec/internal/ims/cmstore/utils/Util;->getIntegerPayloadFromToken(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 76
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v7, v7, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v7}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsRefreshTokenExpireTime(J)V

    .line 77
    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v7}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmWorkFlow(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setRefreshTokenValidityTimer(J)V

    .line 79
    const-string/jumbo v2, "oasis_config"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v6, v6, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveFcmSenderId(Ljava/lang/String;)V

    .line 84
    :cond_2
    const-string v3, "cms_data_ttl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v6, v6, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v7, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveCmsDataTtl(I)V

    .line 86
    const-string v3, "max_upload_file_size"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v6, v6, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v7, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMaxUploadFileSize(I)V

    .line 88
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    iget-object v5, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v5, v5, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v5

    iget-object v6, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v6, v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMaxSmallFileSize(I)V

    .line 92
    :cond_3
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisSmallFileServerRoot(Ljava/lang/String;)V

    :cond_4
    move-object v3, v15

    .line 96
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisLargeFileServerRoot(Ljava/lang/String;)V

    .line 100
    :cond_5
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oasis server root: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v4, v4, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisServerRoot(Ljava/lang/String;)V

    .line 105
    :cond_6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 106
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOasisServerVersion(Ljava/lang/String;)V

    .line 110
    :cond_7
    const-string v0, "auto_config"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 111
    const-string v2, "APPLICATIONS"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v13, 0x0

    .line 112
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_9

    .line 113
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 114
    const-string v3, "TARGET_INFO"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 115
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    const-string/jumbo v4, "primary"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 117
    const-string v0, "XMS_MESSAGE"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    const-string v2, "mms_revoke_ttl_secs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v3, v3, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMmsRevokeTtlSecs(I)V

    .line 120
    const-string/jumbo v2, "sms_revoke_ttl_secs"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$mgetInt(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSmsRevokeTtlSecs(I)V

    goto :goto_3

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 125
    :cond_9
    :goto_3
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 128
    :goto_4
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

    move-result v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_5

    :cond_a
    const/16 v0, 0x196

    const/4 v2, 0x1

    if-ne v10, v0, :cond_b

    .line 132
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 133
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    if-eq v0, v2, :cond_b

    .line 134
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->handleMessageIdFromSpecificException(Ljava/lang/String;)V

    goto :goto_5

    .line 135
    :cond_b
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->isErrorCodeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 136
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 137
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v0

    .line 138
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result v0

    if-lez v0, :cond_d

    .line 140
    iget-object v2, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_5

    .line 143
    :cond_c
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    :cond_d
    :goto_5
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;)I

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

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestMCSToken;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
