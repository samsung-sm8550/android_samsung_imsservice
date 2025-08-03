.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$7;
.super Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;
.source "UtServiceModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0

    .line 1556
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$7;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .locals 3

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive notify for Request ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    iget v0, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    packed-switch v0, :pswitch_data_0

    .line 1568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown request ID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1565
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$7;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
