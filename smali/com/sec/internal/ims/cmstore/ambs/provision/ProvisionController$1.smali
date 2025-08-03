.class Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;
.super Landroid/database/ContentObserver;
.source "ProvisionController.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Landroid/os/Handler;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 194
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 196
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed in DB. uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "root/application/1/serviceproviderext/nc_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 198
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->-$$Nest$mreadNcHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "nc host changed, send REQ_SESSION_GEN event"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "root/application/1/serviceproviderext/nms_url"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->-$$Nest$mreadNmsHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "nms host changed, send REQ_SESSION_GEN event"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
