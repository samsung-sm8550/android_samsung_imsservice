.class public Lcom/sec/internal/ims/config/ConfigProvider;
.super Landroid/content/ContentProvider;
.source "ConfigProvider.java"


# static fields
.field public static final CONFIG_DB_NAME_PREFIX:Ljava/lang/String; = "config_"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigProvider"

.field private static final MAX_SERVER_COUNT:I

.field private static final N_PARAMETER:I = 0x1

.field private static final SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

.field static final mAppIdMap:Ljava/util/Map;
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


# instance fields
.field final mAppIdServerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConfigTableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

.field private mMatcher:Landroid/content/UriMatcher;

.field final mServerIdStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetLboPcscfAddresses(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPublicUserIdentities(Lcom/sec/internal/ims/config/ConfigProvider;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitStorage(Lcom/sec/internal/ims/config/ConfigProvider;Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misChatParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isChatParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misFtExtraParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isFtExtraParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misImExtraParam(Lcom/sec/internal/ims/config/ConfigProvider;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->isImExtraParam(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 67
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    sput v1, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    .line 81
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    .line 86
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    .line 87
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    sget-object v2, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 445
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    return-void
.end method

.method static getCapAllowedPrefixes(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 949
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move v3, v2

    :goto_0
    if-eqz v1, :cond_0

    .line 952
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 953
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v3, v2

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1313
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1316
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->buildIdentity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLboPcscfAddresses(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 850
    const-string/jumbo p0, "root/application/0/lbo_p-cscf_address/"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 857
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    const-string/jumbo p0, "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 865
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 866
    :cond_1
    const-string/jumbo p0, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 873
    :goto_1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 874
    :cond_2
    const-string/jumbo p0, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method static getLboPcscfAddresses(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 783
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 784
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 785
    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 787
    const-string v3, "address"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "addresstype"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    move v3, v0

    .line 794
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v5, "/"

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v7, "root/application/0/3gpp_ims/lbo_p-cscf_address/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "root/application/0/lbo_p-cscf_address/lbo_p-cscf_addresses/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "root/application/0/lbo_p-cscf_address/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move v6, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo v7, "root/application/0/3gpp_ims/lbo_p-cscf_addresses/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move v6, v0

    :goto_1
    packed-switch v6, :pswitch_data_0

    const/4 v5, 0x0

    goto :goto_2

    .line 804
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "node/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    .line 796
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    .line 801
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_5

    .line 810
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 811
    invoke-interface {v2, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v3, v1

    goto/16 :goto_0

    :cond_5
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x409a212a -> :sswitch_3
        0x6c8301b9 -> :sswitch_2
        0x70ebeb3d -> :sswitch_1
        0x7236b704 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getPublicUserIdentities(Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 826
    const-string/jumbo p0, "root/application/0/public_user_identity_list/"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 831
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 832
    :cond_0
    const-string/jumbo p0, "root/application/0/public_user_identity_list/public_user_identities/"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    .line 837
    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 838
    :cond_1
    const-string/jumbo p0, "root/application/0/3gpp_ims/public_user_identity_list/"

    invoke-static {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static getPublicUserIdentities(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 753
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 754
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 758
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v5, "/"

    const-string/jumbo v6, "public_user_identity"

    const/4 v7, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v8, "root/application/0/public_user_identity_list/public_user_identities/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v8, "root/application/0/3gpp_ims/public_user_identity_list/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    move v7, v0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v8, "root/application/0/public_user_identity_list/"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    packed-switch v7, :pswitch_data_0

    const/4 v5, 0x0

    goto :goto_2

    .line 763
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    .line 766
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "node/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    goto :goto_2

    .line 760
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_3

    .line 772
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 773
    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/2addr v4, v0

    goto/16 :goto_0

    :cond_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x25dd5b27 -> :sswitch_2
        0x38c1752e -> :sswitch_1
        0x3bc5c97c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAdditionalStorage: phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 400
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_6

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 394
    :goto_0
    sget v4, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v4, :cond_1

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/access-control/default/app-id/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v2

    .line 408
    :goto_2
    sget v4, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v0, v4, :cond_5

    move v4, v2

    .line 409
    :goto_3
    sget v5, Lcom/sec/internal/ims/config/ConfigProvider;->MAX_SERVER_COUNT:I

    if-ge v4, v5, :cond_3

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "root/access-control/server/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/app-id/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p5, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_4

    .line 415
    :cond_2
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 418
    :cond_3
    :goto_4
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_5

    .line 422
    :cond_4
    new-instance v4, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v4}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    .line 423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 424
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 427
    :cond_5
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mAppIdServerIdMap "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mServerIdStorageMap "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez p3, :cond_7

    .line 432
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0

    .line 434
    :cond_7
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 435
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 436
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz p3, :cond_8

    return-object p3

    .line 441
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0
.end method

.method private initConfigTable()V
    .locals 6

    .line 473
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 474
    const-string/jumbo v1, "version"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 475
    const-string/jumbo v1, "validity"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 476
    const-string/jumbo v1, "token"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 478
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadRootAppParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 479
    const-string v1, "home_network_domain_name"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 480
    const-string/jumbo v1, "private_user_identity"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 481
    const-string/jumbo v1, "public_user_identity"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 482
    const-string v1, "address"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 483
    const-string v1, "addresstype"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 484
    const-string v1, "keep_alive_enabled"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 485
    const-string v1, "Timer_T1"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 486
    const-string v1, "Timer_T2"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 487
    const-string v1, "Timer_T4"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 488
    const-string v1, "RegRetryBaseTime"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 489
    const-string v1, "RegRetryMaxTime"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 491
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 492
    const-string v1, "maxsizeimageshare"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 493
    const-string v1, "maxtimevideoshare"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 494
    const-string/jumbo v2, "q-value"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 495
    const-string v2, "inturlfmt"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 496
    const-string v2, "naturlfmt"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 497
    const-string/jumbo v2, "rcsVolteSingleRegistration"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 498
    const-string v2, "endUserConfReqId"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 499
    const-string/jumbo v2, "uuid_Value"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 501
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadAppAuthParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 502
    const-string v2, "UserName"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 503
    const-string v2, "UserPwd"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 504
    const-string/jumbo v2, "realm"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 506
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 507
    const-string v2, "SupportedRCSVersions"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 508
    const-string v2, "SupportedRCSProfileVersions"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 509
    const-string/jumbo v2, "rcsState"

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 510
    const-string/jumbo v3, "rcsDisabledState"

    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 511
    const-string/jumbo v4, "presencePrfl"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 512
    const-string v4, "ChatAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 513
    const-string v4, "GroupChatAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 514
    const-string v4, "ftAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 515
    const-string/jumbo v4, "standaloneMsgAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 516
    const-string v4, "geolocPullAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 517
    const-string v4, "geolocPushAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 518
    const-string/jumbo v4, "vsAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 519
    const-string v4, "isAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 520
    const-string/jumbo v4, "rcsIPVoiceCallAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 521
    const-string/jumbo v4, "rcsIPVideoCallAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 522
    const-string v4, "IR94VideoAuth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 523
    const-string v4, "allowRCSExtensions"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 525
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadDataOffParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 526
    const-string/jumbo v4, "rcsMessagingDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 527
    const-string v4, "fileTransferDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 528
    const-string/jumbo v4, "smsoIPDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 529
    const-string v4, "mmsDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 530
    const-string/jumbo v4, "volteDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 531
    const-string v4, "IPVideoCallDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 532
    const-string/jumbo v4, "provisioningDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 533
    const-string/jumbo v4, "syncDataOff"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 535
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCapDiscoveryParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 536
    const-string v4, "disableInitialAddressBookScan"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 537
    const-string/jumbo v4, "pollingperiod"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 538
    const-string/jumbo v4, "pollingrate"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 539
    const-string/jumbo v4, "pollingrateperiod"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 540
    const-string v4, "capinfoexpiry"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 541
    const-string v4, "nonRCScapInfoExpiry"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 542
    const-string v4, "defaultdisc"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 543
    const-string v4, "capDiscCommonStack"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 544
    const-string v4, "maxentriesinlist"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 545
    const-string v4, "capdiscoveryallowedprefixes"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 546
    const-string v4, "msgcapvalidity"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 547
    const-string v4, "lastseenactive"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 549
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPresenceParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 550
    const-string v4, "PublishTimer"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 551
    const-string/jumbo v4, "source-throttlepublish"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 552
    const-string v4, "max-number-ofsubscriptions-inpresence-list"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 553
    const-string v4, "RLS-URI"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 554
    const-string v4, "locinfomaxvalidtime"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 555
    const-string v4, "client-obj-datalimit"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 557
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadImFtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 558
    const-string v4, "imMsgTech"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 559
    const-string v4, "imcapalwayson"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 560
    const-string v4, "imWarnSF"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 561
    const-string v4, "GroupChatFullStandFwd"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 562
    const-string v4, "GroupChatOnlyFStandFwd"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 563
    const-string/jumbo v4, "smsfallbackauth"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 564
    const-string v4, "imCapNonRCS"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 565
    const-string v4, "imwarniw"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 566
    const-string v4, "autaccept"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 567
    const-string v4, "imsessionstart"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 568
    const-string v4, "autacceptgroupchat"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 569
    const-string v4, "firstMessageInvite"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 570
    const-string v4, "TimerIdle"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 571
    const-string v4, "maxConcurrentSession"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 572
    const-string v4, "multiMediaChat"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 573
    const-string v4, "MaxSize"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 574
    const-string v5, "maxsize1to1"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 575
    const-string v5, "maxsize1tom"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 576
    const-string v5, "ftWarnSize"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 577
    const-string v5, "MaxSizeFileTr"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 578
    const-string v5, "MaxSizeFileTrIncoming"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 579
    const-string v5, "ftThumb"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 580
    const-string v5, "ftStAndFwEnabled"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 581
    const-string v5, "ftCapalwaysON"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 582
    const-string v5, "ftautaccept"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 583
    const-string v5, "ftHTTPCSURI"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 584
    const-string v5, "ftHTTPDLURI"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 585
    const-string v5, "ftHTTPCSUser"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 586
    const-string v5, "ftHTTPCSPwd"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 587
    const-string v5, "ftDefaultMech"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 588
    const-string v5, "ftHTTPFallback"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 589
    const-string/jumbo v5, "pres-srv-cap"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 590
    const-string v5, "deferred-msg-func-uri"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 591
    const-string v5, "max_adhoc_group_size"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 592
    const-string v5, "conf-fcty-uri"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 593
    const-string v5, "exploder-uri"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 594
    const-string v5, "mass-fcty-uri"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 595
    const-string v5, "ChatRevokeTimer"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 596
    const-string v5, "ftHTTPftWarnSize"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 597
    const-string v5, "ftHTTPMaxSizeFileTr"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 598
    const-string v5, "ftHTTPMaxSizeFileTrIncoming"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 599
    const-string v5, "max_adhoc_open_group_size"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 600
    const-string v5, "im-spam-reporting-uri"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 601
    const-string v5, "cbftHTTPCSURI"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 602
    const-string v5, "MaxSizeExtraFileTr"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 603
    const-string v5, "ftHTTPExtraCSURI"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 604
    const-string v5, "MaxIMDNAggregation"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 606
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadEnrichedCallingParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 607
    const-string v5, "composerAuth"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 608
    const-string/jumbo v5, "sharedMapAuth"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 609
    const-string/jumbo v5, "sharedSketchAuth"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 610
    const-string/jumbo v5, "postCallAuth"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 611
    const-string v5, "VBCAuth"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 612
    const-string v5, "contentShareDataOff"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 613
    const-string/jumbo v5, "preAndPostCallDataOff"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 615
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadStandalonMsgParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 616
    const-string v5, "MaxSizeStandalone"

    invoke-direct {p0, v5, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 617
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 618
    const-string v4, "SwitchoverSize"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 620
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadCpmMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 621
    const-string v4, "Url"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 622
    const-string v4, "AuthProt"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 623
    const-string v4, "messagestore/UserName"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 624
    const-string v4, "messagestore/UserPwd"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 625
    const-string v4, "EventRpting"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 626
    const-string v4, "AuthArchive"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 627
    const-string v4, "SyncTimer"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 628
    const-string v4, "DataConnectionSyncTimer"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 629
    const-string v4, "SMSStore"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 630
    const-string v4, "MMSStore"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 632
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadOtherParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 633
    const-string/jumbo v4, "warnsizeimageshare"

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 634
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 635
    const-string v1, "extensionsMaxMSRPSize"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 636
    const-string v1, "callComposerTimerIdle"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 640
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadXdmsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 641
    const-string/jumbo v1, "xcaprooturi"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 643
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadTransportProtoParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 644
    const-string/jumbo v1, "psmedia"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 645
    const-string/jumbo v1, "wifimedia"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 646
    const-string/jumbo v1, "pssignalling"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 647
    const-string/jumbo v1, "wifisignalling"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 648
    const-string/jumbo v1, "psrtmedia"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 649
    const-string/jumbo v1, "pssignallingroaming"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 650
    const-string/jumbo v1, "psmediaroaming"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 651
    const-string/jumbo v1, "psrtmediaroaming"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 652
    const-string/jumbo v1, "wifirtmedia"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 654
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPublicAccountParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 655
    const-string/jumbo v1, "publicaccount/Addr"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 656
    const-string/jumbo v1, "publicaccount/AddrType"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 658
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPersonalProfileParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 659
    const-string/jumbo v1, "profile/addr"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 660
    const-string/jumbo v1, "profile/addrtype"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 662
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadUxParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 663
    const-string v1, "messagingUX"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 664
    const-string/jumbo v1, "userAliasAuth"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 665
    const-string/jumbo v1, "spamNotificationText"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 666
    const-string/jumbo v1, "tokenLinkNotificationText"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 667
    const-string/jumbo v1, "unavailableEndpointText"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 668
    const-string/jumbo v1, "videoAndEnCallUX"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 669
    const-string v1, "IR51SwitchUx"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 670
    const-string v1, "msgFBDefault"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 671
    const-string v1, "ftFBDefault"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 672
    const-string v1, "callLogsBearerDiffer"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 673
    const-string v1, "allowEnrichedChatbotSearchDefault"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 674
    const-string v1, "ext/realtimeUserAliasAuth"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 676
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadClientControlParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 677
    const-string/jumbo v1, "reconnectGuardTimer"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 678
    const-string v1, "cfsTrigger"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 679
    const-string v1, "max1toManyRecipients"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 680
    const-string v1, "1toManySelectedTech"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 681
    const-string v1, "displayNotificationSwitch"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 682
    const-string v1, "ftMax1ToManyRecipients"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 683
    const-string/jumbo v1, "serviceAvailabilityInfoExpiry"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 684
    const-string v1, "ftHTTPCapAlwaysOn"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 686
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMsisdnParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 687
    const-string/jumbo v1, "skip_count"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 688
    const-string v1, "msgui_display"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 690
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadChatbotParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 691
    const-string v1, "ChatbotDirectory"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 692
    const-string v1, "BotinfoFQDNRoot"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 693
    const-string v1, "ChatbotBlacklist"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 694
    const-string v1, "MsgHistorySelectable"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 695
    const-string v1, "SpecificChatbotsList"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 696
    const-string v1, "IdentityInEnrichedSearch"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 697
    const-string v1, "PrivacyDisable"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 698
    const-string v1, "ChatbotMsgTech"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 700
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadMessageStoreParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 701
    const-string v1, "MsgStoreUrl"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 702
    const-string v1, "MsgStoreNotifUrl"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 703
    const-string v1, "MsgStoreAuth"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 704
    const-string v1, "MsgStoreUserName"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 705
    const-string v1, "MsgStoreUserPwd"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 707
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadPluginsParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 708
    const-string v1, "catalogURI"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 710
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 711
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 712
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 714
    new-instance v0, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigProvider$ReadServiceProviderExtParm;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    .line 715
    const-string/jumbo v1, "spgUrl"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 716
    const-string/jumbo v1, "params-url"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 717
    const-string v1, "NMS_URL"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 718
    const-string v1, "NC_URL"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 719
    const-string v1, "fthttpGroupChat"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 720
    const-string v1, "chatbot/Username"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    .line 721
    const-string v1, "chatbot/Password"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigProvider;->setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V

    return-void
.end method

.method private initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;"
        }
    .end annotation

    .line 316
    invoke-static {p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->getIdentityByPhoneId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string p1, "ConfigProvider"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initStorage: phone:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " no identity"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mEmptyStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0

    .line 330
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 337
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 340
    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 342
    const-string v3, "ConfigProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initStorage: phone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " get storage from configmodule"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 348
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    :cond_4
    if-nez v2, :cond_5

    .line 352
    const-string v2, "ConfigProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initStorage: phone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " no storage :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 355
    :cond_5
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 356
    const-string v4, "ConfigProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initStorage: phone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " different identity :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 359
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :goto_2
    new-instance v2, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v2}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    .line 367
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v8, v2

    .line 370
    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 371
    const-string v2, "ConfigProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initStorage: phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " open storage :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v8, v0, v7, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 376
    :cond_7
    const-string/jumbo v0, "root/access-control/server/0/app-id/0"

    invoke-interface {v8, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    .line 377
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/config/ConfigProvider;->initAdditionalStorage(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v8

    .line 380
    :cond_8
    monitor-exit v1

    return-object v8

    .line 381
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isChatParam(Ljava/lang/String;)Z
    .locals 0

    .line 1057
    const-string p0, "autaccept"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "autacceptgroupchat"

    .line 1058
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ChatRevokeTimer"

    .line 1059
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "conf-fcty-uri"

    .line 1060
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "max_adhoc_group_size"

    .line 1061
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxSize"

    .line 1062
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "TimerIdle"

    .line 1063
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "im-spam-reporting-uri"

    .line 1064
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private isFtExtraParam(Ljava/lang/String;)Z
    .locals 0

    .line 1068
    const-string p0, "ftautaccept"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPCSPwd"

    .line 1069
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPCSURI"

    .line 1070
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPDLURI"

    .line 1071
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPCSUser"

    .line 1072
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPFallback"

    .line 1073
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftWarnSize"

    .line 1074
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxSizeFileTr"

    .line 1075
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private isImExtraParam(Ljava/lang/String;)Z
    .locals 0

    .line 1050
    const-string p0, "cbftHTTPCSURI"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxSizeExtraFileTr"

    .line 1051
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "ftHTTPExtraCSURI"

    .line 1052
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "MaxIMDNAggregation"

    .line 1053
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 216
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    new-instance v3, Ljava/util/TreeMap;

    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "queryMultipleStorage path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " map "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ConfigProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    .line 220
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 224
    :cond_0
    const-string/jumbo v4, "root/application/*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 229
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 230
    const-string/jumbo p1, "root"

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string v4, "application/*"

    .line 231
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\\*#simslot\\d"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    .line 236
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 237
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    .line 226
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    return-object v3

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryStorage path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 182
    const-string/jumbo p0, "provider is not ready, return empty!"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v2, "#simslot\\d"

    const-string v4, ""

    if-ne v1, v3, :cond_1

    .line 188
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 189
    const-string p2, "content://com.samsung.rcs.autoconfigurationprovider/parameter/"

    invoke-virtual {v0, p2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 189
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->readDataByParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 192
    :cond_1
    const-string p0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-virtual {v0, p0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    .line 196
    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    return-object p0
.end method

.method private readDataByParam(Ljava/lang/String;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    .line 726
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;

    if-eqz p0, :cond_1

    .line 731
    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;->readParam(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private setConfigTable(Ljava/lang/String;Lcom/sec/internal/ims/config/ConfigProvider$IReadConfigParam;)V
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mConfigTableMap:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 248
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 249
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete uri:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ConfigProvider"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string p3, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 255
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p1

    .line 257
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 258
    const-string/jumbo p0, "provider is not ready, return empty!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_0
    const-string p3, "content://com.samsung.rcs.autoconfigurationprovider/"

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "#simslot\\d"

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 264
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->delete(Ljava/lang/String;)I

    move-result p1

    .line 265
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return p1

    .line 251
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getStorageByPath(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 7

    .line 1340
    const-string/jumbo v0, "root/application/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1366
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 1341
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2f

    .line 1342
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 1343
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1344
    sget-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 1350
    :cond_0
    const-string/jumbo v0, "root/vers/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1351
    sget-object p1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    const-string v0, "0"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    :cond_1
    if-eqz v3, :cond_5

    .line 1354
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1357
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1358
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdServerIdMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 1360
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    if-eqz v0, :cond_3

    return-object v0

    .line 1366
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0

    .line 1355
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mServerIdStorageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    return-object p0
.end method

.method getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 4

    .line 1320
    invoke-static {p1}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 1322
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1324
    const-string/jumbo v1, "root/application/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x45

    .line 1325
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2f

    .line 1326
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1327
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1328
    sget-object v1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    .line 1331
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/config/ConfigProvider;->mAppIdMap:Ljava/util/Map;

    const-string v1, "0"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1335
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->initStorage(Landroid/content/Context;ILjava/util/List;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 271
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9

    .line 276
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ConfigProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/#]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v1

    .line 286
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->getState()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_0

    .line 287
    const-string/jumbo p0, "provider is not ready, return empty!"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 291
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 293
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.samsung.rcs.autoconfigurationprovider/"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "#simslot\\d"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 295
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    :cond_2
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 302
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1

    .line 280
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 4

    .line 101
    const-string v0, "ConfigProvider"

    const-string v1, "ConfigProvider was created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/sec/internal/ims/config/ConfigProvider;->initConfigTable()V

    .line 105
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 106
    const-string v1, "com.samsung.rcs.autoconfigurationprovider"

    const-string/jumbo v2, "parameter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/ConfigProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/ConfigProvider$1;-><init>(Lcom/sec/internal/ims/config/ConfigProvider;)V

    sget-object p0, Lcom/sec/internal/ims/config/ConfigProvider;->SIM_STATE_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 129
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 130
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "query uri:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ConfigProvider"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string p3, "^content://com.samsung.rcs.autoconfigurationprovider/[\\.\\w-_/*#]*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 139
    const-string/jumbo p3, "root/*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string/jumbo p3, "root/application/*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "content://com.samsung.rcs.autoconfigurationprovider/*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->getStorageByUri(Landroid/net/Uri;)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->queryStorage(Landroid/net/Uri;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigProvider;->queryMultipleStorage(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_4

    .line 145
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    .line 150
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 151
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 154
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    aput-object p5, p1, p3

    .line 156
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    aput-object p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 160
    :cond_3
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0

    .line 146
    :cond_4
    :goto_3
    const-string p0, "can not find readData from mStorage"

    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a correct AutoConfigurationProvider Uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 310
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p0

    return p0
.end method
