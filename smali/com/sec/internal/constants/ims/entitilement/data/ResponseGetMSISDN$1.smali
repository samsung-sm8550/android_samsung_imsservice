.class Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN$1;
.super Ljava/lang/Object;
.source "ResponseGetMSISDN.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    .locals 0

    .line 42
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;
    .locals 0

    .line 47
    new-array p0, p1, [Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN$1;->newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ResponseGetMSISDN;

    move-result-object p0

    return-object p0
.end method
