.class public Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;
.super Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;
.source "CmcSAServiceBinderImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSAServiceBinderImpl"


# instance fields
.field private mISaService:Lcom/msc/sa/aidl/ISAService;

.field private mRegistrationCode:Ljava/lang/String;

.field private mSACallback:Lcom/msc/sa/aidl/ISACallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 16
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    .line 17
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mRegistrationCode:Ljava/lang/String;

    return-void
.end method

.method private makeBundleToRequestAccessToken(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11

    .line 84
    const-string v9, "login_id "

    const-string v10, "login_id_type"

    const-string/jumbo v0, "user_id"

    const-string v1, "birthday"

    const-string v2, "email_id"

    const-string v3, "mcc"

    const-string/jumbo v4, "server_url"

    const-string v5, "cc"

    const-string v6, "api_server_url"

    const-string v7, "auth_server_url"

    const-string v8, "device_physical_address_text"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 91
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "makeBundleToRequestAccessToken: Adding expired_access_token"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "expired_access_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    const-string p1, "additional"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public disconnectService()V
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->onServiceDisconnected()V

    return-void
.end method

.method public getAccessToken(Ljava/lang/String;)Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mISaService:Lcom/msc/sa/aidl/ISAService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mRegistrationCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->makeBundleToRequestAccessToken(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {v0, p1, v2, p0}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method protected getSACallbackPackageName()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 25
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v0, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.msc.sa.service.RequestService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public onServiceConnected(Landroid/os/IBinder;)Z
    .locals 5

    .line 33
    invoke-static {p1}, Lcom/msc/sa/aidl/ISAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mISaService:Lcom/msc/sa/aidl/ISAService;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 37
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    .line 39
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mISaService:Lcom/msc/sa/aidl/ISAService;

    const-string v1, "8f9l37bswj"

    const-string v2, ""

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->getSACallbackPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mSACallback:Lcom/msc/sa/aidl/ISACallback;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mRegistrationCode:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 41
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public onServiceDisconnected()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mRegistrationCode:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mISaService:Lcom/msc/sa/aidl/ISAService;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :goto_1
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;->mISaService:Lcom/msc/sa/aidl/ISAService;

    .line 60
    throw v0

    :cond_0
    :goto_2
    return-void
.end method
