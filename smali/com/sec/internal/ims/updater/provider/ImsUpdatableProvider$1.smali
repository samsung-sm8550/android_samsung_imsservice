.class Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$1;
.super Ljava/lang/Object;
.source "ImsUpdatableProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$1;->this$0:Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 61
    const-string p1, "ImsUpdatableProvider"

    const-string/jumbo v0, "onServiceConnected: ImsUpdateService"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$1;->this$0:Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;

    check-cast p2, Lcom/sec/internal/ims/updater/ImsUpdateService$LocalImsUpdateService;

    invoke-virtual {p2}, Lcom/sec/internal/ims/updater/ImsUpdateService$LocalImsUpdateService;->getService()Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->-$$Nest$fputmService(Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 68
    const-string p0, "ImsUpdatableProvider"

    const-string/jumbo p1, "onServiceDisconnected: ImsUpdateService"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
