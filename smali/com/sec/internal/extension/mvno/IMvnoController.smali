.class public interface abstract Lcom/sec/internal/extension/mvno/IMvnoController;
.super Ljava/lang/Object;
.source "IMvnoController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# virtual methods
.method public abstract convertMnoName(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getFeatureEnabled()Z
.end method

.method public abstract getFeatureEnabled(Ljava/lang/String;)Z
.end method

.method public abstract getOtaElement()Lcom/google/gson/JsonElement;
.end method

.method public abstract getVoltePassKey(I)Ljava/lang/String;
.end method

.method public abstract isMatchedTs32Profile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isNonVerifiedMno(I)Z
.end method

.method public abstract isUpdateGlobal(I)Z
.end method

.method public abstract needUpdateGlobal(IZ)V
.end method

.method public abstract onSipError(ILcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Lcom/sec/ims/util/SipError;Z)Z
.end method

.method public abstract receivedImsOta(Ljava/lang/String;)V
.end method

.method public abstract reset(I)V
.end method

.method public abstract setSimInfo(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateGlobal(ILcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/google/gson/JsonElement;
.end method

.method public abstract updateProfile(ILcom/sec/ims/settings/ImsProfile;Ljava/lang/String;)V
.end method
