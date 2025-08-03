.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;
.super Ljava/lang/Object;
.source "ISessionModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract abortSession(Ljava/lang/String;)V
.end method

.method public abstract deRegisterApp()V
.end method

.method public abstract getImsRegistration()Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getInactivityTimeout()J
.end method

.method public abstract getMaxMsrpLengthForExtensions()I
.end method

.method public abstract getMessagingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end method

.method public abstract getPhoneIdByIMSI(Ljava/lang/String;)I
.end method

.method public abstract initiateMessagingSession(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
.end method

.method public abstract isServiceActivated(Ljava/lang/String;)Z
.end method

.method public abstract isServiceRegistered()Z
.end method

.method public abstract needDeRegister(Ljava/lang/String;)Z
.end method

.method public abstract needRegister(Ljava/lang/String;)Z
.end method

.method public abstract registerApp()V
.end method

.method public abstract registerMessagingSessionListener(Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;)V
.end method

.method public abstract sendInstantMultimediaMessage(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;[BLjava/lang/String;)V
.end method

.method public abstract sendMultimediaMessage(Ljava/lang/String;[BLjava/lang/String;)V
.end method
