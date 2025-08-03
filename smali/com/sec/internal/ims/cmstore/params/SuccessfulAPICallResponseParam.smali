.class public Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;
.super Ljava/lang/Object;
.source "SuccessfulAPICallResponseParam.java"


# instance fields
.field private mApiName:Ljava/lang/String;

.field public mCallFlow:Ljava/lang/String;

.field public mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mApiName:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mApiName:Ljava/lang/String;

    .line 15
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mApiName:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SuccessfulAPICallResponseParam [mApiName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mApiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
