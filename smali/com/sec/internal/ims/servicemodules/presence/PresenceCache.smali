.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;
.super Ljava/lang/Object;
.source "PresenceCache.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceCache"

.field private static final MAX_CACHE_SIZE:I = 0xc8

.field private static final PERSIST_MAX_SIZE:I = 0x64

.field private static final PERSIST_TIMEOUT:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPersistPosted:Z

.field private mPersistTimeout:Z

.field private mPhoneId:I

.field private final mPresenceInfoList:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

.field private mPresenceStorageHandler:Landroid/os/Handler;

.field private mThread:Landroid/os/HandlerThread;

.field private mUriListToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mUriListToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AQ21bdgeSdUrznoz6keT39RRrI8(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->lambda$tryPersist$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$e_fHrpVjPZe3uJdI4FE8gPfAUHU(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->lambda$tryPersist$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$i0Fag4p0zlY8P6bU22TSy7QifGA(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->lambda$resetPresenceStorage$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PresenceStorage"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mIsPersistPosted:Z

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPersistTimeout:Z

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mContext:Landroid/content/Context;

    .line 60
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPhoneId:I

    .line 61
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->initPresenceStorage()V

    return-void
.end method

.method private initPresenceStorage()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPhoneId:I

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

    return-void
.end method

.method private synthetic lambda$resetPresenceStorage$0()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->reset()V

    return-void
.end method

.method private synthetic lambda$tryPersist$1()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: try remainder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPersistTimeout:Z

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->tryPersist(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryPersist$2(Z)V
    .locals 3

    if-nez p1, :cond_1

    .line 76
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPersistTimeout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mIsPersistPosted:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mIsPersistPosted:Z

    .line 84
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryPersist: force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", timeout = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPersistTimeout:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PresenceCache"

    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mIsPersistPosted:Z

    .line 79
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPersistTimeout:Z

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->persist()V

    :cond_2
    :goto_1
    return-void
.end method

.method private resetPresenceStorage()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tryPersist(Z)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 97
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 154
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->resetPresenceStorage()V

    return-void
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/PresenceInfo;

    if-nez v0, :cond_1

    .line 136
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPhoneId:I

    const-string v1, "get: not found. presenceInfo from db"

    const-string v2, "PresenceCache"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public get(Ljava/util/Set;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceStorage:Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceStorage;->get(Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTrashedUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public getUpdatedUriList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public remove(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceCache"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 111
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    .line 114
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->tryPersist(Z)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresenceCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/presence/PresenceInfo;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mPresenceInfoList:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getTelUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 123
    const-string p0, "PresenceCache"

    const-string/jumbo p1, "update: uri is the same with telUri. skip"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->mUriListToUpdate:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 127
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->tryPersist(Z)V

    return-void
.end method
