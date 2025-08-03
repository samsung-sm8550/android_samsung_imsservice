.class public Lcom/sec/internal/ims/core/NtpTimeController;
.super Landroid/os/Handler;
.source "NtpTimeController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/INtpTimeController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NtpTimeController"


# instance fields
.field private isForceRefreshed:Z

.field private mContext:Landroid/content/Context;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mNtpTimeChangedListnerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNtpTimeOffset:J

.field private mNtpTrustedTime:Landroid/util/NtpTrustedTime;


# direct methods
.method public static synthetic $r8$lambda$ybZFGH8sZeAU7N7KYQpKVNW_7w4(Lcom/sec/internal/ims/core/NtpTimeController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/NtpTimeController;->lambda$requestNtpTime$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 32
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    .line 29
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    return-void
.end method

.method private static isAutomaticTimeRequested(Landroid/content/Context;)Z
    .locals 3

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 143
    const-string v0, "auto_time"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 146
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAutomaticTimeRequested : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private synthetic lambda$requestNtpTime$0()V
    .locals 5

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    if-nez v0, :cond_1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 118
    iget-object v2, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 120
    iget-object v1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    .line 121
    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 122
    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/ims/core/NtpTimeController;->updateNtpTimeOffset(JI)V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 125
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "forceRefresh failed"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 129
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private declared-synchronized requestNtpTime(Z)V
    .locals 5

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/core/NtpTimeController;->isAutomaticTimeRequested(Landroid/content/Context;)Z

    move-result v0

    .line 97
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNtpTime : forceRefresh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isForceRefreshed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAutomaticTimeRequested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " hasCache="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v3, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTrustedTime:Landroid/util/NtpTrustedTime;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    const-string/jumbo v3, "null"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->isForceRefreshed:Z

    if-eqz v1, :cond_2

    .line 103
    iget-wide v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/NtpTimeController;->sendNtpTimeOffsetChanged(J)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 109
    invoke-direct {p0, v0, v1, v4}, Lcom/sec/internal/ims/core/NtpTimeController;->updateNtpTimeOffset(JI)V

    goto :goto_3

    :cond_3
    const-wide/16 v0, -0x1

    .line 111
    invoke-direct {p0, v0, v1, v4}, Lcom/sec/internal/ims/core/NtpTimeController;->updateNtpTimeOffset(JI)V

    goto :goto_3

    .line 114
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sec/internal/ims/core/NtpTimeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/NtpTimeController$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/NtpTimeController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 135
    :goto_2
    :try_start_2
    sget-object v0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method private sendNtpTimeOffsetChanged(J)V
    .locals 3

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;

    .line 83
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;->onNtpTimeOffsetChanged(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendNtpTimeOffsetChanged failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateNtpTimeOffset(JI)V
    .locals 3

    .line 72
    sget-object v0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNtpTimeOffset ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-wide p1, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    .line 75
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateNtpTimeOffset(J)V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/NtpTimeController;->sendNtpTimeOffsetChanged(J)V

    return-void
.end method


# virtual methods
.method public initSequentially()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/NtpTimeController;->requestNtpTime(Z)V

    return-void
.end method

.method public refreshNtpTime()V
    .locals 1

    const/4 v0, 0x1

    .line 68
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/NtpTimeController;->requestNtpTime(Z)V

    return-void
.end method

.method public registerNtpTimeChangedListener(Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;)V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    sget-object v1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNtpTimeChangedListener: alreadyRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-wide v0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeOffset:J

    invoke-interface {p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;->onNtpTimeOffsetChanged(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    sget-object p1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterNtpTimeChangedListener(Lcom/sec/internal/interfaces/ims/core/INtpTimeChangedListener;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNtpTimeChangedListener:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/NtpTimeController;->mNtpTimeChangedListnerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 62
    sget-object p1, Lcom/sec/internal/ims/core/NtpTimeController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
