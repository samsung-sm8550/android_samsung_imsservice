.class public Lcom/sec/internal/helper/httpclient/DnsController;
.super Ljava/lang/Object;
.source "DnsController.java"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field private static final BUF_SIZE:I = 0x800

.field private static final DNS_PORT:I = 0x35

.field private static final TAG:Ljava/lang/String; = "DnsController"

.field public static final TIMEOUT:I = 0xbb8

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_AAAA:I = 0x2

.field public static final TYPE_AAAA_PREF:I = 0x6

.field public static final TYPE_A_PREF:I = 0x5

.field public static final TYPE_NAPTR:I = 0x3

.field private static mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

.field static mListBsf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field static mListNaf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreBsfname:Ljava/lang/String;

.field private static mPreNafname:Ljava/lang/String;


# instance fields
.field bsfRetryCounter:I

.field isNaf:Z

.field private mBsfHostname:Ljava/lang/String;

.field mDnsAddress:Ljava/net/InetAddress;

.field mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field mDnsType:I

.field private mIsLookAhead:Z

.field mMno:Lcom/sec/internal/constants/Mno;

.field private mNafHostname:Ljava/lang/String;

.field mNetwork:Landroid/net/Network;

.field mSrvRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/SRVRecord;",
            ">;"
        }
    .end annotation
.end field

.field retryCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-direct {v0}, Lcom/sec/internal/helper/httpclient/DnsCache;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    return-void
.end method

.method public constructor <init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IZ",
            "Lcom/sec/internal/constants/Mno;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mIsLookAhead:Z

    .line 70
    iput p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    .line 71
    iput p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    .line 72
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    .line 73
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    .line 74
    iput-boolean p6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    .line 75
    iput p5, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    .line 76
    iput-object p7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    return-void
.end method

.method public constructor <init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/net/Network;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IZ",
            "Lcom/sec/internal/constants/Mno;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    .line 81
    iput p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    .line 82
    iput p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    .line 83
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    .line 84
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    .line 85
    iput-boolean p6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    .line 86
    iput p5, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    .line 87
    iput-object p7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    .line 88
    iput-object p8, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    .line 89
    iput-object p9, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    .line 90
    iput-boolean p10, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mIsLookAhead:Z

    return-void
.end method

