.class public Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;
.super Ljava/lang/Object;
.source "AddAddressRequest.java"


# instance fields
.field public mLocationRequest:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest$LocationRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "locationRequest"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest$LocationRequest;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest$LocationRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;->mLocationRequest:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest$LocationRequest;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddAddressRequest [mLocationRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;->mLocationRequest:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest$LocationRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
