.class public Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;
.super Lcom/sec/internal/ims/updater/stub/data/StubResponseData;
.source "DownloadInfo.java"


# static fields
.field static final DOWNLOAD_URL_RESPONDED:Ljava/lang/String; = "1"

.field static final EXPIRATION_OF_DOWNLOAD_URL:Ljava/time/Duration;


# instance fields
.field private mDownloadUri:Ljava/lang/String;

.field protected mFetchedTime:Ljava/time/Instant;

.field private mSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0xa

    .line 10
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->EXPIRATION_OF_DOWNLOAD_URL:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p5, p4}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p3, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mDownloadUri:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mSignature:Ljava/lang/String;

    .line 28
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mFetchedTime:Ljava/time/Instant;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p7, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mFetchedTime:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public getDownloadUri()Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mDownloadUri:Ljava/lang/String;

    return-object p0
.end method

.method public getFetchedTime()Ljava/time/Instant;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mFetchedTime:Ljava/time/Instant;

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mSignature:Ljava/lang/String;

    return-object p0
.end method

.method public isExpired()Z
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mFetchedTime:Ljava/time/Instant;

    sget-object v0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->EXPIRATION_OF_DOWNLOAD_URL:Ljava/time/Duration;

    invoke-virtual {p0, v0}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object p0

    .line 55
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result p0

    return p0
.end method

.method public isUrlResponded()Z
    .locals 1

    .line 38
    const-string v0, "1"

    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mResultCode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadInfo [Result code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mResultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Result msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mResultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Download uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mDownloadUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Content size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mContentSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Version code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Fetched time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/DownloadInfo;->mFetchedTime:Ljava/time/Instant;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
