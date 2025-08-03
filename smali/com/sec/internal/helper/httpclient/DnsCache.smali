.class public Lcom/sec/internal/helper/httpclient/DnsCache;
.super Ljava/lang/Object;
.source "DnsCache.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DnsController"


# instance fields
.field private mDnsGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/DnsGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsCache;->mDnsGroups:Ljava/util/List;

    return-void
.end method

.method private removeInvalidResult()V
    .locals 3

    .line 30
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsCache;->mDnsGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 31
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsCache;->mDnsGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsGroup;

    .line 33
    invoke-virtual {v1}, Lcom/sec/internal/helper/httpclient/DnsGroup;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsCache;->mDnsGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
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

    .line 13
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/DnsCache;->removeInvalidResult()V

    .line 15
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsCache;->mDnsGroups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/helper/httpclient/DnsGroup;

    .line 16
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/DnsGroup;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public store(Lcom/sec/internal/helper/httpclient/DnsGroup;)V
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsCache;->mDnsGroups:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
