.class public Lcom/sec/internal/ims/cmstore/utils/RetryParam;
.super Ljava/lang/Object;
.source "RetryParam.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RetryParam"


# instance fields
.field private errorCode:I

.field private last_executed:J

.field private mrequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p2, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->retryCount:I

    .line 14
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->mrequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->last_executed:J

    .line 16
    iput p3, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->errorCode:I

    return p0
.end method

.method public getLastExecuted()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->last_executed:J

    return-wide v0
.end method

.method public getMrequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->mrequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    return-object p0
.end method

.method public getRetryCount()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->retryCount:I

    return p0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->errorCode:I

    return-void
.end method

.method public setLastExecuted()V
    .locals 2

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->last_executed:J

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->retryCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry count :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRequest :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->mrequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " last_executed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->last_executed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
