.class Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;
.super Ljava/lang/Object;
.source "RequestRemoveSd.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5

    .line 36
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->isErrorCodeSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->getRetryCount(Ljava/lang/String;)I

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->checkRetryAfter(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)I

    move-result p1

    if-lez p1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->mHttpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goSuccessfulCall(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;)I

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

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestRemoveSd;

    const/16 p1, 0x322

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/BaseProvisionRequest;->goFailedCall(I)V

    return-void
.end method
