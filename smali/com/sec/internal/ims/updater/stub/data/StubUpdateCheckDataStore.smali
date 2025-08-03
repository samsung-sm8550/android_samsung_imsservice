.class public Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;
.super Lcom/sec/internal/ims/updater/stub/data/StubDataStore;
.source "StubUpdateCheckDataStore.java"


# static fields
.field static final FILE_NAME:Ljava/lang/String; = "stub_update_check"

.field static final KEY_EXTRA_VALUE:Ljava/lang/String; = "extra_value"

.field static final KEY_LAST_IMS_VERSION:Ljava/lang/String; = "last_ims_version"

.field static final KEY_LAST_SW_UPDATE_TIME:Ljava/lang/String; = "last_sw_update_time"

.field static final KEY_LAST_SW_VERSION:Ljava/lang/String; = "last_sw_version"

.field static final KEY_NEXT_SCHEDULE_TIME:Ljava/lang/String; = "next_schedule_time"

.field static final KEY_UPDATE_CHECK_INTERVAL:Ljava/lang/String; = "update_check_interval"

.field static final KEY_UPDATE_CHECK_REASON:Ljava/lang/String; = "update_check_reason"

.field static final KEY_USER_ACCEPTED:Ljava/lang/String; = "user_accepted"


# direct methods
.method public static synthetic $r8$lambda$dRbnqMDi1UdcCvIOuSQ64KnSuAA(Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->isNotForUpdateInformation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    const-string/jumbo v0, "stub_update_check"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isNotForUpdateInformation(Ljava/lang/String;)Z
    .locals 3

    .line 139
    const-string p0, "last_sw_update_time"

    const-string v0, "next_schedule_time"

    const-string v1, "last_sw_version"

    const-string v2, "last_ims_version"

    filled-new-array {v1, v2, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 144
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public bridge synthetic cache(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 0

    .line 13
    invoke-super {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->cache(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    return-void
.end method

.method public cache(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->cache(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    .line 100
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;->getExtraValue()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo$ExtraValue;

    move-result-object p1

    .line 101
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "extra_value"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public clearCache()V
    .locals 0

    .line 127
    invoke-super {p0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->clearCache()V

    .line 128
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->notifyChange()V

    return-void
.end method

.method public clearCacheExceptUpdateInfo()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;)V

    .line 134
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;)V

    .line 135
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public clearNextScheduleTime()V
    .locals 1

    .line 94
    const-string v0, "next_schedule_time"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public getCache()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;
    .locals 10

    .line 109
    const-string/jumbo v0, "result_code"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    const-string/jumbo v2, "result_msg"

    .line 116
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "version_code"

    const-string v5, "-1"

    .line 117
    invoke-virtual {p0, v2, v5}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "content_size"

    const-wide/16 v6, -0x1

    .line 118
    invoke-virtual {p0, v2, v6, v7}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v2, "extra_value"

    const-string/jumbo v7, "{}"

    .line 119
    invoke-virtual {p0, v2, v7}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "update_check_interval"

    .line 120
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "user_accepted"

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Z)Z

    move-result v9

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getLastImsPackageVersion()J
    .locals 3

    .line 39
    const-string v0, "last_ims_version"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSwVersion()Ljava/lang/String;
    .locals 2

    .line 35
    const-string v0, "last_sw_version"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastUpdateTime()Ljava/time/Instant;
    .locals 3

    .line 43
    const-string v0, "last_sw_update_time"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 45
    :cond_0
    sget-object p0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    :goto_0
    return-object p0
.end method

.method public getNextScheduleTime()Ljava/time/Instant;
    .locals 3

    .line 53
    const-string v0, "next_schedule_time"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    goto :goto_0

    .line 55
    :cond_0
    sget-object p0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    :goto_0
    return-object p0
.end method

.method public getUpdateCheckInterval()I
    .locals 2

    .line 83
    const-string/jumbo v0, "update_check_interval"

    const-string v1, "1D"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "D"

    const-string v1, ""

    .line 84
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 86
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public getUpdateCheckReason()I
    .locals 2

    .line 31
    const-string/jumbo v0, "update_check_reason"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public onUserAccepted()V
    .locals 2

    .line 105
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v1, "user_accepted"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveLastUpdateTime(Ljava/time/Instant;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "last_sw_update_time"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveNextScheduleTime(Ljava/time/Instant;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "next_schedule_time"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->notifyChange()V

    return-void
.end method

.method public saveUpdateCheckInterval(Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string/jumbo v0, "update_check_interval"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public saveUpdateCheckReason(I)V
    .locals 1

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "update_check_reason"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveUpdateInformation(Ljava/lang/String;JLjava/time/Instant;)V
    .locals 1

    .line 63
    const-string v0, "last_sw_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_ims_version"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_sw_update_time"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->notifyChange()V

    return-void
.end method
