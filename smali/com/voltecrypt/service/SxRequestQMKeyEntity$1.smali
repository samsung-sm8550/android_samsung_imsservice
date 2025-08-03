.class Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;
.super Ljava/lang/Object;
.source "SxRequestQMKeyEntity.java"

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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestQMKeyEntity;
    .locals 0

    .line 126
    new-instance p0, Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    invoke-direct {p0, p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/voltecrypt/service/SxRequestQMKeyEntity;
    .locals 0

    .line 135
    new-array p0, p1, [Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lcom/voltecrypt/service/SxRequestQMKeyEntity$1;->newArray(I)[Lcom/voltecrypt/service/SxRequestQMKeyEntity;

    move-result-object p0

    return-object p0
.end method
