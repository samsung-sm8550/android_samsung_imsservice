.class Lcom/voltecrypt/service/SxHangUpEntity$1;
.super Ljava/lang/Object;
.source "SxHangUpEntity.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxHangUpEntity;
    .locals 0

    .line 138
    new-instance p0, Lcom/voltecrypt/service/SxHangUpEntity;

    invoke-direct {p0, p1}, Lcom/voltecrypt/service/SxHangUpEntity;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxHangUpEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxHangUpEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/voltecrypt/service/SxHangUpEntity;
    .locals 0

    .line 147
    new-array p0, p1, [Lcom/voltecrypt/service/SxHangUpEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxHangUpEntity$1;->newArray(I)[Lcom/voltecrypt/service/SxHangUpEntity;

    move-result-object p0

    return-object p0
.end method
