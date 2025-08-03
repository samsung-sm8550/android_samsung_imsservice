.class public Lcom/sec/internal/ims/updater/stub/DownloadRequester;
.super Lcom/sec/internal/ims/updater/stub/StubHttpRequester;
.source "DownloadRequester.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadRequester"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;-><init>()V

    .line 14
    new-instance v0, Lcom/sec/internal/ims/updater/stub/StubDownloadUrlBuilder;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/updater/stub/StubDownloadUrlBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->mUrlBuilder:Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;

    return-void
.end method


# virtual methods
.method protected onRequestReady()V
    .locals 3

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->mListener:Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;

    new-instance v1, Lcom/sec/internal/ims/updater/stub/DownloadResponseParser;

    invoke-super {p0}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->request()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/updater/stub/DownloadResponseParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/internal/ims/updater/stub/DownloadResponseParser;->parse()Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;->onResponse(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request failed! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadRequester"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->mListener:Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;

    new-instance v1, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo$Failure;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo$Failure;-><init>(Ljava/lang/Exception;)V

    invoke-interface {p0, v1}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;->onResponse(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    :goto_0
    return-void
.end method
