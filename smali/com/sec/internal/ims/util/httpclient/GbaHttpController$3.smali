.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$akaKeys:Lcom/sec/internal/ims/gba/params/GbaData;

.field final synthetic val$gbaType:[B

.field final synthetic val$isGbaSupported:Z

.field final synthetic val$nafId:[B

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$wwwAuthParsedHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;


# direct methods
.method public static synthetic $r8$lambda$_2Bka5HYXYYsF_Kgd56Esz42lcA(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->lambda$onComplete$0(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;[B[BLcom/sec/internal/ims/gba/params/GbaData;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 479
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$wwwAuthParsedHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    iput-object p4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$gbaType:[B

    iput-object p5, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$nafId:[B

    iput-object p6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$akaKeys:Lcom/sec/internal/ims/gba/params/GbaData;

    iput-boolean p7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$isGbaSupported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onComplete$0(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 519
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 13

    const/4 v0, 0x3

    if-nez p1, :cond_0

    .line 483
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sendBsfRequestWithAuthorization(): onComplete: response build failure"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p0

    new-instance v1, Lcom/sec/internal/ims/gba/GbaException;

    const-string/jumbo v2, "response build failure"

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 489
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",<,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x31000001

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 492
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendBsfRequestWithAuthorization(): onComplete: response code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p0

    new-instance v0, Lcom/sec/internal/ims/gba/GbaException;

    const-string v2, "incorrect statue code"

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 497
    :cond_1
    const-class v1, Lcom/sec/internal/ims/gba/BsfResponse;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpResponseUtils;->parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/gba/BsfResponse;

    if-nez v1, :cond_2

    .line 499
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "sendBsfRequestWithAuthorization(): onComplete: parseXmlResponse failure"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p0

    new-instance v1, Lcom/sec/internal/ims/gba/GbaException;

    const-string v2, "Parse Fail"

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-static {p1, p0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 503
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/gba/BsfResponse;->getBtid()Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-virtual {v1}, Lcom/sec/internal/ims/gba/BsfResponse;->getLifetime()Ljava/lang/String;

    move-result-object v5

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v4, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    if-eqz v4, :cond_3

    .line 507
    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v6, v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v6

    invoke-static {v1, v4, v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v6}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v6

    invoke-static {v1, v4, v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 513
    iput-object v5, v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    .line 515
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_6

    .line 517
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_6

    .line 518
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 519
    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    new-instance v6, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3$$ExternalSyntheticLambda1;

    invoke-direct {v6, v4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    invoke-virtual {v1, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    .line 523
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$wwwAuthParsedHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCipherSuite()[B

    move-result-object v7

    iget-object v8, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$gbaType:[B

    iget-object v9, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$nafId:[B

    iget-object v10, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$akaKeys:Lcom/sec/internal/ims/gba/params/GbaData;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v12

    move-object v4, v0

    move v11, v2

    invoke-interface/range {v3 .. v12}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->storeGbaDataAndGenerateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;

    move-result-object v6

    .line 524
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBsfRequestWithAuthorization(): btid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", gbaKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isSupportTls: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result v4

    iget-boolean v7, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$isGbaSupported:Z

    move-object v5, v0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgbaCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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
