.class public Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;
.super Ljava/lang/Object;
.source "ProvisioningParameters.java"


# instance fields
.field public sipConnectivity:Lcom/sec/internal/constants/ims/entitilement/data/SIPConnectivity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-connectivity"
    .end annotation
.end field

.field public sipCredential:Lcom/sec/internal/constants/ims/entitilement/data/SIPCredential;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-credential"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
