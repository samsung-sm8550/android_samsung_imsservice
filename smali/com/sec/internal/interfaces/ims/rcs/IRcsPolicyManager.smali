.class public interface abstract Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
.super Ljava/lang/Object;
.source "IRcsPolicyManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RcsPolicyMgr"


# virtual methods
.method public abstract changeRcsIfacename(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IPdnController;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract doRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getRcsConfig(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/constants/ims/config/RcsConfig;
.end method

.method public abstract getRcsConfigForUserAgent(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;IILcom/sec/internal/ims/servicemodules/im/ImConfig;Lcom/sec/internal/ims/core/RcsRegistration$Builder;)Landroid/os/Bundle;
.end method

.method public abstract getRcsHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
.end method

.method public abstract getRcsNetworkUriType(ILjava/lang/String;Z)Lcom/sec/ims/util/ImsUri$UriType;
.end method

.method public abstract getRcsPcscfAddress(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
.end method

.method public abstract getRcsPrivateUserIdentity(Ljava/lang/String;Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
.end method

.method public abstract getRcsPublicUserIdentity(I)Ljava/lang/String;
.end method

.method public abstract getRegiConfig(I)Lcom/sec/internal/helper/RegiConfig;
.end method

.method public abstract isRcsRoamingPref(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z
.end method

.method public abstract pendingRcsRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public abstract selectRcsDnsType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract selectRcsTransportType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract tryRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
.end method

.method public abstract updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateRegiConfig(I)V
.end method
