.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/quantumencryption/IQuantumEncryptionServiceModule;
.super Ljava/lang/Object;
.source "IQuantumEncryptionServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# static fields
.field public static final EVT_QUANTUM_SECURITY_NOTIFY_AUTH_STATUS:I = 0x1

.field public static final EVT_QUANTUM_SECURITY_NOTIFY_LOGIN_RESULT:I = 0x2

.field public static final EVT_QUANTUM_SECURITY_NOTIFY_PEER_PROFILE_STATUS:I = 0x3

.field public static final EVT_QUANTUM_SECURITY_NOTIFY_QMKEY_STATUS:I = 0x4

.field public static final EVT_QUANTUM_SECURITY_NOTIFY_VOLTE_STATUS:I = 0x5


# virtual methods
.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isSuccessAuthAndLogin()Z
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

.method public abstract onGetVoLTEStatus()I
.end method

.method public abstract onGetVoLTEStatusComment()I
.end method

.method public abstract onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)V
.end method

.method public abstract onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V
.end method

.method public abstract onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)I
.end method

.method public abstract onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)I
.end method

.method public abstract onRequestQMKeyWithDelay(Lcom/voltecrypt/service/SxRequestQMKeyEntity;I)I
.end method

.method public abstract registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)I
.end method

.method public abstract resetAuthStatus()V
.end method
