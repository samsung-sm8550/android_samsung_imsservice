.class public Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;
.super Ljava/lang/Object;
.source "ServiceInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final transient CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configParameters:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config-parameters"
    .end annotation
.end field

.field public endTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end-time"
    .end annotation
.end field

.field public expirationTime:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expiration-time"
    .end annotation
.end field

.field public friendlyName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friendly-name"
    .end annotation
.end field

.field public isOwner:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is-owner"
    .end annotation
.end field

.field public msisdn:Ljava/lang/String;

.field public provisioningParameters:Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "provisioning-parameters"
    .end annotation
.end field

.field public serviceInstanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-instance-id"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceName:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceInstanceId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->isOwner:Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->endTime:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->msisdn:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->friendlyName:Ljava/lang/String;

    .line 44
    const-class v0, Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->provisioningParameters:Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->configParameters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 55
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->serviceInstanceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->isOwner:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const/4 p2, 0x2

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 62
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->expirationTime:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->friendlyName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->provisioningParameters:Lcom/sec/internal/constants/ims/entitilement/data/ProvisioningParameters;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 72
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceInstance;->configParameters:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
