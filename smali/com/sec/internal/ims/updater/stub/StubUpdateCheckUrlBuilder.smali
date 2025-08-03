.class public Lcom/sec/internal/ims/updater/stub/StubUpdateCheckUrlBuilder;
.super Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;
.source "StubUpdateCheckUrlBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StubUpdateCheckUrlBuilder"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public build()Ljava/net/URL;
    .locals 3

    .line 20
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StubUpdateCheckUrlBuilder"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;->getCommonUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "versionCode"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 28
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buildDownloadUrl failed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic setExtuk(Ljava/lang/String;)Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;
    .locals 0

    .line 12
    invoke-super {p0, p1}, Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;->setExtuk(Ljava/lang/String;)Lcom/sec/internal/ims/updater/stub/StubUrlBuilder;

    move-result-object p0

    return-object p0
.end method
