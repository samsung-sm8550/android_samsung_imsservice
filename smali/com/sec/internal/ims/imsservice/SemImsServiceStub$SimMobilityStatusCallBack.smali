.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;
.super Lcom/sec/ims/ISimMobilityStatusListener$Stub;
.source "SemImsServiceStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field mListener:Lcom/samsung/android/ims/SemSimMobStatusListener;

.field private mPhoneId:I

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemSimMobStatusListener;I)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;-><init>()V

    .line 631
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mListener:Lcom/samsung/android/ims/SemSimMobStatusListener;

    .line 632
    iput p3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mPhoneId:I

    .line 634
    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/ims/SemSimMobStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 651
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mToken:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V

    .line 652
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->reset()V

    return-void
.end method

.method public onSimMobilityStateChanged(Z)V
    .locals 0

    .line 643
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mListener:Lcom/samsung/android/ims/SemSimMobStatusListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/ims/SemSimMobStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 645
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected reset()V
    .locals 2

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mListener:Lcom/samsung/android/ims/SemSimMobStatusListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/SemSimMobStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
