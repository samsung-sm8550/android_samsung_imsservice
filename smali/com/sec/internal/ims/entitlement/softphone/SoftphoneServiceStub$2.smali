.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;
.super Landroid/content/BroadcastReceiver;
.source "SoftphoneServiceStub.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 119
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "airplane_mode_on"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 121
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    iget-object p2, p2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAirplaneModeReceiver onChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 123
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmClients(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 124
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmClients(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 125
    invoke-virtual {p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->-$$Nest$fgetmCurrentUserId(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual {p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onAirplaneModeOn()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
