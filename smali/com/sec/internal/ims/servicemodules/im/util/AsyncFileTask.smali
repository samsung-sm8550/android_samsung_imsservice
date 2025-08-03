.class public abstract Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;
.super Ljava/lang/Object;
.source "AsyncFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FTHTTP_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x3

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_THUMBNAIL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mState:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWorker:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RizLoC2VtSO1TYnAhw1Mg-uSaxU(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->lambda$new$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nurmXogMQrZAzlo-8XU5-pT2UC8(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->lambda$handleResult$1(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mpostIfNotInvoked(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->postIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 42
    new-instance v8, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$1;

    invoke-direct {v8}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$1;-><init>()V

    sput-object v8, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 49
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v11, 0x80

    invoke-direct {v6, v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    const/4 v1, 0x3

    const/4 v2, 0x3

    const-wide/16 v3, 0x1

    move-object v0, v9

    move-object v5, v10

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 53
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->THREAD_THUMBNAIL_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 57
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor;-><init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$SerialExecutor-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->NOT_STARTED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mState:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mWorker:Ljava/util/concurrent/Callable;

    .line 86
    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mWorker:Ljava/util/concurrent/Callable;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private handleResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$handleResult$1(Ljava/lang/Object;)V
    .locals 0

    .line 108
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 76
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 77
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->doInBackground()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->handleResult(Ljava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->handleResult(Ljava/lang/Object;)V

    .line 83
    throw v0
.end method

.method private postIfNotInvoked(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->handleResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    return-void
.end method

.method protected abstract doInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public execute(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 120
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->onPreExecute()V

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getState()Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mState:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    return-object p0
.end method

.method protected final isCancelled()Z
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 137
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->FINISHED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mState:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 128
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;->STARTED:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->mState:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$State;

    return-void
.end method
