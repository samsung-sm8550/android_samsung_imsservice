.class public Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
.super Ljava/lang/Object;
.source "WorkflowFactory.java"


# instance fields
.field private final mWorkflowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkflowThreads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowFactory-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;-><init>()V

    return-void
.end method

.method private declared-synchronized createWorkflow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .locals 1

    monitor-enter p0

    .line 29
    :try_start_0
    const-string/jumbo v0, "ts43"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    const-string p3, "Dish_US"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 31
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 32
    :cond_0
    const-string p3, "GenericIR92_US:CSpire"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "GenericIR92_US:Inland"

    .line 33
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowCSpire;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowCSpire;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :cond_3
    const-string/jumbo v0, "nsds_eur"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 39
    const-string p3, "Telefonica_GB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "TelefonicaLAB_GB"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 40
    :cond_4
    new-instance p2, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    const-class p4, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p3, p5, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 43
    :goto_1
    monitor-exit p0

    return-object p2

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public static getInstance()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearWorkflow(I)V
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 80
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createWorkflow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 7

    monitor-enter p0

    .line 47
    :try_start_0
    new-instance v6, Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Workflow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, v6

    move-object v5, p6

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->createWorkflow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/HandlerThread;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p1

    if-nez p1, :cond_0

    .line 52
    invoke-virtual {v6}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 55
    :cond_0
    :try_start_1
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {p5, p2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 56
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 57
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/os/HandlerThread;

    invoke-virtual {p5}, Landroid/os/HandlerThread;->quit()Z

    .line 59
    :cond_1
    iget-object p5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowThreads:Landroid/util/SparseArray;

    invoke-virtual {p5, p2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 60
    invoke-interface {p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllWorkflow()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    .locals 1

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->mWorkflowArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
