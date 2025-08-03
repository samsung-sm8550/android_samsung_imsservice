.class public Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
.super Ljava/lang/Object;
.source "EntitlementConfigFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EntitlementConfigFactory"

.field private static sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

.field private static sSalesCodeConfigImplMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/constants/Mno;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sSalesCodeConfigImplMap:Ljava/util/Map;

    .line 22
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mServiceLooper:Landroid/os/Looper;

    .line 29
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;
    .locals 1

    .line 39
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sInstance:Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;

    return-object v0
.end method


# virtual methods
.method public getDeviceConfigModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 48
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createMnoStrategy: mno = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sSalesCodeConfigImplMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 52
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->sSalesCodeConfigImplMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/os/Looper;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mServiceLooper:Landroid/os/Looper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->mContext:Landroid/content/Context;

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 58
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
