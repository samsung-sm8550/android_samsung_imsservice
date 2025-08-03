.class public Lcom/sec/internal/constants/ims/entitilement/data/Request3gppAuthentication;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
.source "Request3gppAuthentication.java"


# instance fields
.field public akaChallengeRsp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aka-challenge-rsp"
    .end annotation
.end field

.field public akaToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aka-token"
    .end annotation
.end field

.field public deviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-name"
    .end annotation
.end field

.field public deviceType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-type"
    .end annotation
.end field

.field public imsiEap:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imsi-eap"
    .end annotation
.end field

.field public osType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "os-type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;-><init>()V

    return-void
.end method
