.class Lcom/sec/internal/helper/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sec/internal/helper/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    const/16 v0, 0x14

    .line 537
    iput v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mMaxSize:I

    const/4 v0, 0x0

    .line 538
    iput v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mOldestIndex:I

    .line 539
    iput v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mCount:I

    .line 540
    iput-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/helper/StateMachine$LogRecords-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/StateMachine$LogRecords;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V
    .locals 9

    monitor-enter p0

    .line 603
    :try_start_0
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mCount:I

    .line 604
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mMaxSize:I

    if-ge v0, v1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    new-instance v8, Lcom/sec/internal/helper/StateMachine$LogRec;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/helper/StateMachine$LogRec;-><init>(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    iget v1, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/internal/helper/StateMachine$LogRec;

    .line 608
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mOldestIndex:I

    .line 609
    iget v2, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    .line 610
    iput v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mOldestIndex:I

    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 612
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/helper/StateMachine$LogRec;->update(Lcom/sec/internal/helper/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;Lcom/sec/internal/helper/IState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized cleanup()V
    .locals 1

    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .locals 1

    monitor-enter p0

    .line 563
    :try_start_0
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Lcom/sec/internal/helper/StateMachine$LogRec;
    .locals 1

    monitor-enter p0

    .line 579
    :try_start_0
    iget v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mOldestIndex:I

    add-int/2addr v0, p1

    .line 580
    iget p1, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, p1, :cond_0

    sub-int/2addr v0, p1

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine$LogRecords;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, p1, :cond_1

    .line 584
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 586
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/helper/StateMachine$LogRec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .locals 1

    monitor-enter p0

    .line 549
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
