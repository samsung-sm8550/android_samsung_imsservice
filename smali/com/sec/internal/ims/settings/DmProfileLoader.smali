.class public Lcom/sec/internal/ims/settings/DmProfileLoader;
.super Ljava/lang/Object;
.source "DmProfileLoader.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DmProfileLoader"

.field protected static mIsKorOp:Z

.field protected static mLboPcscfAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mLboPcscfPort:I

.field protected static mSmsOverIms:Z

.field protected static mValueList:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    const/4 v0, -0x1

    .line 34
    sput v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 36
    sput-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 9

    const-class v0, Lcom/sec/internal/ims/settings/DmProfileLoader;

    monitor-enter v0

    .line 43
    :try_start_0
    const-string v1, "./3GPP_IMS/LBO_P-CSCF_Address"

    .line 44
    const-string v2, "Address"

    .line 45
    sget-object v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 46
    sget-object v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, -0x1

    .line 47
    sput v3, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 48
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    sput-boolean v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    .line 49
    const-string v4, "DmProfileLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsKorOp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string/jumbo v4, "omadm/*"

    invoke-static {p0, v4, p2}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v4

    .line 54
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 57
    const-string/jumbo v7, "omadm/"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {v6, v5}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_0

    .line 61
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x5b

    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_2

    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_2

    .line 63
    const-string v8, "]:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    .line 64
    const-string v8, "]:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_1

    add-int/lit8 v8, v8, 0x2

    .line 66
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 69
    :cond_1
    :goto_1
    sget-object v8, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/16 v6, 0x3a

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    add-int/lit8 v7, v6, 0x1

    .line 75
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    const/4 v7, 0x0

    .line 76
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 78
    :cond_3
    sget-object v6, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_2
    sget v5, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    if-ne v5, v3, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v5

    sput v5, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    goto/16 :goto_0

    .line 87
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 88
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v1

    sput v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 92
    :cond_5
    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v1, :cond_6

    .line 93
    const-string/jumbo v1, "sms_over_ip_network_indication"

    const-string v2, ""

    invoke-static {p0, v1, v2, p2}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "1"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    sput-boolean p0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 94
    const-string p0, "DmProfileLoader"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSmsOverIms: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 96
    :cond_6
    invoke-static {p0, p2}, Lcom/sec/ims/settings/NvConfiguration;->getSmsIpNetworkIndi(Landroid/content/Context;I)Z

    move-result p0

    sput-boolean p0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 99
    :goto_3
    new-instance p0, Lcom/sec/ims/settings/ImsProfile;

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 100
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit v0

    return-object p0

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method private static getIntValue(Ljava/lang/String;)I
    .locals 3

    .line 217
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_0

    const v0, -0x186a0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 221
    :goto_0
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no Value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DmProfileLoader"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public static getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method private static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 229
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static getUriIndex(Ljava/lang/String;)I
    .locals 5

    .line 234
    sget-object v0, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 235
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./3GPP_IMS/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V
    .locals 1

    .line 260
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_0

    const v0, -0x186a0

    if-eq p2, v0, :cond_1

    .line 262
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    .line 266
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getUriIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return-void

    .line 256
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 6

    .line 106
    const-string v0, "DmProfileLoader"

    const-string/jumbo v1, "updateDbInfoToProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "12"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer1(I)V

    .line 110
    :cond_0
    const-string v0, "13"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer2(I)V

    .line 113
    :cond_1
    const-string v0, "14"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 114
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer4(I)V

    .line 116
    :cond_2
    const-string v0, "15"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 117
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerA(I)V

    .line 119
    :cond_3
    const-string v0, "16"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 120
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerB(I)V

    .line 122
    :cond_4
    const-string v0, "17"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    .line 123
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerC(I)V

    .line 125
    :cond_5
    const-string v0, "18"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    .line 126
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerD(I)V

    .line 128
    :cond_6
    const-string v0, "19"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    .line 129
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerE(I)V

    .line 131
    :cond_7
    const-string v0, "20"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    .line 132
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerF(I)V

    .line 134
    :cond_8
    const-string v0, "21"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 135
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerG(I)V

    .line 137
    :cond_9
    const-string v0, "22"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    .line 138
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerH(I)V

    .line 140
    :cond_a
    const-string v0, "23"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    .line 141
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerI(I)V

    .line 143
    :cond_b
    const-string v0, "24"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    .line 144
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerJ(I)V

    .line 146
    :cond_c
    const-string v0, "25"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    .line 147
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerK(I)V

    .line 150
    :cond_d
    const-string v0, "66"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrnboa_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 151
    const-string v0, "67"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrnbbe_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 152
    const-string v0, "64"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrwboa_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 153
    const-string v0, "65"

    .line 154
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 153
    const-string v1, "amrwbbe_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 155
    const-string v0, "71"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dtmf_nb_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 156
    const-string v0, "70"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dtmf_wb_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 157
    const-string v0, "69"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_qvga_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 158
    const-string v0, "68"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_vga_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 159
    const-string v0, "108"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_vgal_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 160
    const-string v0, "132"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h263_qcif_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 161
    const-string v0, "60"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio_port_start"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 162
    const-string v0, "61"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio_port_end"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 163
    const-string v0, "62"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "video_port_start"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 164
    const-string v0, "63"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "video_port_end"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 165
    const-string v0, "129"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    .line 166
    const-string v1, "evs_payload"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v1, v4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 167
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v3

    goto :goto_0

    :cond_e
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_evs_codec"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    :cond_f
    const-string v0, "131"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 170
    const-string v1, "evs_default_bitrate"

    .line 171
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_10
    const-string v0, "130"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 174
    const-string v1, "evs_default_bandwidth"

    .line 175
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_11
    const-string v0, "73"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setSmsPsi(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfAddressList(Ljava/util/List;)V

    .line 179
    sget v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfPort(I)V

    .line 180
    const-string v0, "6"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amrnb_mode"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "7"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amrwb_mode"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "36"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "publish_timer"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 183
    const-string v0, "37"

    .line 184
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 183
    const-string v1, "extended_publish_timer"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 185
    const-string v0, "26"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cap_cache_exp"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 186
    const-string v0, "27"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cap_poll_interval"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 187
    const-string v0, "28"

    .line 188
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 187
    const-string/jumbo v1, "src_throttle_publish"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 189
    const-string v0, "35"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "poll_list_sub_exp"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 190
    const-string v0, "38"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_12

    move v0, v3

    goto :goto_1

    :cond_12
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_gzip"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    const-string v0, "29"

    .line 192
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 191
    const-string/jumbo v1, "subscribe_max_entry"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 193
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setSupportSmsOverIms(Z)V

    .line 194
    const-string v0, "90"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dm_polling_period"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 195
    const-string v0, "116"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "support_ipsec"

    if-ltz v1, :cond_14

    .line 196
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_13

    move v1, v3

    goto :goto_2

    :cond_13
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    :cond_14
    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v1, :cond_16

    .line 199
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const v5, -0x186a0

    if-eq v1, v5, :cond_16

    .line 200
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_15

    move v0, v3

    goto :goto_3

    :cond_15
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    :cond_16
    const-string v0, "72"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_18

    .line 205
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_17

    move v2, v3

    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "volte_service_status"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    :cond_18
    const-string v0, "55"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v0, "55"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 208
    const-string v0, "audio_capabilities"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_19
    const-string v0, "159"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h265_hd720p_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 211
    const-string v0, "84"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "reg_retry_base_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 212
    const-string v0, "85"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "reg_retry_max_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    return-void
.end method
