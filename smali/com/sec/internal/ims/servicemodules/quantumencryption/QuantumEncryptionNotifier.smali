.class public Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;
.super Ljava/lang/Object;
.source "QuantumEncryptionNotifier.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "QuantumEncryptionNotifier"


# instance fields
.field private mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onGetVoLTEStatus()V
    .locals 3

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetVoLTEStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_0

    .line 73
    invoke-interface {p0}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onGetVoLTEStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onGetVoLTEStatusComment()V
    .locals 3

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onGetVoLTEStatusComment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 85
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onGetVoLTEStatusComment()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 91
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)V
    .locals 2

    .line 95
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHangUp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 98
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_0

    .line 99
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onHangUp(Lcom/voltecrypt/service/SxHangUpEntity;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 102
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 104
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRequestAuthentication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 33
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onRequestAuthentication(Lcom/voltecrypt/service/SxRequestAuthenticationEntity;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 39
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)V
    .locals 2

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRequestPeerProfileStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_0

    .line 47
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onRequestPeerProfileStatus(Lcom/voltecrypt/service/SxRequestPeerProfileEntity;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)V
    .locals 2

    .line 56
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRequestQMKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    if-eqz p0, :cond_0

    .line 60
    invoke-interface {p0, p1}, Lcom/voltecrypt/service/SXICTQMVoLTECallBack;->onRequestQMKey(Lcom/voltecrypt/service/SxRequestQMKeyEntity;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 63
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 65
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerVoLTECallback(Lcom/voltecrypt/service/SXICTQMVoLTECallBack;)V
    .locals 2

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerVoLTECallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    return-void
.end method

.method public resetVoLTECallback()V
    .locals 2

    .line 25
    sget-object v0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetVoLTECallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/quantumencryption/QuantumEncryptionNotifier;->mListeners:Lcom/voltecrypt/service/SXICTQMVoLTECallBack;

    return-void
.end method
