.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;
.super Ljava/util/TimerTask;
.source "EncryptedLogger.java"


# instance fields
.field private mPath:Ljava/nio/file/Path;

.field final synthetic this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;


# direct methods
.method public static synthetic $r8$lambda$NyXCp9UOgvMmm0Q4coqUlK216jI(Ljava/nio/file/Path;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->lambda$run$0(Ljava/nio/file/Path;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;Ljava/nio/file/Path;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 386
    iput-object p2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->mPath:Ljava/nio/file/Path;

    return-void
.end method

.method private static synthetic lambda$run$0(Ljava/nio/file/Path;)Z
    .locals 1

    .line 392
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "main"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->mPath:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->-$$Nest$fgetlastWriteTime(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->-$$Nest$fputlastWriteTime(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;J)V

    .line 395
    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;->this$2:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-static {p0}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$mwriteSecretKeyToLogcat(Lcom/sec/internal/log/EncryptedLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 398
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
