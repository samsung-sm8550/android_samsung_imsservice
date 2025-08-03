.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;
.super Ljava/lang/Object;
.source "IServiceModule.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getServicesRequiring()[Ljava/lang/String;
.end method

.method public abstract getSupportFeature(I)J
.end method

.method public abstract isReady()Z
.end method

.method public abstract isRunning()Z
.end method

.method public abstract onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
.end method

.method public abstract onRegistered(Lcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract start()V
.end method

.method public abstract updateCapabilities(I)V
.end method
