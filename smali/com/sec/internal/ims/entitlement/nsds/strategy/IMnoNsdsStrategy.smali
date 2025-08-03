.class public interface abstract Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
.super Ljava/lang/Object;
.source "IMnoNsdsStrategy.java"


# virtual methods
.method public abstract calEntitlementCheckExpRetryTime(I)J
.end method

.method public abstract getBaseOperationMaxRetry()I
.end method

.method public abstract getDeviceGroup(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceInfoTime()J
.end method

.method public abstract getEntitlementCheckExpirationTime()J
.end method

.method public abstract getEntitlementCheckImpl(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;Landroid/os/Handler;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;
.end method

.method public abstract getEntitlementCheckMaxRetry()I
.end method

.method public abstract getEntitlementServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEntitlementServicesMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGcmSenderId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLocAndTcWebSheetData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
.end method

.method public abstract getNSDSApiVersion()Ljava/lang/String;
.end method

.method public abstract getNSDSServices()[Ljava/lang/String;
.end method

.method public abstract getNextOperation(IIILandroid/os/Bundle;)I
.end method

.method public abstract getOperationsForBootupInit(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetryInterval()J
.end method

.method public abstract getServiceListForPushToken()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSimAuthenticationType()Ljava/lang/String;
.end method

.method public abstract getSimDeviceActivationImpl(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceImplicitActivation;
.end method

.method public abstract getSimDeviceDeactivationImpl(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceDeactivation;
.end method

.method public abstract getSimSwapFlow(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method

.method public abstract getWaitTimeForForcedSimSwap()J
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract isGcmTokenRequired()Z
.end method

.method public abstract isNsdsServiceEnabled()Z
.end method

.method public abstract isNsdsUIAppSwitchOn(Ljava/lang/String;I)Z
.end method

.method public abstract isSIMDeviceActivationRequired()Z
.end method

.method public abstract isSimSupportedForNsds(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Z
.end method

.method public abstract needGetMSISDNForEntitlement()Z
.end method

.method public abstract requireRetryBootupProcedure()Z
.end method

.method public abstract shouldChangedUriTriggerNsdsService(Landroid/net/Uri;)Z
.end method

.method public abstract shouldIgnoreDeviceConfigValidity()Z
.end method

.method public abstract supportEntitlementCheck()Z
.end method
