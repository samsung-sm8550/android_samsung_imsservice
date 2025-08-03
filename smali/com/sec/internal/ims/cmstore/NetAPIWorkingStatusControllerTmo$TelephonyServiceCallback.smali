.class Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback;
.super Landroid/telephony/TelephonyCallback;
.source "NetAPIWorkingStatusControllerTmo.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 94
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    iget-boolean v2, v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingNonTerrestrialNetwork:Z

    if-eq v2, v0, :cond_1

    .line 96
    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mIsUsingNonTerrestrialNetwork: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingNonTerrestrialNetwork:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", changed to: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    iput-boolean v0, p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingNonTerrestrialNetwork:Z

    if-eqz v0, :cond_0

    .line 101
    iget-boolean p0, p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    if-nez p0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;->stopCMNWorking()V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;->shouldSendVvmRequest()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo$TelephonyServiceCallback;->this$0:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerTmo;->resumeCMNWorking()V

    :cond_1
    :goto_0
    return-void
.end method
