.class public abstract Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.3.0"


# direct methods
.method public static beginObjectHeader(Landroid/os/Parcel;)I
    .locals 1

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p0

    return p0
.end method

.method public static finishObjectHeader(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static writeBoolean(Landroid/os/Parcel;IZ)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static writeInt(Landroid/os/Parcel;II)V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static writeIntArray(Landroid/os/Parcel;I[IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static writeLong(Landroid/os/Parcel;IJ)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public static writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 3
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzc(Landroid/os/Parcel;II)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zza(Landroid/os/Parcel;I)I

    move-result p1

    array-length p4, p2

    .line 3
    invoke-virtual {p0, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_3

    .line 4
    aget-object v2, p2, v1

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {p0, v2, p3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzd(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->zzb(Landroid/os/Parcel;I)V

    return-void
.end method

.method private static zza(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method private static zzb(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private static zzc(Landroid/os/Parcel;II)V
    .locals 0

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private static zzd(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 4
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p1, v1

    .line 7
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
