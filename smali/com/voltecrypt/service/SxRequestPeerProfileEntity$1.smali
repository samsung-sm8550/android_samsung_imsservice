.class Lcom/voltecrypt/service/SxRequestPeerProfileEntity$1;
.super Ljava/lang/Object;
.source "SxRequestPeerProfileEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestPeerProfileEntity;
    .locals 0

    .line 101
    new-instance p0, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;

    invoke-direct {p0, p1}, Lcom/voltecrypt/service/SxRequestPeerProfileEntity;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestPeerProfileEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestPeerProfileEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/voltecrypt/service/SxRequestPeerProfileEntity;
    .locals 0

    .line 110
    new-array p0, p1, [Lcom/voltecrypt/service/SxRequestPeerProfileEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestPeerProfileEntity$1;->newArray(I)[Lcom/voltecrypt/service/SxRequestPeerProfileEntity;

    move-result-object p0

    return-object p0
.end method
