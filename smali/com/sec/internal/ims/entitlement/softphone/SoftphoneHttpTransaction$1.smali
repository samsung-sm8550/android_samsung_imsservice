.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;
.super Ljava/lang/Object;
.source "SoftphoneHttpTransaction.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

.field final synthetic val$OnComplete:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 1

    .line 140
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Http request failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;-><init>()V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;->val$OnComplete:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
