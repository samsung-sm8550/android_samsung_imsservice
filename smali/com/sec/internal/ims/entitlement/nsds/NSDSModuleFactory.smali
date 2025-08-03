.class public Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;
.super Ljava/lang/Object;
.source "NSDSModuleFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NSDSModuleFactory"

.field private static final mSimMno:[Lcom/sec/internal/constants/Mno;

.field private static sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->GCI:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mSimMno:[Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mServiceLooper:Landroid/os/Looper;

    .line 27
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;

    return-object v0
.end method


# virtual methods
.method public getNsdsModule(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleBase;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 43
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getNsdsModule: simManager null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 48
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mSimMno:[Lcom/sec/internal/constants/Mno;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-ne v5, v1, :cond_1

    .line 50
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNsdsModule: sim mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mServiceLooper:Landroid/os/Looper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSModuleFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-object v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
