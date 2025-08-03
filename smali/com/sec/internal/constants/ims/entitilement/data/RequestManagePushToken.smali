.class public Lcom/sec/internal/constants/ims/entitilement/data/RequestManagePushToken;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
.source "RequestManagePushToken.java"


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-id"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;

.field public operation:I

.field public pushToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "push-token"
    .end annotation
.end field

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
