.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;
.super Lcom/sec/ims/IImsDmConfigListener$Stub;
.source "SemImsServiceStub.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IImsDmConfigListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V

    return-void
.end method


# virtual methods
.method public onChangeDmValue(Ljava/lang/String;Z)V
    .locals 2

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->-$$Nest$fgetmDmConfigListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 551
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 555
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/SemImsDmConfigListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/ims/SemImsDmConfigListener;->onChangeDmValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 557
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    return-void
.end method
