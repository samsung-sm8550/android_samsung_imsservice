.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;
.super Ljava/lang/Object;
.source "SemImsServiceStub.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mListener:Lcom/samsung/android/ims/ISemEpdgListener;

.field final mToken:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/ISemEpdgListener;Ljava/lang/String;)V
    .locals 0

    .line 762
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mListener:Lcom/samsung/android/ims/ISemEpdgListener;

    .line 764
    iput-object p3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mToken:Ljava/lang/String;

    .line 766
    :try_start_0
    invoke-interface {p2}, Lcom/samsung/android/ims/ISemEpdgListener;->asBinder()Landroid/os/IBinder;

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
    .locals 2

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->reset()V

    return-void
.end method

.method protected reset()V
    .locals 2

    .line 780
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->mListener:Lcom/samsung/android/ims/ISemEpdgListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/ISemEpdgListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
