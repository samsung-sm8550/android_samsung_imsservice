.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CapabilityProvider.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1053
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1054
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ShareServiceBroadcastReceiver: action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CapabilityProvider"

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string p2, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    .line 1057
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1058
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_ish(Z)V

    .line 1059
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$sfputready_vsh(Z)V

    .line 1060
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->-$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    :cond_1
    return-void
.end method
