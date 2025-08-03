.class public Lcom/sec/internal/extension/mvno/handler/RegiHandler;
.super Lcom/sec/internal/extension/mvno/handler/BaseHandler;
.source "RegiHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiHandler"

.field private static final MAX_RETRY_COUNT:I = 0x3


# instance fields
.field private mRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/internal/extension/mvno/handler/BaseHandler;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/sec/internal/extension/mvno/handler/RegiHandler;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public dispose(ILcom/sec/ims/util/SipError;)Z
    .locals 2

    .line 17
    sget-object p1, Lcom/sec/internal/extension/mvno/handler/RegiHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose, mRetryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/extension/mvno/handler/RegiHandler;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget p1, p0, Lcom/sec/internal/extension/mvno/handler/RegiHandler;->mRetryCount:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 19
    iput v1, p0, Lcom/sec/internal/extension/mvno/handler/RegiHandler;->mRetryCount:I

    return v1

    .line 23
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    const/16 p2, 0x193

    if-eq p1, p2, :cond_1

    return v1

    .line 26
    :cond_1
    iget p1, p0, Lcom/sec/internal/extension/mvno/handler/RegiHandler;->mRetryCount:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sec/internal/extension/mvno/handler/RegiHandler;->mRetryCount:I

    return p2
.end method
