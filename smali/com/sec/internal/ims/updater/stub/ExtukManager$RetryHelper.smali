.class Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;
.super Ljava/lang/Object;
.source "ExtukManager.java"


# instance fields
.field private final RETRY_INIT_DELAY_SECS:J

.field private final RETRY_MAX_COUNT:I

.field private mBindExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mBindFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$mreset(Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->reset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretry(Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->retry()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(JILjava/lang/Runnable;)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 161
    iput v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryCount:I

    .line 167
    iput-wide p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->RETRY_INIT_DELAY_SECS:J

    .line 168
    iput p3, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->RETRY_MAX_COUNT:I

    .line 170
    iput-object p4, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryRunnable:Ljava/lang/Runnable;

    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mBindExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p1, 0x0

    .line 172
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mBindFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private getNextRetryDelaySecs()J
    .locals 6

    .line 189
    iget-wide v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->RETRY_INIT_DELAY_SECS:J

    iget p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryCount:I

    add-int/lit8 p0, p0, -0x1

    int-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 193
    iput v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryCount:I

    .line 194
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mBindFuture:Ljava/util/concurrent/Future;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private retry()Z
    .locals 6

    .line 176
    iget v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryCount:I

    iget v1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->RETRY_MAX_COUNT:I

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 180
    iput v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryCount:I

    .line 181
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->getNextRetryDelaySecs()J

    move-result-wide v2

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mBindExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryRunnable:Ljava/lang/Runnable;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mBindFuture:Ljava/util/concurrent/Future;

    .line 184
    invoke-static {}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->mRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$RetryHelper;->RETRY_MAX_COUNT:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " after "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " secs"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
