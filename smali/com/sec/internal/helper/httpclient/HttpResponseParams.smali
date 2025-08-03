.class public Lcom/sec/internal/helper/httpclient/HttpResponseParams;
.super Ljava/lang/Object;
.source "HttpResponseParams.java"


# instance fields
.field private mCipherSuite:[B

.field private mDataBinary:[B

.field private mDataString:Ljava/lang/String;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatusCode:I

.field private mStatusReason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:[B

    .line 16
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    .line 17
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x2ft
    .end array-data
.end method


# virtual methods
.method public getCipherSuite()[B
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:[B

    return-object p0
.end method

.method public getDataBinary()[B
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    return-object p0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    return p0
.end method

.method public getStatusReason()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    return-object p0
.end method

.method public headerToString(Ljava/util/Map;)Ljava/lang/StringBuffer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 84
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public isDebugLog()Z
    .locals 1

    .line 94
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x191

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setCipherSuite([B)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mCipherSuite:[B

    return-void
.end method

.method public setDataBinary([B)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataBinary:[B

    return-void
.end method

.method public setDataString(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    return-void
.end method

.method public setStatusReason(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusReason:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 108
    const-string v0, "]"

    const-string v1, ""

    const-string v2, "    mHeaders="

    const-string v3, "\r\n"

    const-string v4, "HttpResponseParams[\r\n    mStatusCode="

    iget-object v5, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v5}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->headerToString(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 110
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->isDebugLog()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\r\n    mDataString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 112
    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_1

    :cond_0
    move-object v7, v1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 114
    :goto_1
    invoke-virtual {v6}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->isDebugLog()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n    mDataString length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mDataString:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringWoPayload()Ljava/lang/String;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mHeaders:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->headerToString(Ljava/util/Map;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpResponseParams[\r\n    mStatusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->mStatusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->isDebugLog()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mHeaders="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
