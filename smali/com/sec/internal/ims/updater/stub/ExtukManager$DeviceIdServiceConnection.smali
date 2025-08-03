.class Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;
.super Ljava/lang/Object;
.source "ExtukManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/updater/stub/ExtukManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/updater/stub/ExtukManager;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;->this$0:Lcom/sec/internal/ims/updater/stub/ExtukManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 143
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceIdServiceConnection: onServiceConnected"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;->this$0:Lcom/sec/internal/ims/updater/stub/ExtukManager;

    invoke-static {p2}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/deviceidservice/IDeviceIdService;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/deviceidservice/IDeviceIdService;->getOAID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->-$$Nest$monOAIDReceived(Lcom/sec/internal/ims/updater/stub/ExtukManager;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceIdServiceConnection: onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/ExtukManager$DeviceIdServiceConnection;->this$0:Lcom/sec/internal/ims/updater/stub/ExtukManager;

    invoke-static {p0}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->-$$Nest$monOAIDFetchFailed(Lcom/sec/internal/ims/updater/stub/ExtukManager;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 153
    invoke-static {}, Lcom/sec/internal/ims/updater/stub/ExtukManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceIdServiceConnection: onServiceDisconnected"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
