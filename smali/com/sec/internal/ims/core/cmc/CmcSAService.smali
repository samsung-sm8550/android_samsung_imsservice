.class public abstract Lcom/sec/internal/ims/core/cmc/CmcSAService;
.super Ljava/lang/Object;
.source "CmcSAService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSAService"


# instance fields
.field protected final mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field protected final mContext:Landroid/content/Context;

.field protected mIsLocal:Z

.field protected final mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

.field protected mSAConnection:Landroid/content/ServiceConnection;

.field protected final mSAServiceBinder:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;

.field protected mState:Lcom/sec/internal/ims/core/cmc/CmcSAState;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAConnection:Landroid/content/ServiceConnection;

    .line 19
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSAState;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcSAState;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState;

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mIsLocal:Z

    .line 23
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 25
    iput-object p3, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    .line 26
    new-instance p2, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;

    new-instance p3, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAService;Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback-IA;)V

    invoke-direct {p2, p1, p3}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAServiceBinder:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;

    return-void
.end method


# virtual methods
.method public connectToSamsungAccountService(Z)V
    .locals 2

    .line 30
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mIsLocal:Z

    .line 31
    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAService;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to Samsung Account AIDL() from cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mIsLocal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->isSaLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    const-string v0, "connectToSamsungAccountService: Not Logined"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAError;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string/jumbo v1, "onServiceConnected"

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAError;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V

    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->initServiceConnection()V

    .line 40
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->SERVICE_CONNECTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAServiceBinder:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    const-string v1, "connectToSamsungAccountService: bindService failed"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mIsLocal:Z

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;->onSAServiceBindResult(ZZ)V

    return-void
.end method

.method public disconnectToSamsungAccountService()V
    .locals 4

    .line 74
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnectToSamsungAccountService"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAServiceBinder:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->disconnectService()V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectToSamsungAccountService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    return-void
.end method

.method protected abstract getAccessTokenInternal()V
.end method

.method protected abstract handleAccessTokenFailure(Landroid/os/Bundle;)V
.end method

.method protected abstract handleAccessTokenSuccess(ILandroid/os/Bundle;)V
.end method

.method protected handleServiceDisconnected(Ljava/lang/String;)V
    .locals 2

    .line 122
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAError;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->SERVICE_DISCONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAError;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V

    return-void
.end method

.method protected final initServiceConnection()V
    .locals 1

    .line 50
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAService;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public isLocalCachedAccessTokenRequestState()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mIsLocal:Z

    return p0
.end method

.method public isSAServiceIdle()Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAState;->isIdle()Z

    move-result p0

    return p0
.end method

.method protected abstract isSaLoggedIn()Z
.end method

.method protected abstract needToGetAccessTokenAfterServiceConnected()Z
.end method

.method protected setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAState;->set(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    return-void
.end method

.method public tryGetAccessToken()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->isSAServiceIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mIsLocal:Z

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->connectToSamsungAccountService(Z)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->getAccessTokenInternal()V

    :goto_0
    return-void
.end method
