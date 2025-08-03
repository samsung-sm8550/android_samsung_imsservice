.class Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NSDSMultiSimService.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 413
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onAvailable"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 415
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$misDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService$1;->this$0:Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$monDeviceReady(Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 423
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onLost"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
