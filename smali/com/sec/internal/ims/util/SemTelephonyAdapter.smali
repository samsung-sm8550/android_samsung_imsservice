.class public Lcom/sec/internal/ims/util/SemTelephonyAdapter;
.super Ljava/lang/Object;
.source "SemTelephonyAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 1

    .line 58
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISemTelephony;->getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 12
    const-string v0, "isemtelephony"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unable to find ISemTelephony interface."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLteCsCapa(I)I
    .locals 1

    .line 40
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISemTelephony;->getLteCsCapa(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getSupportUacType(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;
    .locals 2

    .line 104
    sget-object v0, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->CP_UAC_NOT_SUPPORT:Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    .line 106
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISemTelephony;->getSupportUacType(I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;->fromValue(I)Lcom/sec/internal/ims/util/SemTelephonyAdapter$CpUacType;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static isSupportLteCapaOptionC(I)Z
    .locals 1

    .line 21
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISemTelephony;->isSupportLteCapaOptionC(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportedNrca(I)Z
    .locals 1

    .line 50
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISemTelephony;->getSupportedNrca(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sendVolteState(IZ)V
    .locals 1

    .line 69
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 71
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getISemTelephony()Lcom/android/internal/telephony/ISemTelephony;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ISemTelephony;->sendVolteState(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
