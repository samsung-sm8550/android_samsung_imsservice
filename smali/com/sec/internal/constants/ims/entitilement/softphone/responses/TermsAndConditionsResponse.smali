.class public Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;
.super Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;
.source "TermsAndConditionsResponse.java"


# instance fields
.field public mTCResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcResponse"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TermsAndConditionsResponse [mTCResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;->mTCResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
