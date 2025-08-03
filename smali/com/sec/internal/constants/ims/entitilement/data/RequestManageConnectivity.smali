.class public Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
.source "RequestManageConnectivity.java"


# instance fields
.field public csr:Ljava/lang/String;

.field public deviceGroup:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-group"
    .end annotation
.end field

.field public deviceParameterInfo:Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-parameter-info"
    .end annotation
.end field

.field public operation:I

.field public remoteDeviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remote-device-id"
    .end annotation
.end field

.field public vimsi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;-><init>()V

    return-void
.end method
