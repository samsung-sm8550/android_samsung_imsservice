.class public Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;
.super Lcom/sec/internal/ims/core/cmc/CmcSAService;
.source "CmcSAServiceImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSAServiceImpl"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/cmc/CmcSAService;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;)V

    return-void
.end method

.method private getCurrentAccessTokenForExpiredToken()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mIsLocal:Z

    if-nez p0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected getAccessTokenInternal()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAState;->is(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getAccessTokenInternal: Already requesting access token state"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 30
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getAccessTokenInternal: Try to Get Access Token"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAServiceBinder:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;->getCurrentAccessTokenForExpiredToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->getAccessToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 32
    const-string v0, "getAccessTokenInternal: getAccessToken fail"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->handleServiceDisconnected(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    invoke-interface {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;->onSARequested()V

    return-void
.end method

.method protected handleAccessTokenFailure(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    const-string v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "error_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSAError;

    invoke-direct {v1, v0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveAccessToken: Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->ANOTHER_REQUEST_IS_ONGOING:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcSAError;->isReason(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "onReceiveAccessToken: Ignore ANOTHER_REQUEST_IS_ONGOING error"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->REQUESTING:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    return-void

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    invoke-interface {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V

    return-void
.end method

.method protected handleAccessTokenSuccess(ILandroid/os/Bundle;)V
    .locals 6

    .line 49
    const-string p1, "access_token"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string/jumbo v0, "user_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string v1, "mcc"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "api_server_url"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v3, "auth_server_url"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 55
    sget-object v3, Lcom/sec/internal/ims/core/cmc/CmcSAServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceiveAccessToken: Success to get user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Access Token: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " api_server_url: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " auth_server_url: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mcc : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    invoke-interface {p0, p1, v2}, Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;->onSAUpdated(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected isSaLoggedIn()Z
    .locals 1

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    .line 82
    const-string v0, "com.osp.app.signin"

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 83
    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needToGetAccessTokenAfterServiceConnected()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
