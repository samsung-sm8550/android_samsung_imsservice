.class public interface abstract Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;
.super Ljava/lang/Object;
.source "IRegistrationInterface.java"


# virtual methods
.method public abstract configure(I)V
.end method

.method public abstract deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
.end method

.method public abstract dump()V
.end method

.method public abstract getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
.end method

.method public abstract getImsiByUserAgentHandle(I)Ljava/lang/String;
.end method

.method public abstract getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract handleInactiveCiaOnMobileConnected(ILcom/sec/internal/ims/core/RegisterTask;)V
.end method

.method public abstract handleInactiveCiaOnMobileDisconnected(ILcom/sec/internal/ims/core/RegisterTask;)V
.end method

.method public abstract isUserAgentInRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
.end method

.method public abstract onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZ)V
.end method

.method public abstract onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V
.end method

.method public abstract registerInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation
.end method

.method public abstract removePreviousLastPani(I)V
.end method

.method public abstract removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract sendDmState(IZ)V
.end method

.method public abstract sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract setEventLog(Lcom/sec/internal/helper/SimpleEventLog;)V
.end method

.method public abstract setPdnController(Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
.end method

.method public abstract setRegistrationHandler(Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V
.end method

.method public abstract setSilentLogEnabled(Z)V
.end method

.method public abstract setSimManagers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z
.end method

.method public abstract updateGeolocation(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/ims/gls/LocationInfo;)V
.end method

.method public abstract updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
.end method

.method public abstract updateRat(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
.end method

.method public abstract updateTimeInPlani(ILcom/sec/ims/settings/ImsProfile;)V
.end method

.method public abstract updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
.end method
