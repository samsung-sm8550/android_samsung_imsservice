.class public abstract Lcom/sec/internal/ims/updater/stub/data/StubResponseData;
.super Ljava/lang/Object;
.source "StubResponseData.java"


# static fields
.field public static final INTERNAL_ERROR_FILE_SIZE_MISMATCHED:I = -0xbb9

.field public static final INTERNAL_ERROR_NON_NUMERIC:I = -0x270f

.field public static final INTERNAL_ERROR_NOT_ENOUGH_SPACE:I = -0x22b8

.field public static final INTERNAL_ERROR_SIGNATURE_MISMATCHED:I = -0xbba

.field public static final INTERNAL_ERROR_UNKNOWN_HOST:I = -0x3e9

.field private static final TAG:Ljava/lang/String; = "StubResponseData"


# instance fields
.field protected mContentSize:J

.field protected mResultCode:Ljava/lang/String;

.field protected mResultMsg:Ljava/lang/String;

.field protected mVersionCode:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mResultCode:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mResultMsg:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mVersionCode:Ljava/lang/String;

    .line 28
    :try_start_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mContentSize:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Parsing content size failed! "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StubResponseData"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 31
    iput-wide p1, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mContentSize:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getContentSize()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mContentSize:J

    return-wide v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mResultCode:Ljava/lang/String;

    return-object p0
.end method

.method public getResultMsg()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mResultMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->mVersionCode:Ljava/lang/String;

    return-object p0
.end method
