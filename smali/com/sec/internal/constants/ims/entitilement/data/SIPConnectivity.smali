.class public Lcom/sec/internal/constants/ims/entitilement/data/SIPConnectivity;
.super Ljava/lang/Object;
.source "SIPConnectivity.java"


# instance fields
.field public apn:Ljava/lang/String;

.field public pcscfAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pcscf-address"
    .end annotation
.end field

.field public sipUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sip-uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
