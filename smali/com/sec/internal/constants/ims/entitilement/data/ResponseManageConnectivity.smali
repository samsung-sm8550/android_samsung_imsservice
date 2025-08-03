.class public Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
.super Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;
.source "ResponseManageConnectivity.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public certificate:Ljava/lang/String;

.field public deviceConfig:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-config"
    .end annotation
.end field

.field public epdgAddresses:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epdg-addresses"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serviceNames:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/constants/ims/entitilement/data/ServiceName;",
            ">;"
        }
    .end annotation
.end field

.field public sessionCookie:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session-cookie"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity$1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity$1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    goto :goto_0

    .line 34
    :cond_0
    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    .line 36
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 40
    :cond_1
    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    .line 42
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    .line 44
    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    goto :goto_2

    .line 46
    :cond_2
    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    .line 48
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    goto :goto_3

    .line 51
    :cond_3
    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    .line 53
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    goto :goto_4

    .line 56
    :cond_4
    iput-object v1, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    :goto_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 67
    invoke-super {p0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 81
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 84
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 85
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    :goto_2
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    if-nez p2, :cond_3

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    .line 90
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 91
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    :goto_3
    iget-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4

    .line 96
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    iget-object p0, p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    return-void
.end method
