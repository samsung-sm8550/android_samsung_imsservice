.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;
.super Ljava/lang/Object;
.source "ReqRetireSession.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 2

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 1

    .line 43
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "call was failed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;)V

    return-void
.end method
