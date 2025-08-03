.class public Lcom/sec/internal/ims/updater/stub/data/StubDownloadDataStore;
.super Lcom/sec/internal/ims/updater/stub/data/StubDataStore;
.source "StubDownloadDataStore.java"


# static fields
.field static final FILE_NAME:Ljava/lang/String; = "stub_download"

.field static final KEY_DOWNLOAD_URI:Ljava/lang/String; = "download_uri"

.field static final KEY_FETCHED_TIME:Ljava/lang/String; = "fetched_time"

.field static final KEY_SIGNATURE:Ljava/lang/String; = "signature"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    const-string/jumbo v0, "stub_download"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cache(Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->cache(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    .line 21
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->getDownloadUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "download_uri"

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    const-string/jumbo v0, "signature"

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->getFetchedTime()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "fetched_time"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic cache(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->cache(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    return-void
.end method

.method public bridge synthetic clearCache()V
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->clearCache()V

    return-void
.end method

.method public getFromStore()Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;
    .locals 11

    .line 27
    new-instance v8, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;

    .line 28
    const-string/jumbo v0, "result_code"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "result_msg"

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "download_uri"

    .line 30
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "content_size"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "version_code"

    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "signature"

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "fetched_time"

    const-wide/16 v9, -0x1

    .line 34
    invoke-virtual {p0, v0, v9, v10}, Lcom/sec/internal/ims/updater/stub/data/StubDataStore;->get(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    move-object v0, v8

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;)V

    return-object v8
.end method
