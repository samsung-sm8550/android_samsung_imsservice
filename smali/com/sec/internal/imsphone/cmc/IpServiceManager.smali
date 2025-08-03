.class public Lcom/sec/internal/imsphone/cmc/IpServiceManager;
.super Ljava/lang/Object;
.source "IpServiceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IpServiceManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 26
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->mContext:Landroid/content/Context;

    .line 28
    const-string p1, "network_management"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-static {p1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    goto :goto_0

    .line 32
    :cond_0
    sget-object p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "bind failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_0

    .line 39
    sget-object p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "try to [add] iprule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", in "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    sget-object p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "add iprule error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->mNetworkService:Landroid/os/INetworkManagementService;

    if-eqz p0, :cond_0

    .line 52
    sget-object p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "try to [delete] prve iprule in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    sget-object p0, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "remove iprule error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
