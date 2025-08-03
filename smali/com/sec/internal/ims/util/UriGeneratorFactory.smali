.class public Lcom/sec/internal/ims/util/UriGeneratorFactory;
.super Ljava/lang/Object;
.source "UriGeneratorFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UriGeneratorFactory"

.field static volatile sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;


# instance fields
.field private DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

.field private mPrimaryImpuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;",
            "[",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mUriGenerators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    .line 50
    const-string/jumbo v0, "sip:default@default"

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    .line 70
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 71
    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p1

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->values()[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 73
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 74
    iget-object v5, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    new-instance v13, Lcom/sec/internal/ims/util/UriGeneratorImpl;

    sget-object v7, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    iget-object v10, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 75
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v11

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v12

    const-string/jumbo v8, "us"

    const-string v9, "example.com"

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;II)V

    .line 74
    invoke-interface {v4, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v5, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-array v4, p1, [Lcom/sec/ims/util/ImsUri;

    const/4 v5, 0x0

    .line 79
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    iget-object v5, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDerivedDomainFromImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImsiBasedDomain: mcc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mnc="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UriGeneratorFactory"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 120
    const-string p2, "ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;
    .locals 3

    .line 55
    sget-object v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    if-nez v0, :cond_1

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    const-class v1, Lcom/sec/internal/ims/util/UriGeneratorFactory;

    monitor-enter v1

    .line 58
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lcom/sec/internal/ims/util/UriGeneratorFactory;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 64
    :cond_1
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/util/UriGenerator;->getPhoneId()I

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/util/ImsUri;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, [Lcom/sec/ims/util/ImsUri;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/util/ImsUri;

    aput-object p1, v1, v0

    .line 134
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Z
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public create(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 11

    .line 86
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    .line 87
    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 90
    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 89
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 93
    :goto_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v6

    if-eqz v9, :cond_1

    .line 94
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v0, :cond_1

    .line 95
    new-instance v7, Lcom/sec/internal/ims/util/VzwUriGenerator;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    move-object v0, v7

    move-object v1, p2

    move v4, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/util/VzwUriGenerator;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    goto/16 :goto_3

    .line 96
    :cond_1
    const-string/jumbo v0, "us"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    new-instance v7, Lcom/sec/internal/ims/util/UriGeneratorUs;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    move-object v0, v7

    move-object v1, p2

    move v4, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/util/UriGeneratorUs;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    goto/16 :goto_3

    .line 98
    :cond_2
    const-string v0, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    new-instance v9, Lcom/sec/internal/ims/util/UriGeneratorChn;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    move-object v0, v9

    move-object v1, p2

    move v5, v6

    move v6, p0

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorChn;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    :goto_2
    move-object v7, v9

    goto/16 :goto_3

    :cond_3
    if-eqz v9, :cond_5

    .line 100
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v9, v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    if-eq v9, v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    if-eq v9, v0, :cond_4

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOBILE_PL:Lcom/sec/internal/constants/Mno;

    if-ne v9, v0, :cond_5

    .line 101
    :cond_4
    new-instance v9, Lcom/sec/internal/ims/util/UriGeneratorDT;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getDerivedDomainFromImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 103
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v7

    move-object v0, v9

    move-object v1, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/UriGeneratorDT;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    goto :goto_2

    :cond_5
    if-eqz v9, :cond_6

    .line 104
    const-string v0, "kr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 105
    new-instance v10, Lcom/sec/internal/ims/util/UriGeneratorKr;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    move-object v0, v10

    move-object v1, p2

    move v5, v6

    move v6, p0

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorKr;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 106
    invoke-virtual {v9}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v10, p0}, Lcom/sec/internal/ims/util/UriGeneratorKr;->setMnoName(Ljava/lang/String;)V

    move-object v7, v10

    goto :goto_3

    :cond_6
    if-eqz v9, :cond_7

    .line 107
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v9, v0, :cond_7

    .line 108
    new-instance v9, Lcom/sec/internal/ims/util/UriGeneratorRjil;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    move-object v0, v9

    move-object v1, p2

    move v5, v6

    move v6, p0

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorRjil;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    goto :goto_2

    .line 110
    :cond_7
    new-instance v9, Lcom/sec/internal/ims/util/UriGeneratorImpl;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    move-object v0, v9

    move-object v1, p2

    move v5, v6

    move v6, p0

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    goto/16 :goto_2

    :goto_3
    return-object v7
.end method

.method public get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/util/ImsUri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Lcom/sec/ims/util/ImsUri;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/util/ImsUri;

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/util/UriGenerator;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/sec/internal/ims/util/UriGenerator;

    :cond_1
    return-object p1
.end method

.method public get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 2

    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get: UriGenerator not found for uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". use default."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UriGeneratorFactory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 3

    .line 157
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/ims/util/ImsUri;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, [Lcom/sec/ims/util/ImsUri;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sec/ims/util/ImsUri;

    aget-object v0, v2, v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    :cond_1
    return-object v0
.end method

.method public removeByPhoneId(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpuMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/util/ImsUri;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 141
    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {v2}, Lcom/sec/internal/ims/util/UriGenerator;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateUriGenerator(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)V
    .locals 10

    .line 195
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 197
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v2

    .line 198
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v3

    .line 200
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 202
    invoke-static {}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->values()[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    if-nez v2, :cond_1

    .line 203
    sget-object v8, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-eq v7, v8, :cond_6

    :cond_1
    if-nez v3, :cond_2

    sget-object v8, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    if-ne v7, v8, :cond_2

    goto :goto_2

    .line 208
    :cond_2
    invoke-virtual {p0, v1, v7}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->contains(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->create(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    .line 210
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/util/UriGenerator;->extractOwnAreaCode(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/util/UriGenerator;->updateRat(I)V

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {p0, v1, v7}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    :goto_1
    if-eqz v2, :cond_4

    .line 217
    sget-object v9, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v8, v9, p2}, Lcom/sec/internal/ims/util/UriGenerator;->updateNetworkPreferredUriType(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 220
    sget-object v9, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v8, v9, p2}, Lcom/sec/internal/ims/util/UriGenerator;->updateNetworkPreferredUriType(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;)V

    .line 223
    :cond_5
    invoke-virtual {p0, v1, v8, v7}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->add(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)V

    :cond_6
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
