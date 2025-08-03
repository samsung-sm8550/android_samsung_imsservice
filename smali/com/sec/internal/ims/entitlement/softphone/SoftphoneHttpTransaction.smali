.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
.super Ljava/lang/Object;
.source "SoftphoneHttpTransaction.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SoftphoneHttpTransaction"


# instance fields
.field final mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

.field private mConnectionTimeout:J

.field mContent:Lorg/json/JSONObject;

.field private mContents:Lorg/json/JSONArray;

.field mData:[B

.field mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

.field mQueryParams:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mQueryParamsEncoded:Z

.field private mReadTimeout:J

.field mStringBody:Ljava/lang/String;

.field mURL:Ljava/lang/String;

.field private mWriteTimeout:J


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    .line 27
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParamsEncoded:Z

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mStringBody:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContent:Lorg/json/JSONObject;

    .line 36
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContents:Lorg/json/JSONArray;

    .line 37
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mData:[B

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mConnectionTimeout:J

    .line 40
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mReadTimeout:J

    .line 41
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mWriteTimeout:J

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method buildRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 5

    .line 100
    new-instance v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V

    .line 102
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mStringBody:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_0

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContent:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lorg/json/JSONObject;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContents:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContents:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lorg/json/JSONArray;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_0

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mData:[B

    if-eqz p1, :cond_3

    .line 109
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody([B)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 112
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 113
    new-instance p1, Lcom/sec/internal/helper/httpclient/HttpQueryParams;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    iget-boolean v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParamsEncoded:Z

    invoke-direct {p1, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpQueryParams;-><init>(Ljava/util/LinkedHashMap;Z)V

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setQueryParams(Lcom/sec/internal/helper/httpclient/HttpQueryParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 116
    :cond_4
    iget-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mConnectionTimeout:J

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_5

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 119
    :cond_5
    iget-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mReadTimeout:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_6

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 122
    :cond_6
    iget-wide p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mWriteTimeout:J

    cmp-long v1, p0, v3

    if-eqz v1, :cond_7

    .line 123
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setWriteTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_7
    const/4 p0, 0x0

    .line 126
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setFollowRedirects(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-object v0
.end method

.method public commit(Landroid/os/Message;)V
    .locals 0

    .line 78
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->executeRequest(Landroid/os/Message;)V

    return-void
.end method

.method executeRequest(Landroid/os/Message;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;Landroid/os/Message;)V

    .line 146
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->buildRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method public initHttpRequest(Ljava/lang/String;)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 91
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    const-string v1, "Host"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mHeader:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccessTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Authorization"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setByteData([B)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mData:[B

    return-void
.end method

.method setConnectionTimeout(J)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mConnectionTimeout:J

    return-void
.end method

.method public setJsonBody(Lorg/json/JSONObject;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mContent:Lorg/json/JSONObject;

    return-void
.end method

.method public setQueryParameters(Ljava/util/LinkedHashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParams:Ljava/util/LinkedHashMap;

    .line 58
    iput-boolean p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mQueryParamsEncoded:Z

    return-void
.end method

.method setReadTimeout(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mReadTimeout:J

    return-void
.end method

.method public setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mMethod:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mURL:Ljava/lang/String;

    return-void
.end method

.method public setStringBody(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mStringBody:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setConnectionTimeout(J)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setReadTimeout(J)V

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setWriteTimeout(J)V

    return-void
.end method

.method setWriteTimeout(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->mWriteTimeout:J

    return-void
.end method
