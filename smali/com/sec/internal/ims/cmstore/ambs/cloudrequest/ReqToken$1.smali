.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;
.super Ljava/lang/Object;
.source "ReqToken.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 4

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    const-string v3, "default_error_type"

    if-ne v1, v2, :cond_1

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    const-string p1, "atsToken="

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x9

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->-$$Nest$mremoveLastNewLineChar(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAtsToken(Ljava/lang/String;)V

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)V

    return-void

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_3

    .line 59
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1ad

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result p1

    if-lez p1, :cond_4

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v1, "RetryAfterRule"

    invoke-interface {v0, p0, v1, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)Ljava/lang/String;

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

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)V

    return-void
.end method
