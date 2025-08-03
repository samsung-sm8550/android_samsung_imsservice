.class Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;
.super Landroid/content/BroadcastReceiver;
.source "MStoreDebugTool.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 73
    sget-object p1, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mVVMIntentReceiver: onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getCmsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.shiqg.action.VVM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.shiqg.action.TESTAPI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 80
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 83
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Landroid/content/Context;

    move-result-object v3

    .line 84
    invoke-static {v3, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v1, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 86
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/TESTAPI/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FileName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".json"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 89
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$mgetTextFromSD(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v3, "API"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string v4, "Content"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 92
    const-string/jumbo v4, "preferred_line"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 94
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, 0x5077a65f

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v4, :cond_4

    const v0, 0x5593991a

    if-eq v1, v0, :cond_3

    const v0, 0x79f4f6c6

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "uploadMessage"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "setupSIM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_2

    :cond_4
    const-string v1, "downloadMessage"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, -0x1

    :goto_2
    const-string v1, "VVMDATA"

    if-eqz v0, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    goto :goto_4

    .line 110
    :cond_6
    :try_start_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    const-string p1, "Type"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->setupSim(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 104
    :cond_7
    :try_start_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmCentralMsgStoreWrapper(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->getBinder()Lcom/sec/ims/ICentralMsgStoreService$Stub;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->uploadMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 106
    :catch_1
    :try_start_3
    sget-object p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "uploadMessage  error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 97
    :cond_8
    :try_start_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmCentralMsgStoreWrapper(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/servicecontainer/CentralMsgStoreInterface;->getBinder()Lcom/sec/ims/ICentralMsgStoreService$Stub;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->downloadMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 99
    :catch_2
    :try_start_5
    sget-object p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    const-string p1, "downloadMessage error"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 114
    :goto_3
    sget-object p1, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 77
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/MStoreDebugTool$1;->this$0:Lcom/sec/internal/ims/cmstore/MStoreDebugTool;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/MStoreDebugTool;->-$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/MStoreDebugTool;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->vvmNormalSyncRequest()V

    goto :goto_4

    .line 120
    :cond_a
    const-string p0, "cms profile is not enabled"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    return-void
.end method
