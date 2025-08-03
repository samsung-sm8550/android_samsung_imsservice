.class public Lcom/sec/internal/constants/ims/entitilement/data/RequestRegisteredMSISDN;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
.source "RequestRegisteredMSISDN.java"


# instance fields
.field public isAvailable:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is-available"
    .end annotation
.end field

.field public operation:I

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;-><init>()V

    return-void
.end method
