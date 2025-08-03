.class public abstract Lcom/google/android/gms/internal/common/zzi;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-basement@@18.3.0"


# instance fields
.field private final zza:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzi;->zza:Landroid/os/Looper;

    return-void
.end method
