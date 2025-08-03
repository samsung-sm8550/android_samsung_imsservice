.class Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication$1;
.super Ljava/lang/Object;
.source "Response3gppAuthentication.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    .locals 0

    .line 39
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;
    .locals 0

    .line 44
    new-array p0, p1, [Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication$1;->newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/Response3gppAuthentication;

    move-result-object p0

    return-object p0
.end method
