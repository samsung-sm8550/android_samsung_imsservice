.class Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;
.super Ljava/lang/Object;
.source "HttpHelper.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/util/HttpHelper;

.field final synthetic val$OnComplete:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/util/HttpHelper;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->this$0:Lcom/sec/internal/ims/entitlement/util/HttpHelper;

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/HttpHelper;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Http request 200 ok"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTP FAIL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x14090000

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 64
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;-><init>()V

    .line 65
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusReason(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/HttpHelper$1;->val$OnComplete:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
