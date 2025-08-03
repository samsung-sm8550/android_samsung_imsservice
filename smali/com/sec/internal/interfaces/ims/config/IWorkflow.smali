.class public interface abstract Lcom/sec/internal/interfaces/ims/config/IWorkflow;
.super Ljava/lang/Object;
.source "IWorkflow.java"


# static fields
.field public static final ACTIVE_AUTOCONFIG_VERSION:I = 0x1

.field public static final DEFAULT_ERROR_CODE:I = 0x3db

.field public static final DISABLE_AUTOCONFIG_VERSION:I = -0x2

.field public static final DISABLE_PERMANENTLY_AUTOCONFIG_VERSION:I = -0x1

.field public static final DISABLE_TEMPORARY_AUTOCONFIG_VERSION:I = 0x0

.field public static final DORMANT_AUTOCONFIG_VERSION:I = -0x3


# virtual methods
.method public changeOpMode(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public checkNetworkConnectivity()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract cleanup()V
.end method

.method public clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .locals 0

    .line 0
    return-void
.end method

.method public clearToken(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract closeStorage()V
.end method

.method public dump()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract forceAutoConfig(Z)V
.end method

.method public abstract forceAutoConfigNeedResetConfig(Z)V
.end method

.method public getLastErrorCode()I
    .locals 0

    .line 0
    const/16 p0, 0x3db

    return p0
.end method

.method public abstract getStorage()Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
.end method

.method public abstract handleMSISDNDialog()V
.end method

.method public abstract init()V
.end method

.method public isConfigOngoing()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onADSChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract onDefaultSmsPackageChanged()V
.end method

.method public reInitIfNeeded()V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract read(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public removeValidToken()V
    .locals 0

    .line 0
    return-void
.end method

.method public sendIidToken(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setEnableRcsByMigration()V
    .locals 0

    .line 0
    return-void
.end method

.method public setRcsClientConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public abstract startAutoConfig(Z)V
.end method

.method public abstract startAutoConfigDualsim(Z)V
.end method

.method public startCurConfig()V
    .locals 0

    .line 0
    return-void
.end method

.method public stopWorkFlow()V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .locals 0

    .line 0
    return-void
.end method
