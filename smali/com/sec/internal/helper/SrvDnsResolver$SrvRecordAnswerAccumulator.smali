.class Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;
.super Ljava/lang/Object;
.source "SrvDnsResolver.java"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/DnsResolver$Callback<",
        "[B>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SrvRecordAnswerAccum"


# instance fields
.field private final mNetwork:Landroid/net/Network;

.field private final mUserCallback:Landroid/net/DnsResolver$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUserExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$32Mw-fILdAH-hh_2iUZjheMaJQ0(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->lambda$onError$2(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9TIdGUjWm7lzPnRtzHpxu9KPiNc(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->lambda$onAnswer$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$bKf6mnbp4F52T6doYtYIHwAmcgw(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->lambda$onAnswer$0(Ljava/util/List;I)V

    return-void
.end method

.method constructor <init>(Landroid/net/Network;Landroid/net/DnsResolver$Callback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1    # Landroid/net/Network;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/DnsResolver$Callback;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mNetwork:Landroid/net/Network;

    .line 234
    iput-object p2, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    .line 235
    iput-object p3, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private composeSrvRecordResult(Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;,
            Landroid/net/DnsResolver$DnsException;
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-virtual {p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;->parseSrvRecords()Ljava/util/Map;

    move-result-object p1

    .line 296
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 316
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 317
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 320
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse$SrvRecord;

    iget v1, v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse$SrvRecord;->port:I

    .line 321
    invoke-direct {p0, v2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->queryDns(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 322
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 323
    new-instance v4, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;

    invoke-direct {v4, v3, v1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordInetAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static getInternalExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 226
    sget-object v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$LazyExecutor;->INSTANCE:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private synthetic lambda$onAnswer$0(Ljava/util/List;I)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    invoke-interface {p0, p1, p2}, Landroid/net/DnsResolver$Callback;->onAnswer(Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic lambda$onAnswer$1()V
    .locals 1

    .line 338
    iget-object p0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method private synthetic lambda$onError$2(Landroid/net/DnsResolver$DnsException;)V
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserCallback:Landroid/net/DnsResolver$Callback;

    invoke-interface {p0, p1}, Landroid/net/DnsResolver$Callback;->onError(Landroid/net/DnsResolver$DnsException;)V

    return-void
.end method

.method private queryDns(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 245
    new-instance v7, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$1;

    invoke-direct {v7, p0, v0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$1;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/concurrent/CompletableFuture;)V

    .line 262
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mNetwork:Landroid/net/Network;

    new-instance v5, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    .line 263
    invoke-virtual/range {v1 .. v7}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;ILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    .line 266
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 272
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 274
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 269
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 277
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onAnswer(Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 214
    check-cast p1, [B

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->onAnswer([BI)V

    return-void
.end method

.method public onAnswer([BI)V
    .locals 2
    .param p1    # [B
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 332
    :try_start_0
    new-instance v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;-><init>([B)V

    .line 333
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->composeSrvRecordResult(Lcom/sec/internal/helper/SrvDnsResolver$SrvResponse;)Ljava/util/List;

    move-result-object p1

    .line 334
    iget-object v0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/android/net/module/util/DnsPacket$ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/DnsResolver$DnsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    const-string p1, "SrvRecordAnswerAccum"

    const-string p2, "Exception occurs, send error to do ARES DNS query once again"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p1, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 2
    .param p1    # Landroid/net/DnsResolver$DnsException;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SrvRecordAnswerAccum"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;->mUserExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator;Landroid/net/DnsResolver$DnsException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
