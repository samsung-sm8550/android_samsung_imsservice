.class public Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;
.super Ljava/lang/Object;
.source "ErrorMsg.java"


# instance fields
.field mType:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

.field public mTypeResId:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;->mType:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    .line 6
    iput p2, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;->mTypeResId:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorMsg [mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;->mType:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTypeResId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;->mTypeResId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
