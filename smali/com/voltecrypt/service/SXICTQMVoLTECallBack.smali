.class public interface abstract Lcom/voltecrypt/service/SXICTQMVoLTECallBack;
.super Ljava/lang/Object;
.source "SXICTQMVoLTECallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onGetVoLTEStatus()I
.end method

.method public abstract onGetVoLTEStatusComment()Ljava/lang/String;
.end method

.method public abstract onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)I
.end method

.method public abstract onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)I
.end method

.method public abstract onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)I
.end method

.method public abstract onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)I
.end method
