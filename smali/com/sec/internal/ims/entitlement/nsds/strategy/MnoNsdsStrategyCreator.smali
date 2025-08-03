.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;
.super Ljava/lang/Object;
.source "MnoNsdsStrategyCreator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MnoNsdsStrategyCreator"

.field private static sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static sMnoSpecificStrategyGenerator:Ljava/util/Map;
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
.field private sMnoStrategy:Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->initMnoSpecificStrategy()V

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->createMnoStrategy(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoStrategy:Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    return-void
.end method

.method private createMnoStrategy(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    .locals 3

    .line 57
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 58
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMnoStrategy: Mno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    sget-object p2, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 60
    sget-object p2, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 61
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
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

    .line 65
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;
    .locals 4

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 42
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    invoke-direct {v3, p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static initMnoSpecificStrategy()V
    .locals 3

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    .line 50
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/TmoNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/AttNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoSpecificStrategyGenerator:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCI:Lcom/sec/internal/constants/Mno;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/XaaNsdsStrategy;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized resetMnoStrategy()V
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sInstanceMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 32
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getMnoStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/strategy/MnoNsdsStrategyCreator;->sMnoStrategy:Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    return-object p0
.end method
