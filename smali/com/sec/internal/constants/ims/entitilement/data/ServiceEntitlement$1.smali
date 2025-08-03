.class Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement$1;
.super Ljava/lang/Object;
.source "ServiceEntitlement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    .locals 0

    .line 82
    new-instance p0, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    .locals 0

    .line 87
    new-array p0, p1, [Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement$1;->newArray(I)[Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    move-result-object p0

    return-object p0
.end method
