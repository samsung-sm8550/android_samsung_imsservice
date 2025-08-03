.class public Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse$RequestError;
.super Ljava/lang/Object;
.source "ServiceExceptionResponse.java"


# instance fields
.field public mException:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ServiceException"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestError [mException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ServiceExceptionResponse$RequestError;->mException:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ExceptionResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
