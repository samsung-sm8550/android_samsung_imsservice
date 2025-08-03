.class public Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;
.super Ljava/lang/Object;
.source "EucPersistenceNotifier.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;


# instance fields
.field private final mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

.field private final mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistence;Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    .line 38
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->close()V

    return-void
.end method

.method public getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllEucs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllEucs(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDialogs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucState;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getEucByKey(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p0

    return-object p0
.end method

.method public getVolatileEucByMostRecentTimeout(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getVolatileEucByMostRecentTimeout(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p0

    return-object p0
.end method

.method public insertAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertAutoconfUserConsent(Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;)V

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;->getOwnIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(Ljava/lang/String;)V

    return-void
.end method

.method public insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(Ljava/lang/String;)V

    return-void
.end method

.method public insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    return-void
.end method

.method public open()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->open()V

    return-void
.end method

.method public updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mEucrPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceNotifier;->mUserConsentPersistenceNotifier:Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;->getOwnIdentity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/UserConsentPersistenceNotifier;->notifyListener(Ljava/lang/String;)V

    return-void
.end method
