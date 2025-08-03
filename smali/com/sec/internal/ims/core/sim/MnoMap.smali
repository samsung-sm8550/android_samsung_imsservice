.class public Lcom/sec/internal/ims/core/sim/MnoMap;
.super Ljava/lang/Object;
.source "MnoMap.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "MnoMap"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

.field private final mPhoneId:I

.field private final mTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0LScEDrkAHynclcj0dXaBM6jF5o(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1secqjgP6M9l5l37MRFuC8MHDr8(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5LQfsqXI5vsN5Zg6Pgly5UW3Ers(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FV8ngzWqmhCoWquacGmBkwXE9IY(Ljava/util/List;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->lambda$getMnoNamesFromNetworkPlmn$3(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mContext:Landroid/content/Context;

    .line 49
    iput p2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    .line 50
    new-instance v1, Lcom/sec/internal/ims/core/sim/CscNetParser;

    invoke-direct {v1, p2}, Lcom/sec/internal/ims/core/sim/CscNetParser;-><init>(I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

    .line 51
    new-instance v1, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    .line 52
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "MnoMap"

    const/16 v3, 0xc8

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->createTable()V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private applyAutoUpdate(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;I)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyMnoMapRemove(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyMnoMapAdd(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    .line 83
    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyGcBlockMccList(ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    return-void
.end method

.method private applyAutoUpdates(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdate(Ljava/util/List;I)V

    const/4 v0, 0x3

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdate(Ljava/util/List;I)V

    const/4 v0, 0x4

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdate(Ljava/util/List;I)V

    .line 71
    iget v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    const-string v1, "applyAutoUpdates for MnoMap"

    const-string v2, "MnoMap"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x5

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdate(Ljava/util/List;I)V

    return-void
.end method

.method private applyGcBlockMccList(ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V
    .locals 1

    .line 218
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->getGcBlockList()Ljava/util/List;

    move-result-object p0

    .line 219
    const-string/jumbo v0, "replace_gc_block_mcc_list"

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 223
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 224
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonElement;

    .line 225
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyMnoMapAdd(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;I",
            "Lcom/sec/internal/ims/settings/ImsAutoUpdate;",
            ")V"
        }
    .end annotation

    move/from16 v0, p2

    .line 87
    const-string v1, "add_mnomap"

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 91
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 92
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 93
    const-string v3, "mccmnc"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "subset"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    const-string v5, "gid1"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    const-string v6, "gid2"

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "mnoname"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 96
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 99
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 100
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string/jumbo v4, "spname"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto :goto_1

    :cond_0
    move-object v13, v6

    .line 106
    :goto_1
    const-string v4, "hosted_roaming"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_2

    :cond_1
    move-object v15, v6

    .line 109
    :goto_2
    new-instance v2, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-object v8, v2

    move-object v14, v3

    invoke-direct/range {v8 .. v15}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    .line 110
    iget-object v5, v2, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoUpdate : add MnoMap : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by resource : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private applyMnoMapRemove(Ljava/util/List;ILcom/sec/internal/ims/settings/ImsAutoUpdate;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;I",
            "Lcom/sec/internal/ims/settings/ImsAutoUpdate;",
            ")V"
        }
    .end annotation

    move/from16 v0, p2

    .line 118
    const-string/jumbo v1, "remove_mnomap"

    move-object/from16 v2, p3

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getMnomap(ILjava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 122
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 123
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 124
    const-string v3, "mccmnc"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "subset"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    const-string v5, "gid1"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "gid2"

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    const-string v7, "mnoname"

    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 127
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 128
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 129
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 130
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 132
    const-string/jumbo v3, "spname"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    :cond_0
    move-object v13, v5

    .line 135
    :goto_1
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 137
    const-string v4, "hosted_roaming"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 138
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_2

    :cond_1
    move-object v15, v5

    .line 140
    :goto_2
    new-instance v2, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    move-object v8, v2

    move-object v14, v3

    invoke-direct/range {v8 .. v15}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    .line 141
    iget-object v5, v2, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AutoUpdate : remove MnoMap : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by resource : "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v4, p1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private createTableFromMnoMap(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 151
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$0(Ljava/lang/String;)Z
    .locals 1

    .line 431
    const-string v0, "DEFAULT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$1(Ljava/lang/String;)Z
    .locals 1

    .line 432
    const-string v0, "GoogleGC_ALL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 433
    sget-object v0, Lcom/sec/internal/constants/Mno;->GC_BLOCK_EXTENSION:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getMnoNamesFromNetworkPlmn$3(Ljava/util/List;)Ljava/util/Set;
    .locals 1

    .line 430
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda2;-><init>()V

    .line 431
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda3;-><init>()V

    .line 432
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda4;-><init>()V

    .line 433
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 434
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private mergeTableFromCustomerXml()V
    .locals 10

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mCscNetParser:Lcom/sec/internal/ims/core/sim/CscNetParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->getCscNetworkInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;

    .line 167
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getIdentifiers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 168
    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-nez v7, :cond_2

    goto :goto_1

    .line 170
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 171
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->equalsWithoutMnoName(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 173
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->setMnoName(Ljava/lang/String;)V

    move v4, v6

    :cond_4
    if-eqz v4, :cond_1

    .line 182
    :cond_5
    const-string v2, "MnoMap"

    if-eqz v4, :cond_a

    .line 184
    iget v4, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createTable merge: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getIdentifiers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 190
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_8

    .line 192
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 193
    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->contains(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v5, v6

    goto :goto_3

    :cond_8
    move v5, v3

    :goto_3
    if-nez v5, :cond_6

    .line 202
    iget v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add new networkd identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 203
    iget-object v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_9

    .line 205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 207
    :cond_9
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v7, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMccMnc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 212
    :cond_a
    iget v3, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not found Mno for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method


# virtual methods
.method public changeMnoNameByIccid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 240
    iget p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeMnoNameByIccid(), simOp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MnoMap"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    const-string p0, "CTC"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 242
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 244
    :cond_0
    const-string p0, "CTCMO"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 245
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 247
    :cond_1
    const-string p0, "CTG"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 248
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTG:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_2
    const-string p0, "APT"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 251
    sget-object p0, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 254
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/Mno;->CORIOLIS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object p1

    .line 257
    :cond_4
    const-string p0, "20801"

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "893327"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 258
    const-string p0, "CORIOLIS iccid is not match => Change Mno name to GoogleGC"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object p0, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 261
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->CORIOLIS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public createTable()V
    .locals 3

    .line 60
    iget v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    const-string v1, "createTable: init"

    const-string v2, "MnoMap"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->parse()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->applyAutoUpdates(Ljava/util/List;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/MnoMap;->createTableFromMnoMap(Ljava/util/List;)V

    .line 64
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/MnoMap;->mergeTableFromCustomerXml()V

    return-void
.end method

.method public dump()V
    .locals 3

    .line 440
    iget v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    const-string v1, "\nDump of MnoMap"

    const-string v2, "MnoMap"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 441
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getHostedRoamingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 362
    const-string v2, ""

    if-nez v1, :cond_0

    .line 364
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 367
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 369
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 370
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_4

    const/4 v4, 0x0

    .line 373
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-eq v5, v6, :cond_3

    .line 374
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x58

    if-ne v5, v6, :cond_2

    goto :goto_2

    .line 377
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 379
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getHostedRoamingList()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    :goto_3
    :try_start_2
    const-string v5, "MnoMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid subset - mnomap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SIM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 388
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 389
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 391
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getHostedRoamingList()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 395
    :cond_5
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 396
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 398
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getHostedRoamingList()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 402
    :cond_6
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 404
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->setSpName(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 407
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 408
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 410
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getHostedRoamingList()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 415
    :cond_7
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getHostedRoamingList()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 422
    :cond_8
    :goto_4
    const-string p2, "MnoMap"

    iget p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHostedRoamingList: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") => "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 423
    monitor-exit v0

    return-object v2

    .line 424
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getMnoName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 268
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    :goto_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    .line 270
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/extension/mvno/IMvnoController;->getFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 271
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/MnoMap;->isGcBlockListContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/constants/Mno;->TS32_DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@BLOCKGC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->TS32_DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    .line 272
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    if-eqz p3, :cond_2

    move-object v5, p3

    goto :goto_3

    :cond_2
    const-string v5, ""

    :goto_3
    if-eqz p4, :cond_3

    move-object v6, p4

    goto :goto_4

    :cond_3
    const-string v6, ""

    :goto_4
    invoke-interface {v3, v4, v5, v6}, Lcom/sec/internal/extension/mvno/IMvnoController;->setSimInfo(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    .line 277
    monitor-exit v0

    return-object v2

    .line 280
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 283
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_9

    const/4 v4, 0x0

    .line 286
    :goto_6
    :try_start_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-eq v5, v6, :cond_8

    .line 287
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x58

    if-ne v5, v6, :cond_7

    goto :goto_7

    .line 290
    :cond_7
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 292
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_b

    :catch_0
    move-exception v4

    goto :goto_8

    :cond_8
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 296
    :goto_8
    :try_start_2
    const-string v5, "MnoMap"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid subset - mnomap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", SIM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v4}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    .line 301
    :cond_9
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 302
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 304
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 308
    :cond_a
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 309
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 311
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b

    .line 315
    :cond_b
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 316
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->setSpName(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    .line 319
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 320
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 322
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 327
    :cond_c
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSubset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 328
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getGid2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getSpName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 330
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 332
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    if-eqz p3, :cond_d

    move-object v6, p3

    goto :goto_9

    .line 333
    :cond_d
    const-string v6, ""

    :goto_9
    if-eqz p4, :cond_e

    move-object v7, p4

    goto :goto_a

    :cond_e
    const-string v7, ""

    .line 332
    :goto_a
    invoke-interface {v4, v5, p1, v6, v7}, Lcom/sec/internal/extension/mvno/IMvnoController;->isMatchedTs32Profile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 335
    const-string v3, "MnoMap"

    iget v4, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    const-string v5, "The entire loop must be checked before setting to the TS32 profile."

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_5

    .line 346
    :cond_f
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->getMnoName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    .line 350
    :cond_10
    :goto_b
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 351
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;

    move-result-object p2

    iget v1, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    invoke-interface {p2, v1}, Lcom/sec/internal/extension/mvno/IMvnoController;->reset(I)V

    .line 353
    :cond_11
    const-string p2, "MnoMap"

    iget p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMnoName: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") => "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    monitor-exit v0

    return-object v2

    .line 355
    :goto_c
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getMnoNamesFromNetworkPlmn(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mTable:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/sim/MnoMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 436
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isGcBlockListContains(Ljava/lang/String;)Z
    .locals 3

    .line 232
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->getGcBlockList()Ljava/util/List;

    move-result-object v0

    const-string v2, "*"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoMap;->mMnoMapJsonParser:Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoMapJsonParser;->getGcBlockList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
