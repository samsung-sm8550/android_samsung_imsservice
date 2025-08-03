.class public Lcom/sec/internal/ims/updater/UpdateDownloader;
.super Ljava/lang/Object;
.source "UpdateDownloader.java"

# interfaces
.implements Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateDownloader"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

.field mDownloadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field mDownloadFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field mDownloadRequester:Lcom/sec/internal/ims/updater/stub/DownloadRequester;

.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

.field mSignatureValidator:Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;

.field mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;


# direct methods
.method public static synthetic $r8$lambda$UsFwwUEgRa_nORB8xGHp6t979x0(Lcom/sec/internal/ims/updater/UpdateDownloader;Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->lambda$requestDownloadInfo$1(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rivQ6TcRtlRfzuVD-MXa862gVaY(Lcom/sec/internal/ims/updater/UpdateDownloader;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateDownloader;->lambda$downloadUpdate$0()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

    .line 58
    iput-object p3, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    .line 59
    iput-object p4, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 61
    new-instance p2, Lcom/sec/internal/ims/updater/stub/DownloadRequester;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/updater/stub/DownloadRequester;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadRequester:Lcom/sec/internal/ims/updater/stub/DownloadRequester;

    .line 62
    new-instance p2, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mSignatureValidator:Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;

    .line 63
    new-instance p2, Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 p1, 0x0

    .line 66
    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method private handleStubErrorResponse(I)V
    .locals 3

    .line 240
    invoke-static {p1}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->of(I)Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorCodes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDownloader"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->onDownloadFailed(I)V

    return-void
.end method

.method private synthetic lambda$downloadUpdate$0()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;->getFromStore()Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->isUrlResponded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "downloadUpdate: Valid DownloadInfo exists. Start downloading an APK!"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateDownloader;->downloadApk(Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V

    return-void

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateDownloader;->requestDownloadInfo()V

    return-void
.end method

.method private synthetic lambda$requestDownloadInfo$1(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 6

    .line 102
    check-cast p1, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestDownloadInfo: Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateDownloader"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 106
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getResultMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getResultCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getVersionCode()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 104
    const-string/jumbo v4, "requestDownloadInfo: Response: result [%s(%s)], version [%s]"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->isUrlResponded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;->cache(Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V

    .line 110
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->downloadApk(Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->readResultCode(Ljava/lang/String;)I

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    const-string v2, "SARC"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_2

    const/16 v0, -0x270f

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->handleStubErrorResponse(I)V

    return-void

    .line 120
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestDownloadInfo: Failed! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->onDownloadFailed(I)V

    return-void
.end method

.method private readResultCode(Ljava/lang/String;)I
    .locals 1

    .line 132
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "readResultCode: readResultCode failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UpdateDownloader"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x270f

    :goto_0
    return p0
.end method

.method private retryDownload()V
    .locals 4

    .line 201
    const-string v0, "UpdateDownloader"

    const-string/jumbo v1, "retryDownload: Retry in 5 seconds..."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/ImsUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/UpdateDownloader;)V

    const-wide/16 v2, 0x5

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method downloadApk(Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V
    .locals 11

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 142
    iget-object v3, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadApk: existing file size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getContentSize()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/updater/UpdateDownloader;->hasEnoughSpace(J)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 p1, -0x22b8

    .line 145
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->onDownloadFailed(I)V

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getContentSize()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const-string v4, "UpdateDownloader"

    if-ltz v3, :cond_1

    .line 150
    const-string v1, "downloadApk: Already downloaded. Validate file."

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->validateDownloadedFile(Ljava/io/File;Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 156
    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/ims/updater/util/StubUtil;->newOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 157
    :try_start_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->getDownloadUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/updater/util/StubUtil;->openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-eqz v6, :cond_2

    .line 159
    const-string v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_6

    .line 162
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getContentSize()J

    move-result-wide v6

    const/16 v2, 0x400

    .line 164
    new-array v2, v2, [B

    .line 166
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    const/4 v9, 0x0

    .line 167
    invoke-virtual {v5, v2, v9, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 168
    iget-object v8, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-interface {v8, v9, v10, v6, v7}, Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;->onDownloadApkInProgress(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_4

    .line 170
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    .line 171
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_a

    :catch_0
    move-exception v1

    goto :goto_8

    .line 174
    :cond_4
    :goto_2
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda2;-><init>()V

    :goto_3
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_9

    :goto_4
    if-eqz v1, :cond_5

    .line 162
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v1

    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    if-eqz v5, :cond_6

    .line 156
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_7
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 172
    :goto_8
    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadApk failed! "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 174
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda2;-><init>()V

    goto :goto_3

    .line 177
    :goto_9
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadApk: Finished. Downloaded size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->validateDownloadedFile(Ljava/io/File;Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V

    return-void

    .line 174
    :goto_a
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 175
    throw p0
.end method

.method downloadUpdate()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isBypassStubApis()Z

    move-result v0

    const-string v1, "UpdateDownloader"

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "downloadUpdate: bypass Stub APIs"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->getSideLoadedApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;->onDownloadComplete(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string p0, "downloadUpdate: Download in progress..."

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string v0, "downloadUpdate: Network lost. Pending download"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->register(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/UpdateDownloader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method hasEnoughSpace(J)Z
    .locals 4

    .line 232
    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr p1, v2

    const-wide/32 v2, 0x20000000

    add-long/2addr p1, v2

    .line 235
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasEnoughSpace : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  / "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UpdateDownloader"

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isFileSizeMismatched(Ljava/io/File;Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)Z
    .locals 2

    .line 227
    invoke-virtual {p2}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getContentSize()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDefaultNetworkAvailable()V
    .locals 2

    .line 262
    const-string v0, "UpdateDownloader"

    const-string/jumbo v1, "onDefaultNetworkAvailable: Resume download"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->unRegister(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateDownloader;->downloadUpdate()V

    return-void
.end method

.method public onDownloadFailed(I)V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDownloadFailed: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;->onDownloadFailed()V

    const/16 v0, -0x22b8

    if-eq p1, v0, :cond_1

    const/16 v0, -0xbb9

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateDownloader;->retryDownload()V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;->showStorageWarning()V

    :goto_0
    return-void
.end method

.method onInstallCompleted()V
    .locals 4

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;->getFromStore()Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInstallCompleted: Delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateDownloader"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :try_start_0
    invoke-static {v0}, Lcom/sec/internal/ims/updater/util/StubUtil;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInstallCompleted: Delete failed! "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;->clearCache()V

    return-void
.end method

.method requestDownloadInfo()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    const-string v1, "TYPE"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;I)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mDownloadRequester:Lcom/sec/internal/ims/updater/stub/DownloadRequester;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/updater/UpdateDownloader$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/UpdateDownloader;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->getResponse(Landroid/content/Context;Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;)V

    return-void
.end method

.method validateDownloadedFile(Ljava/io/File;Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V
    .locals 2

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/updater/UpdateDownloader;->isFileSizeMismatched(Ljava/io/File;Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)Z

    move-result v0

    const-string v1, "UpdateDownloader"

    if-eqz v0, :cond_0

    .line 207
    const-string p1, "isDownloadedFileValid: File size mismatched"

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, -0xbb9

    .line 208
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->onDownloadFailed(I)V

    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mSignatureValidator:Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;

    invoke-virtual {p2}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->getSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->validate(Ljava/io/File;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const/16 p1, -0xbba

    .line 213
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateDownloader;->onDownloadFailed(I)V

    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isSideloadingInstallEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 218
    const-string/jumbo p1, "validateDownloadedFile: Sideloading enabled."

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->getSideLoadedApkPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;->onDownloadComplete(Ljava/lang/String;)V

    return-void

    .line 223
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateDownloader;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/updater/IUpdateDownloadNotifiable;->onDownloadComplete(Ljava/lang/String;)V

    return-void
.end method
