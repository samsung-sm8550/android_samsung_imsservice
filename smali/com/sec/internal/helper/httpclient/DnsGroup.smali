.class public Lcom/sec/internal/helper/httpclient/DnsGroup;
.super Ljava/lang/Object;
.source "DnsGroup.java"


# instance fields
.field mBsfResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

.field mNafResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;


# direct methods
.method public constructor <init>(Lcom/sec/internal/helper/httpclient/DnsResponse;Lcom/sec/internal/helper/httpclient/DnsResponse;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mNafResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    .line 11
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mBsfResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    return-void
.end method


# virtual methods
.method public isInvalid()Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mNafResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/DnsResponse;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mBsfResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DnsResponse;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public query(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mNafResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/DnsResponse;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mNafResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DnsResponse;->getIp()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mBsfResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/DnsResponse;->getHostname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 20
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsGroup;->mBsfResponse:Lcom/sec/internal/helper/httpclient/DnsResponse;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DnsResponse;->getIp()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
