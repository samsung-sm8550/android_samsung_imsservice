.class public interface abstract Lcom/voltecrypt/service/SXICTQMVoLTECryptService;
.super Ljava/lang/Object;
.source "SXICTQMVoLTECryptService.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract checkNeedGoClientApp(I)V
.end method

.method public abstract notifyAuthenticationStatus(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract notifyLoginResult(ILjava/lang/String;)V
.end method

.method public abstract notifyPeerProfileStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract notifyQMKeyStatus(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method public abstract notifyVoLTEStatus(ILjava/lang/String;)I
.end method

.method public abstract registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)I
.end method
