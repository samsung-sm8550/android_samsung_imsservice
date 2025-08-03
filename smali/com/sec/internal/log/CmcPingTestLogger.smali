.class public Lcom/sec/internal/log/CmcPingTestLogger;
.super Ljava/lang/Object;
.source "CmcPingTestLogger.java"


# static fields
.field private static final GOOGLE_PUBLIC_NAMESERVER:Ljava/lang/String; = "8.8.8.8"

.field private static LOG_TAG:Ljava/lang/String; = "CmcPingTestLogger"

.field private static final MAX_PING_COUNT:I = 0x3

.field private static final PING_TIMEOUT_SECONDS:I = 0x5

.field private static final PingServer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VCOyoNNNOly106g8qk_eEEDj6YE(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/log/CmcPingTestLogger;->lambda$ping$0(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/log/CmcPingTestLogger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/sec/internal/log/CmcPingTestLogger$1;

    invoke-direct {v0}, Lcom/sec/internal/log/CmcPingTestLogger$1;-><init>()V

    sput-object v0, Lcom/sec/internal/log/CmcPingTestLogger;->PingServer:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$ping$0(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V
    .locals 7

    .line 54
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 55
    new-array v2, v1, [Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 61
    :cond_0
    new-instance v4, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;

    const-string v5, "8.8.8.8"

    aget-object v6, v2, v3

    invoke-direct {v4, v5, v6, v0}, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    if-eqz p0, :cond_1

    .line 63
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 64
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 66
    const-string v4, "[-\\.]"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 67
    array-length v4, p0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 68
    sget-object v4, Lcom/sec/internal/log/CmcPingTestLogger;->PingServer:Ljava/util/Map;

    aget-object p0, p0, v1

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 70
    new-instance v4, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v4, p0, v5, v0}, Lcom/sec/internal/log/CmcPingTestLogger$PingThread;-><init>(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 74
    :cond_1
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    :goto_1
    if-ge v3, v1, :cond_2

    .line 77
    aget-object p0, v2, v3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/CmcPingTestLogger;->makePingLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0x70000009

    .line 78
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 82
    invoke-interface {p1, v1}, Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;->OnFinish(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 86
    :goto_2
    sget-object p1, Lcom/sec/internal/log/CmcPingTestLogger;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method

.method private static makePingLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 93
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v2, "PING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_1

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 101
    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo v2, "packets transmitted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "/"

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 110
    :cond_2
    const-string/jumbo v2, "rtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-ge v4, v5, :cond_0

    .line 113
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    aget-object v2, v1, v4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ping(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0}, Lcom/sec/internal/log/CmcPingTestLogger;->ping(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V

    return-void
.end method

.method public static ping(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;",
            ")V"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/log/CmcPingTestLogger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/log/CmcPingTestLogger$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lcom/sec/internal/log/CmcPingTestLogger$OnFinishListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
