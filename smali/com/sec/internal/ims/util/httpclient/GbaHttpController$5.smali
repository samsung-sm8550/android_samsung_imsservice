.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$bsfServer:Ljava/lang/String;

.field final synthetic val$gbaType:[B

.field final synthetic val$imei:Ljava/lang/String;

.field final synthetic val$isGbaSupported:Z

.field final synthetic val$nafId:[B

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 568
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$bsfServer:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$imei:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$gbaType:[B

    iput-object p8, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$nafId:[B

    iput-boolean p9, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$isGbaSupported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 12

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 572
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bsfRequestCallback: onComplete: response build failure"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p0

    new-instance v1, Lcom/sec/internal/ims/gba/GbaException;

    const-string v2, "Result null"

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 578
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",<,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x31000001

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/16 v2, 0x191

    if-eq v1, v2, :cond_1

    .line 581
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bsfRequestCallback: onComplete: unexpected response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p0

    new-instance v0, Lcom/sec/internal/ims/gba/GbaException;

    const-string/jumbo v2, "unexpected response"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetWwwAuthenticateHeader(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v5

    if-nez v5, :cond_2

    .line 588
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bsfRequestCallback: onComplete: missing header: WWW-Authenticate"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p0

    new-instance v1, Lcom/sec/internal/ims/gba/GbaException;

    const-string v2, "AuthenticateHeader null"

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 593
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$username:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$bsfServer:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$imei:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$gbaType:[B

    iget-object v9, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$nafId:[B

    iget-boolean v10, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$isGbaSupported:Z

    iget-object v11, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static/range {v2 .. v11}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$msendBsfRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x31000009

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p0

    new-instance v1, Lcom/sec/internal/ims/gba/GbaException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, p0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V

    return-void
.end method
