.class public Lcom/sec/internal/constants/ims/entitilement/data/RequestManageConnectivity$DeviceParameter;
.super Ljava/lang/Object;
.source "RequestManageConnectivity.java"


# instance fields
.field public areacode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tracking-area-code"
    .end annotation
.end field

.field public clientversion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "carrier-configuration-client-version"
    .end annotation
.end field

.field public configversion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cached-configuration-file-version"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msisdn"
    .end annotation
.end field

.field public triggercode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action-trigger-code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
