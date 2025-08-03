.class public Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;
.super Ljava/lang/Object;
.source "GbaServiceModuleProxy.java"


# static fields
.field private static mProxy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mProxy:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mContext:Landroid/content/Context;

    .line 13
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 24
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mProxy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 17
    sget-object v1, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mProxy:Landroid/util/SparseArray;

    new-instance v2, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mProxy:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized getContext()Landroid/content/Context;
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mContext:Landroid/content/Context;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    .line 28
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGbaServiceModule(Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .locals 0

    monitor-enter p0

    .line 39
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
