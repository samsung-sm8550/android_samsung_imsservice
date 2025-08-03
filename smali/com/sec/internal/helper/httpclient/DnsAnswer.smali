.class public Lcom/sec/internal/helper/httpclient/DnsAnswer;
.super Ljava/lang/Object;
.source "DnsAnswer.java"


# instance fields
.field private mExpiryTime:J

.field private mIp:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DnsAnswer;->mIp:Ljava/net/InetAddress;

    .line 11
    iput-wide p2, p0, Lcom/sec/internal/helper/httpclient/DnsAnswer;->mExpiryTime:J

    return-void
.end method


# virtual methods
.method public getIp()Ljava/net/InetAddress;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsAnswer;->mIp:Ljava/net/InetAddress;

    return-object p0
.end method

.method public isExpired()Z
    .locals 4

    .line 19
    iget-wide v0, p0, Lcom/sec/internal/helper/httpclient/DnsAnswer;->mExpiryTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
