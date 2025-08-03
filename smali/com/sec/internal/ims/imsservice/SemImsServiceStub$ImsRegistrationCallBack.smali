.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "SemImsServiceStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field mListener:Lcom/samsung/android/ims/SemImsRegiListener;

.field private mPhoneId:I

.field mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemImsRegiListener;I)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    .line 571
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mListener:Lcom/samsung/android/ims/SemImsRegiListener;

    .line 572
    iput p3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mPhoneId:I

    .line 574
    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/ims/SemImsRegiListener;->asBinder()Landroid/os/IBinder;

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

    .line 611
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mToken:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->reset()V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 1

    .line 596
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$mbuildSemImsRegistration(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p1

    .line 599
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$mbuildSemImsRegistrationError(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;

    move-result-object p2

    .line 602
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mListener:Lcom/samsung/android/ims/SemImsRegiListener;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/ims/SemImsRegiListener;->onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 604
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 582
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$mbuildSemImsRegistration(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p1

    .line 587
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mListener:Lcom/samsung/android/ims/SemImsRegiListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/ims/SemImsRegiListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 589
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected reset()V
    .locals 2

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mListener:Lcom/samsung/android/ims/SemImsRegiListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/SemImsRegiListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
