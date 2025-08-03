.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;
.super Ljava/lang/Object;
.source "ReqSession.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12e

    const-string v2, "default_error_type"

    if-ne v0, v1, :cond_d

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "location"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 56
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 70
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_TARGET_URL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 71
    const-string v3, "errorCode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_3

    .line 75
    const-string v0, "errorCode="

    const/16 v1, 0x26

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->findErrorCode(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    return-void

    :cond_3
    if-ltz v1, :cond_f

    .line 82
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 83
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v0

    .line 84
    :cond_4
    const-string p1, "HAP.STEADY.STATE.REQ.HUIMSTOKEN"

    if-nez v0, :cond_6

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_2

    .line 88
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "not steady state"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    :goto_2
    return-void

    .line 93
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastFailedApiName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SteadyState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    .line 95
    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v1

    const-string v2, "HAP.DELETE.ACCOUNT"

    if-eqz v1, :cond_b

    .line 97
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string p1, "HAP.CREATE.ACCOUNT"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$900(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_3

    .line 100
    :cond_7
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string p1, "HAP.GET.SVC.ACCOUNT"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_8
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_3

    .line 106
    :cond_9
    const-class v1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string p1, "HAP.GET.TC"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_3

    .line 109
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_3

    .line 112
    :cond_b
    const-class p1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 113
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_3

    .line 116
    :cond_c
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    :goto_3
    return-void

    .line 121
    :cond_d
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_e

    .line 122
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_f

    .line 123
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_f

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v1, "RetryAfterRule"

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    return-void

    .line 130
    :cond_f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "all other responses"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    return-void
.end method
