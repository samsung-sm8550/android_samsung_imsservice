.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;
.super Ljava/lang/Object;
.source "RegistrationManagerHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method public static synthetic $r8$lambda$xBqK3HMV7n9Q0mXwWhwpLU_hnMo(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->lambda$onPreciseDataConnectionStateChanged$0(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onPreciseDataConnectionStateChanged$0(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 517
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;I)V"
        }
    .end annotation

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x18

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDataConnectionStateChanged(IZI)V
    .locals 8

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDataConnectionStateChanged(): networkType ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], isWifiConnected ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 445
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 446
    const-string v1, "networkType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->isSipTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->getSipTestManager()Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    move-object v4, v0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/interfaces/ims/core/ISipTestManager;->onDataConnectionStateChanged(Lcom/sec/internal/ims/core/RegistrationManagerBase;Landroid/os/Bundle;IZI)V

    .line 452
    :cond_0
    const-string v1, "isWifiConnected"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string/jumbo p2, "phoneId"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xd

    if-eq p1, p2, :cond_1

    const/16 p2, 0x14

    if-ne p1, p2, :cond_2

    .line 455
    :cond_1
    invoke-static {p3}, Lcom/sec/internal/log/IMSLogTimer;->setLatchEndTime(I)V

    const/4 p2, 0x0

    .line 456
    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLogTimer;->setPdnStartTime(IZ)V

    .line 457
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 459
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 460
    sget-object v1, Lcom/sec/internal/log/IMSLog$LAZER_TYPE;->REGI:Lcom/sec/internal/log/IMSLog$LAZER_TYPE;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") ["

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] LATCH(DataConnect changed) : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-static {p3}, Lcom/sec/internal/log/IMSLogTimer;->getLatchEndTime(I)J

    move-result-wide p1

    invoke-static {p3}, Lcom/sec/internal/log/IMSLogTimer;->getLatchStartTime(I)J

    move-result-wide v3

    sub-long/2addr p1, v3

    long-to-double p1, p1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v3

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/log/IMSLog$LAZER_TYPE;Ljava/lang/String;)V

    .line 465
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDefaultNetworkStateChanged(I)V
    .locals 2

    .line 508
    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "onDefaultNetworkStateChanged: EVENT_TRY_REGISTER delayed"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 509
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x2c2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgConnected(ILjava/lang/String;)V
    .locals 2

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1a

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgDeregisterRequested(I)V
    .locals 2

    .line 496
    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "onEpdgDeregister: epdg deregister requested"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x7c

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgDisconnected(ILjava/lang/String;)V
    .locals 2

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1b

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 1

    .line 540
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x9a

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgIpsecDisconnected(I)V
    .locals 2

    .line 491
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x36

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEpdgRegisterRequested(IZ)V
    .locals 2

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEpdgRegister: cdmaAvailability : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-Handler"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x7b

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIKEAuthFAilure(I)V
    .locals 2

    .line 485
    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "onIKEAuthFAilure:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x34

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMobileRadioConnected(I)V
    .locals 2

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x3d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMobileRadioDisconnected(I)V
    .locals 2

    .line 550
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x3e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V
    .locals 5

    .line 514
    const-string v0, "RegiMgr-Handler"

    const-string/jumbo v1, "onPreciseDataConnectionStateChanged"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8$$ExternalSyntheticLambda0;-><init>()V

    .line 516
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8$$ExternalSyntheticLambda1;-><init>()V

    .line 517
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 518
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v0

    .line 524
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result v1

    .line 525
    invoke-virtual {p2}, Landroid/telephony/PreciseDataConnectionState;->getLastCauseCode()I

    move-result p2

    if-eqz p2, :cond_2

    .line 526
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v3, v2, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mLastPdcState:[I

    aget v3, v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x81

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_3

    .line 528
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x191

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 530
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x9d

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$8;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mLastPdcState:[I

    aput v0, p0, p1

    return-void
.end method
