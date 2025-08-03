.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
.super Ljava/lang/Object;
.source "ISmsServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract getSmsFallback(I)Z
.end method

.method public abstract handleEventDefaultAppChanged()V
.end method

.method public abstract isVolteSupported(I)Z
.end method

.method public abstract onUpdateGeolocation()V
.end method

.method public abstract registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
.end method

.method public abstract sendDeliverReport(I[B)V
.end method

.method public abstract sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract setDelayedDeregisterTimerRunning(IZ)V
.end method