.method public static correctServerAddr(II)V
    .locals 3

    const/4 v0, 0x0

    if-lez p0, :cond_0

    .line 509
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 510
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 511
    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 512
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p0, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    if-lez p1, :cond_1

    .line 515
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_1

    .line 516
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    .line 517
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 518
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p1, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private dnsLookAhead()V
    .locals 5

    .line 138
    iget v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 143
    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    .line 145
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 146
    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    .line 149
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 150
    array-length v4, v3

    if-nez v4, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    new-instance v1, Lcom/sec/internal/helper/httpclient/DnsResponse;

    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNafHostname:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v0}, Lcom/sec/internal/helper/httpclient/DnsResponse;-><init>(Ljava/lang/String;[Lorg/xbill/DNS/Record;I)V

    .line 155
    new-instance v2, Lcom/sec/internal/helper/httpclient/DnsResponse;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mBsfHostname:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/sec/internal/helper/httpclient/DnsResponse;-><init>(Ljava/lang/String;[Lorg/xbill/DNS/Record;I)V

    .line 157
    new-instance p0, Lcom/sec/internal/helper/httpclient/DnsGroup;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/helper/httpclient/DnsGroup;-><init>(Lcom/sec/internal/helper/httpclient/DnsResponse;Lcom/sec/internal/helper/httpclient/DnsResponse;)V

    .line 159
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/httpclient/DnsCache;->store(Lcom/sec/internal/helper/httpclient/DnsGroup;)V

    :cond_4
    return-void
.end method

.method public static getBsfAddrSize()I
    .locals 1

    .line 505
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getDnsA(Ljava/lang/String;)V
    .locals 4

    .line 440
    const-string v0, "DnsController"

    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, p1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDnsA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz p0, :cond_2

    .line 444
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 445
    invoke-virtual {v2, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 452
    :cond_1
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_2
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 457
    invoke-virtual {v2, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 464
    :cond_4
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsA: error with hostname: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getDnsManualA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 5

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsManualA() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 341
    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/4 v2, 0x1

    .line 342
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 343
    array-length v3, v2

    if-lez v3, :cond_1

    goto :goto_1

    .line 345
    :cond_1
    iget v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    const/16 v2, 0x1c

    .line 346
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 347
    array-length v3, v2

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    .line 350
    const-string v3, "A and AAAA type query failed,try next IP"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private getDnsManualAAAA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsManualAAAA() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 319
    iput-object v2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v2, 0x1c

    .line 320
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 321
    array-length v3, v2

    if-lez v3, :cond_1

    goto :goto_1

    .line 323
    :cond_1
    iget v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 324
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 325
    array-length v3, v2

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v2, :cond_0

    .line 328
    const-string v3, "AAAA and A type query failed,try next IP"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method private getDnsNAPTR(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsNAPTR() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v0, 0x23

    .line 304
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object p0

    return-object p0
.end method

.method private getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;
    .locals 6

    .line 265
    const-string v0, "."

    const-string v1, "DnsController"

    const/4 v2, 0x0

    .line 266
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 268
    :goto_0
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object p1

    .line 269
    invoke-static {p1}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object p1

    .line 271
    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mNetwork:Landroid/net/Network;

    invoke-virtual {p2, v3}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 273
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object p1

    .line 274
    new-instance p2, Ljava/net/DatagramPacket;

    array-length v4, p1

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v5, 0x35

    invoke-direct {p2, p1, v4, p0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 275
    invoke-virtual {v3, p2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p0, 0x800

    .line 277
    new-array p1, p0, [B

    .line 278
    new-instance p2, Ljava/net/DatagramPacket;

    invoke-direct {p2, p1, p0}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/16 p0, 0xbb8

    .line 279
    invoke-virtual {v3, p0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 280
    invoke-virtual {v3, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 282
    new-instance p0, Lorg/xbill/DNS/Message;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/Message;-><init>([B)V

    .line 283
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result p1

    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "result is "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 287
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object p0, v2

    .line 289
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_4

    .line 266
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 293
    :goto_4
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 290
    :catch_1
    const-string p0, "DNS query timeout, try next type or IP"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;
    .locals 2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDnsSRV() called with: hostname = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsAddress:Ljava/net/InetAddress;

    const/16 v0, 0x21

    .line 312
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object p0

    return-object p0
.end method

.method private getManualDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;
    .locals 9

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsQuery(Ljava/lang/String;I)[Lorg/xbill/DNS/Record;

    move-result-object p1

    .line 362
    const-string v0, "DnsController"

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    array-length v2, p1

    if-lez v2, :cond_d

    .line 363
    array-length v2, p1

    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v2, :cond_d

    aget-object v5, p1, v3

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 368
    :cond_0
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 369
    check-cast v5, Lorg/xbill/DNS/CNAMERecord;

    .line 370
    invoke-virtual {v5}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v4

    goto/16 :goto_2

    :cond_1
    const/16 v6, 0x1c

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    .line 374
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 375
    check-cast v5, Lorg/xbill/DNS/ARecord;

    .line 376
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "target Name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ARecord name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 378
    invoke-virtual {v5}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_1

    .line 380
    :cond_2
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    if-ne v7, v6, :cond_5

    .line 381
    check-cast v5, Lorg/xbill/DNS/AAAARecord;

    .line 382
    invoke-virtual {v5}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_1

    :cond_3
    if-ne p2, v7, :cond_4

    .line 386
    check-cast v5, Lorg/xbill/DNS/ARecord;

    .line 387
    invoke-virtual {v5}, Lorg/xbill/DNS/ARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_1

    .line 388
    :cond_4
    invoke-virtual {v5}, Lorg/xbill/DNS/Record;->getType()I

    move-result v7

    if-ne v7, v6, :cond_5

    .line 389
    check-cast v5, Lorg/xbill/DNS/AAAARecord;

    .line 390
    invoke-virtual {v5}, Lorg/xbill/DNS/AAAARecord;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_1

    :cond_5
    move-object v5, v1

    :goto_1
    if-eqz v5, :cond_c

    .line 395
    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    const-string v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 396
    const-string v5, "chn not supported IPv6 addr"

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 400
    :cond_6
    iget-boolean v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v6, :cond_9

    .line 402
    sget-object v6, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 403
    invoke-virtual {v7, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    .line 410
    :cond_8
    sget-object v6, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 414
    :cond_9
    sget-object v6, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 415
    invoke-virtual {v7, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_2

    .line 422
    :cond_b
    sget-object v6, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 429
    :cond_d
    iget-object p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p2

    if-eqz p2, :cond_10

    iget-boolean p2, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz p2, :cond_e

    sget-object p2, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eqz p2, :cond_f

    :cond_e
    iget-boolean p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-nez p0, :cond_10

    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    .line 430
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_10

    .line 431
    :cond_f
    const-string p0, "chn find no valid addr, return null"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_10
    return-object p1
.end method

.method public static getNafAddrSize()I
    .locals 1

    .line 501
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private getNaptrRecord(Ljava/lang/String;)V
    .locals 6

    .line 221
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsNAPTR(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 222
    array-length v1, v0

    if-lez v1, :cond_3

    .line 223
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 224
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_0

    goto :goto_2

    .line 227
    :cond_0
    check-cast v3, Lorg/xbill/DNS/NAPTRRecord;

    .line 228
    invoke-virtual {v3}, Lorg/xbill/DNS/NAPTRRecord;->getService()Ljava/lang/String;

    move-result-object v4

    const-string v5, "HTTP+D2T"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    invoke-virtual {v3}, Lorg/xbill/DNS/NAPTRRecord;->getReplacement()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 230
    array-length v4, v3

    if-lez v4, :cond_1

    .line 231
    invoke-direct {p0, v3}, Lcom/sec/internal/helper/httpclient/DnsController;->sortSRV([Lorg/xbill/DNS/Record;)V

    .line 232
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/SRVRecord;

    .line 233
    invoke-virtual {v4}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-direct {p0, v4}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_3
    const-string/jumbo v0, "sendDns: NAPTR is null"

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "_http."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p1

    goto :goto_3

    .line 247
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_http._tcp."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsSRV(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 251
    array-length v2, v0

    if-lez v2, :cond_5

    .line 252
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->sortSRV([Lorg/xbill/DNS/Record;)V

    .line 253
    iget-object p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/SRVRecord;

    .line 254
    invoke-virtual {v0}, Lorg/xbill/DNS/SRVRecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    goto :goto_4

    .line 258
    :cond_5
    const-string/jumbo v0, "sendDns: SRV direct error"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsA(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private sendDns(Ljava/lang/String;)V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requst dns query with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DnsController"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getNaptrRecord(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsManualAAAA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    goto :goto_0

    .line 208
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->getDnsManualA(Ljava/lang/String;)[Lorg/xbill/DNS/Record;

    :goto_0
    return-void
.end method

.method private sortSRV([Lorg/xbill/DNS/Record;)V
    .locals 11

    .line 474
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 475
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 476
    check-cast v3, Lorg/xbill/DNS/SRVRecord;

    .line 477
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "DnsController"

    if-nez v4, :cond_0

    .line 478
    const-string/jumbo v4, "sortSRV: 1st Record"

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_0
    move v4, v1

    move v6, v4

    .line 482
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    if-nez v6, :cond_3

    .line 483
    iget-object v7, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/SRVRecord;

    .line 484
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v8

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getPriority()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_1

    .line 485
    const-string/jumbo v6, "sortSRV: Update SRV better, lower priority"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v6, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    move v6, v10

    goto :goto_3

    .line 488
    :cond_1
    invoke-virtual {v3}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v8

    invoke-virtual {v7}, Lorg/xbill/DNS/SRVRecord;->getWeight()I

    move-result v7

    if-le v8, v7, :cond_2

    .line 489
    const-string/jumbo v6, "sortSRV: Update SRV better, higher weight"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v6, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v6, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    .line 495
    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mSrvRecord:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getRetryCounter()I
    .locals 0

    .line 172
    iget p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    return p0
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->mIsLookAhead:Z

    if-eqz v0, :cond_2

    .line 96
    sget-object v0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/DnsCache;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/DnsController;->dnsLookAhead()V

    .line 103
    sget-object p0, Lcom/sec/internal/helper/httpclient/DnsController;->mDnsCache:Lcom/sec/internal/helper/httpclient/DnsCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsCache;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 105
    :cond_1
    new-instance p0, Ljava/net/UnknownHostException;

    const-string p1, "There is no valid group."

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup: send DNS with hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreNafname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreBsfname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DnsController"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz v1, :cond_4

    .line 115
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 116
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->sendDns(Ljava/lang/String;)V

    .line 117
    sput-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreNafname:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_4
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-nez v1, :cond_6

    .line 119
    sget-object v1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 120
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DnsController;->sendDns(Ljava/lang/String;)V

    .line 121
    sput-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mPreBsfname:Ljava/lang/String;

    .line 124
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 125
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListNaf:Ljava/util/List;

    iget p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->retryCounter:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 126
    :cond_7
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 127
    sget-object p1, Lcom/sec/internal/helper/httpclient/DnsController;->mListBsf:Ljava/util/List;

    iget p0, p0, Lcom/sec/internal/helper/httpclient/DnsController;->bsfRetryCounter:I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_8
    :goto_1
    return-object v0
.end method

.method public setNaf(Z)V
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/sec/internal/helper/httpclient/DnsController;->isNaf:Z

    return-void
.end method
