.class Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;
.super Ljava/lang/Object;
.source "EntitlementConfigProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 463
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onServiceConnected: Connected to EntitlementConfigService."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    iget-object p1, p1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connect DB"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    new-instance v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->-$$Nest$fputmDatabaseHelper(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;)V

    .line 468
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 473
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onServiceDisconnected: Disconnected."

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;->this$0:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    return-void
.end method
