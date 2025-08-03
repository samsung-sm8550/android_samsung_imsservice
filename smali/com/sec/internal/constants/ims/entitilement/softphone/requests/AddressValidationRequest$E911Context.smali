.class public Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$E911Context;
.super Ljava/lang/Object;
.source "AddressValidationRequest.java"


# instance fields
.field public mAddress:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$Address;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field public mConfirmed:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isAddressConfirmed"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$Address;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$E911Context;->mAddress:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$Address;

    .line 21
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$E911Context;->mConfirmed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E911Context [mAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$E911Context;->mAddress:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$Address;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfirmed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest$E911Context;->mConfirmed:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
