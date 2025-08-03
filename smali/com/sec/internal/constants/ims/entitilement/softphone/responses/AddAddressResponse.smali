.class public Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;
.super Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;
.source "AddAddressResponse.java"


# instance fields
.field public mLocationResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationResponse"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddAddressResponse [mLocationResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;->mLocationResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
