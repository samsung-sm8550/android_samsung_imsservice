.class Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken$1;
.super Ljava/lang/Object;
.source "InstanceToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;
    .locals 0

    .line 38
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;
    .locals 0

    .line 43
    new-array p0, p1, [Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken$1;->newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/InstanceToken;

    move-result-object p0

    return-object p0
.end method
