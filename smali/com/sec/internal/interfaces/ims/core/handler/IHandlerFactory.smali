.class public interface abstract Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
.super Ljava/lang/Object;
.source "IHandlerFactory.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# virtual methods
.method public abstract getCmcHandler()Lcom/sec/internal/interfaces/ims/core/handler/ICmcMediaServiceInterface;
.end method

.method public abstract getEucHandler()Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;
.end method

.method public abstract getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
.end method

.method public abstract getIshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;
.end method

.method public abstract getMediaHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMediaServiceInterface;
.end method

.method public abstract getMiscHandler()Lcom/sec/internal/interfaces/ims/core/handler/IMiscHandler;
.end method

.method public abstract getOptionsHandler()Lcom/sec/internal/ims/servicemodules/options/IOptionsServiceInterface;
.end method

.method public abstract getPresenceHandler()Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;
.end method

.method public abstract getRawSipHandler()Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;
.end method

.method public abstract getRegistrationStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;
.end method

.method public abstract getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;
.end method

.method public abstract getSmsHandler()Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;
.end method

.method public abstract getVolteStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IVolteServiceInterface;
.end method

.method public abstract getVshHandler()Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;
.end method
