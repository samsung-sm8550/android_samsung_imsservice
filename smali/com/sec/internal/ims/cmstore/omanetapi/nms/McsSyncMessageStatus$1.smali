.class Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;
.super Ljava/lang/Object;
.source "McsSyncMessageStatus.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$syncRequestParam:Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$syncRequestParam:Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 8

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onComplete status  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$syncRequestParam:Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->shouldCareAfterResponsePreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$syncRequestParam:Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$syncRequestParam:Lcom/sec/internal/omanetapi/common/data/SyncMessageStatus;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/McsSyncMessageStatus$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method
