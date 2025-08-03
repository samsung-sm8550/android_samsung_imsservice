.class Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;
.super Ljava/lang/Object;
.source "IdcServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 47
    invoke-static {p2}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    move-result-object p1

    sput-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->-$$Nest$monConnected(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 54
    sput-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    .line 55
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->-$$Nest$fputmState(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;)V

    .line 56
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    const/4 p1, 0x1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
