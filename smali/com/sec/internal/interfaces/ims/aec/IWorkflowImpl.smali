.class public interface abstract Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
.super Ljava/lang/Object;
.source "IWorkflowImpl.java"


# virtual methods
.method public abstract changeConnectivity()V
.end method

.method public abstract clearAkaToken()V
.end method

.method public abstract clearResource()V
.end method

.method public abstract dump()V
.end method

.method public abstract getAkaToken()Ljava/lang/String;
.end method

.method public abstract getEntitlementForSMSoIp()Z
.end method

.method public abstract getEntitlementForVoLte()Z
.end method

.method public abstract getEntitlementForVoWiFi()Z
.end method

.method public abstract getEntitlementInitFromApp()Z
.end method

.method public abstract getSMSoIpEntitlementStatus()Z
.end method

.method public abstract getVoLteEntitlementStatus(IZ)Z
.end method

.method public abstract getVoWiFiEntitlementStatus()Z
.end method

.method public abstract initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isEntitlementOngoing()Z
.end method

.method public abstract isReadyToNotifyApp()Z
.end method

.method public abstract isSharedAkaToken()Z
.end method

.method public abstract performEntitlement(Ljava/lang/Object;)V
.end method

.method public abstract receivedSmsNotification(Ljava/lang/String;)V
.end method

.method public abstract setReadyToNotifyApp(Z)V
.end method

.method public abstract setSharedAkaToken(Z)V
.end method

.method public abstract setValidEntitlement(Z)V
.end method

.method public abstract triggerAutoConfigForApp()V
.end method

.method public abstract updateFcmToken(Ljava/lang/String;Ljava/lang/String;)V
.end method
