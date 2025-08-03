.class public Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;
.super Ljava/lang/Object;
.source "UserConsentPersistenceNotifier.java"


# instance fields
.field private mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;
    .locals 1

    .line 42
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier$UserConsentPersistenceNotifierHolder;->-$$Nest$sfgetmUserConsentPersistenceNotifier()Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public notifyListener(I)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    if-eqz p0, :cond_0

    .line 62
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;->notifyChanged(I)V

    :cond_0
    return-void
.end method

.method public notifyListener(Ljava/lang/String;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 74
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;->notifyChanged(I)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/tapi/IUserConsentListener;

    return-void
.end method
