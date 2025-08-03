.class Lcom/sec/internal/helper/httpclient/HttpController$2;
.super Ljava/lang/Object;
.source "HttpController.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/httpclient/HttpController;

.field final synthetic val$className:Ljava/lang/String;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/httpclient/HttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$className:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3

    .line 468
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    const-string v1, "IOException"

    const v2, -0x6ffffffd

    invoke-static {v2, p1, v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->-$$Nest$smlistToDumpFormat(ILcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    .line 435
    invoke-static {p2}, Lcom/sec/internal/helper/httpclient/HttpResponseBuilder;->buildResponse(Lokhttp3/Response;)Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    move-result-object p1

    if-nez p1, :cond_0

    .line 437
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "okhttp response build failure"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p2}, Lokhttp3/Response;->handshake()Lokhttp3/Handshake;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/CipherSuite;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 442
    invoke-static {p2, v0}, Lcom/sec/internal/ims/gba/GbaUtility;->convertCipherSuite(Ljava/lang/String;Z)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setCipherSuite([B)V

    .line 447
    :cond_1
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetAllPayloads;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$className:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetIndividualPayLoad;

    .line 448
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$className:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageGetLargeFile;

    .line 449
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$className:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 452
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 450
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toStringWoPayload()Ljava/lang/String;

    move-result-object p2

    .line 455
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$className:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    iget-object v1, v0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RESPONSE [ code "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ] "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    .line 457
    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$signature:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x6ffffffd

    invoke-static {v2, p2, v0, v1}, Lcom/sec/internal/helper/httpclient/HttpController;->-$$Nest$smlistToDumpFormat(ILcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 459
    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result p2

    const/4 v0, 0x2

    if-ge p2, v0, :cond_4

    .line 460
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;

    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    iget-object v0, v0, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;->add(Ljava/lang/Object;)V

    .line 462
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->this$0:Lcom/sec/internal/helper/httpclient/HttpController;

    const-string v0, ""

    iput-object v0, p2, Lcom/sec/internal/helper/httpclient/HttpController;->req:Ljava/lang/String;

    .line 463
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method
