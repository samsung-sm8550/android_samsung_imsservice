.class public Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;
.super Ljava/lang/Object;
.source "ErrorRule.java"


# instance fields
.field mErrorCode:Ljava/lang/String;

.field mErrorMsg:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

.field mFailEvent:I

.field mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

.field mRetryEvent:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mErrorCode:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    .line 23
    iput p3, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryEvent:I

    .line 24
    iput p4, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    .line 25
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mErrorMsg:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorRule [mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryAttr:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mRetryEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFailEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mFailEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;->mErrorMsg:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
