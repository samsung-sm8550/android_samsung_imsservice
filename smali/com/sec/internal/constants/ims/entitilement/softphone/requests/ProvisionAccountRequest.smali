.class public Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;
.super Ljava/lang/Object;
.source "ProvisionAccountRequest.java"


# instance fields
.field public mProvisionSPRequest:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest$ProvisionSPRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provisionSPRequest"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest$ProvisionSPRequest;

    invoke-direct {v0, p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest$ProvisionSPRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;->mProvisionSPRequest:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest$ProvisionSPRequest;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProvisionAccountRequest [mProvisionSPRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;->mProvisionSPRequest:Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest$ProvisionSPRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
