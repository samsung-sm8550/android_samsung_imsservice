.class Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;
.super Ljava/lang/Object;
.source "GbaHttpController.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

.field final synthetic val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iput-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iput-object p3, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$url:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleAuthenticateWithGba(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)V
    .locals 7

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v0

    invoke-static {p2, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$smisNeedCSFB(II)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 150
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Special case: TIM operator requires CSFB for 401."

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x193

    .line 151
    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->setStatusCode(I)V

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void

    .line 156
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {p2, p1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mstoreLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 158
    iget-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetWwwAuthenticateHeader(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object p2

    if-nez p2, :cond_1

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "execute(): onComplete: missing header: WWW-Authenticate"

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void

    .line 164
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object p2

    .line 166
    const-string v0, "3GPP-bootstrapping"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v0

    if-lez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/DnsController;

    const/4 v1, 0x0

    .line 169
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    .line 170
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fputmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;)V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-static {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$url:Ljava/net/URL;

    invoke-static {v2, p1, v1, p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mgetGbaCallback(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object p0

    invoke-interface {v0, v1, p2, p1, p0}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)I

    goto :goto_0

    .line 175
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HTTP digest without GBA"

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUserName()Ljava/lang/String;

    move-result-object v4

    .line 177
    iget-object p2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$url:Ljava/net/URL;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 3

    if-nez p1, :cond_0

    .line 126
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "execute(): onComplete: response build failure"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "okhttp response build failure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V

    .line 131
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "execute: onCompleted"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v2, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$museGba(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->handleAuthenticateWithGba(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NO GBA process"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 141
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "save LastAuthInfo without GBA process for orange"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->this$0:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->-$$Nest$mstoreLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 144
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    :goto_0
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

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

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;->val$requestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method
