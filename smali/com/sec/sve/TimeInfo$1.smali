.class Lcom/sec/sve/TimeInfo$1;
.super Ljava/lang/Object;
.source "TimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/sve/TimeInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/sve/TimeInfo;
    .locals 1

    .line 60
    new-instance p0, Lcom/sec/sve/TimeInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/sve/TimeInfo;-><init>(Landroid/os/Parcel;Lcom/sec/sve/TimeInfo-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/sec/sve/TimeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/sec/sve/TimeInfo;
    .locals 0

    .line 65
    new-array p0, p1, [Lcom/sec/sve/TimeInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/sec/sve/TimeInfo$1;->newArray(I)[Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method
