.class public Lcom/sec/internal/imsphone/ImsEcbmImpl;
.super Lcom/android/ims/internal/IImsEcbm$Stub;
.source "ImsEcbmImpl.java"


# instance fields
.field private miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/ims/internal/IImsEcbm$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public enterEmergencyCallbackMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsEcbmImpl;->miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {p0}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V

    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsEcbmImpl;->miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;

    invoke-interface {p0}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V

    return-void
.end method

.method public setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsEcbmImpl;->miImsEcbmListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-void
.end method
