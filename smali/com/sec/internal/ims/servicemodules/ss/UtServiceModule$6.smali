.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;
.super Ljava/lang/Object;
.source "UtServiceModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0

    .line 1475
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1478
    const-string p1, "connected"

    const-string v0, "UtServiceModule"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p2}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fputmSoftphoneService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V

    .line 1480
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->connected()V

    .line 1481
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fputmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)V

    .line 1482
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Softphone Service bind"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fgetmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1487
    const-string p1, "UtServiceModule"

    const-string v0, "Disconnected"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->-$$Nest$fputmSoftphoneService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V

    return-void
.end method
