.class public Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
.super Ljava/lang/Object;
.source "IHttpAdapter.java"


# static fields
.field private static final CHARSET:Ljava/lang/String; = "utf-8"

.field public static final EXCEPTION_CONNECT:I = 0x322

.field public static final EXCEPTION_SOCKET:I = 0x323

.field public static final EXCEPTION_SOCKET_TIMEOUT:I = 0x324

.field public static final EXCEPTION_SSL:I = 0x321

.field public static final EXCEPTION_SSL_HANDSHAKE:I = 0x320

.field public static final EXCEPTION_UNKNOWN_HOST:I = 0x325

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBody:[B

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatusCode:I

.field private mStatusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    .line 68
    iput-object p2, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusMessage:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    .line 70
    iput-object p4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    .line 71
    invoke-direct {p0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->debugPrint()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(ILjava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Map;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;[B)V"
        }
    .end annotation

    .line 75
    const-string p1, ""

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;-><init>(ILjava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method private debugPrint()V
    .locals 13

    .line 108
    const-string/jumbo v0, "utf-8"

    sget-object v1, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP(S) response : status code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HR:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x13030000

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object v4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 115
    const-string v4, "+++ HTTP(S) response : header"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    const-string v7, "["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_0
    sget-object v4, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 128
    :cond_1
    sget-object v1, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    const-string v2, "--- HTTP(S) response : header"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    if-eqz v1, :cond_4

    .line 133
    sget-object v1, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    const-string v2, "+++ HTTP(S) response : body"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    invoke-direct {v2, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v4, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    array-length v6, v4

    const/16 v7, 0x100

    if-le v6, v7, :cond_3

    .line 139
    new-instance v2, Ljava/lang/String;

    const/16 v6, 0x80

    invoke-direct {v2, v4, v5, v6, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    array-length v4, p0

    sub-int/2addr v4, v6

    invoke-direct {v2, p0, v4, v6, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 142
    :cond_3
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 145
    :goto_2
    sget-object v0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsupportedEncodingException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_3
    sget-object p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->LOG_TAG:Ljava/lang/String;

    const-string v0, "--- HTTP(S) response : body"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isDiagnosticsAllowed()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 151
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd/yyyy HH:mm:ss.SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 152
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_5

    .line 155
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, ""

    const-string v12, ""

    const/4 v5, 0x1

    const/16 v7, 0x64

    const/4 v8, 0x1

    const-string v10, ""

    invoke-interface/range {v4 .. v12}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mBody:[B

    return-object p0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mHeader:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    return p0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusCode:I

    return-void
.end method

.method public setStatusMessage(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->mStatusMessage:Ljava/lang/String;

    return-void
.end method
