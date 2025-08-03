.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$fqdn:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$url:Ljava/net/URL;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iput-object p4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$fqdn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleRequestSuccessWithGba(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;)Z
    .locals 2

    .line 274
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    .line 275
    const-string p1, "Authentication-Info"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 277
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 279
    :try_start_0
    new-instance v1, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;

    invoke-direct {v1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;-><init>()V

    .line 280
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/AuthenticationInfoHeader;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->getNextNonce()Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iput-object p1, p2, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onComplete: unable to parse authInfoParsedHeader : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 p0, 0x1

    return p0

    .line 292
    :cond_0
    :goto_0
    const-string p1, "ETag"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 294
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 295
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 296
    iput-object p0, p2, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    :cond_1
    return v0
.end method

.method private handleRequestWithAuthenticate(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mstoreLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetWwwAuthenticateHeader(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 307
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sendRequestWithAuthorization(): onComplete: missing header: WWW-Authenticate"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "AuthenticateHeader null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 312
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->isStale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stale is true. Reuse same username.."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 316
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v1, "3GPP-bootstrapping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Retry GBA authentication..."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v1

    if-lez v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsController;

    const/4 v2, 0x0

    .line 321
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    .line 322
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 324
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onComplete: 401 Unauthorized. reset GbaKey"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->resetGbaKey(Ljava/lang/String;I)V

    .line 326
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-static {v3, p1, v2, p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetGbaCallback(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object p0

    invoke-interface {v1, v2, v0, p1, p0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I

    goto :goto_0

    .line 328
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HTTP digest without GBA"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUserName()Ljava/lang/String;

    move-result-object v5

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPassword()Ljava/lang/String;

    move-result-object v6

    .line 331
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 4

    if-nez p1, :cond_0

    .line 341
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onComplete: the response of 2nd time naf request build failure"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 346
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",<,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x31000001

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_3

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_3

    const/16 v2, 0xca

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    .line 362
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->handleRequestWithAuthenticate(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void

    .line 365
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onComplete: The response status code of 2nd time naf request is not 200"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 351
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$username:Ljava/lang/String;

    iput-object v0, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$password:Ljava/lang/String;

    iput-object v0, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    .line 354
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->handleRequestSuccessWithGba(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string v0, "AuthInfoHeader is invalid"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/ims/gba/GbaUtility;->generateLastAuthInfoKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, v2, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 373
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Second time naf request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$fqdn:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->resetGbaKey(Ljava/lang/String;I)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->reset()V

    .line 381
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method
