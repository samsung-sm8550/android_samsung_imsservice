.class public Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;
.super Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;
.source "NotificationEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NotificationEucWorkflow"


# instance fields
.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V

    .line 41
    invoke-static {p4}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    return-void
.end method


# virtual methods
.method public changeLanguage(Ljava/lang/String;)V
    .locals 1

    .line 82
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->changeLanguage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    return-void
.end method

.method public createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic discard(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->discard(Ljava/lang/String;)V

    return-void
.end method

.method public handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 66
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to store EUC with key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in persistence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    move-result-object p0

    .line 76
    invoke-interface {v0, p1, v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V

    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->NOTIFICATION:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    invoke-interface {v2, v3, v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v4, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 55
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->combine(Ljava/util/List;Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->loadToCache(Ljava/lang/Iterable;)V

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->displayQueries(Ljava/lang/Iterable;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/NotificationEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to obtain EUCs from persistence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic start()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->start()V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->stop()V

    return-void
.end method
