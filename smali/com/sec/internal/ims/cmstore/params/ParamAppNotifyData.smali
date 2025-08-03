.class public Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;
.super Ljava/lang/Object;
.source "ParamAppNotifyData.java"


# instance fields
.field public mBufferDbId:J

.field public mIsBin:Z

.field public mIsFt:Z

.field public mIsSpam:Z

.field public mTableIndx:I


# direct methods
.method public constructor <init>(IJZZZ)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mBufferDbId:J

    .line 12
    iput-boolean p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mIsFt:Z

    .line 13
    iput p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mTableIndx:I

    .line 14
    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mIsBin:Z

    .line 15
    iput-boolean p6, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mIsSpam:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamAppNotifyData [mTableIndx= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mTableIndx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBufferDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mBufferDbId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mIsBin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mIsBin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSpam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamAppNotifyData;->mIsSpam:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
