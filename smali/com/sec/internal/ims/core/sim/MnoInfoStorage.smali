.class Lcom/sec/internal/ims/core/sim/MnoInfoStorage;
.super Ljava/lang/Object;
.source "MnoInfoStorage.java"


# instance fields
.field private final mMnoInfo:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    .line 21
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->init()V

    return-void
.end method


# virtual methods
.method getAll()Landroid/content/ContentValues;
    .locals 1

    .line 49
    const-class v0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method getInt(Ljava/lang/String;I)I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method init()V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 26
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "imsSwitchType"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method size()I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    const-string v1, "imsi"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "***************"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method update(Landroid/content/ContentValues;)V
    .locals 1

    .line 43
    const-class v0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/MnoInfoStorage;->mMnoInfo:Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
