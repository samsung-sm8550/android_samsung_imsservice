.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SoftphoneServiceStub.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": mDefaultNetworkListener: onAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fputmNetworkConnected(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Z)V

    .line 100
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmCurrentUserId(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$mvalidateTokens(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V

    const/4 p1, 0x0

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmClients(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmClients(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 103
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmCurrentUserId(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onNetworkConnected()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": mDefaultNetworkListener: onLost + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fputmNetworkConnected(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Z)V

    return-void
.end method
