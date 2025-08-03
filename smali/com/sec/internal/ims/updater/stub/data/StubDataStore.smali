.class abstract Lcom/sec/internal/ims/updater/stub/data/StubDataStore;
.super Ljava/lang/Object;
.source "StubDataStore.java"


# static fields
.field protected static final KEY_CONTENT_SIZE:Ljava/lang/String; = "content_size"

.field protected static final KEY_RESULT_CODE:Ljava/lang/String; = "result_code"

.field protected static final KEY_RESULT_MSG:Ljava/lang/String; = "result_msg"

.field protected static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"

.field private static final LOG_TAG:Ljava/lang/String; = "StubDataStore"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$6Hr_yTgbji1jzdoDFVF6s767XSU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->lambda$fetch$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YhrpXV8Ue-4axlQYyXGYSAvRKCk(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->lambda$fetch$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cSPRJqf-5t-bCIytZ3cFqvICf9M(Lcom/sec/internal/ims/updater/stub/data/StubDataStore;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->lambda$get$2(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jaYuqp_3MLp_a5ABLcRY7inScbc(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->lambda$get$3(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda4;-><init>()V

    .line 50
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 51
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$fetch$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 49
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$fetch$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 54
    sget-object v0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not exists!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$get$2(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 68
    :try_start_0
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    sget-object p3, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get() failed! "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$get$3(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 82
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    sget-object v0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get() failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cache(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getResultCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "result_code"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string/jumbo v0, "result_msg"

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getResultMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string/jumbo v0, "version_code"

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getContentSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "content_size"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public clearCache()V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected contains(Ljava/lang/String;)Z
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method get(Ljava/lang/String;I)I
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda0;-><init>(I)V

    .line 79
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method get(Ljava/lang/String;J)J
    .locals 2

    .line 64
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/stub/data/StubDataStore;JLjava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method get(Ljava/lang/String;Z)Z
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore$$ExternalSyntheticLambda2;-><init>()V

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 94
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method protected notifyChange()V
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.sec.imsservice.updatable"

    .line 118
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "stub_debug"

    .line 119
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method remove(Ljava/lang/String;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method save(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 33
    sget-object v0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    instance-of v0, p2, Ljava/lang/Long;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 44
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
