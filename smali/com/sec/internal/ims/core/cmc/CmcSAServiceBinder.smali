.class public abstract Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;
.super Ljava/lang/Object;
.source "CmcSAServiceBinder.java"


# static fields
.field public static final ID_REQUEST_ACCESSTOKEN:I = 0x1

.field public static final ID_REQUEST_SIGNIN:I = 0x2

.field protected static final mAppId:Ljava/lang/String; = "8f9l37bswj"


# instance fields
.field protected mAccessTokenCallback:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->mAccessTokenCallback:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;

    return-void
.end method


# virtual methods
.method public final bindService(Landroid/content/ServiceConnection;)Z
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->getServiceIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public abstract disconnectService()V
.end method

.method public abstract getAccessToken(Ljava/lang/String;)Z
.end method

.method protected abstract getServiceIntent()Landroid/content/Intent;
.end method

.method public abstract onServiceConnected(Landroid/os/IBinder;)Z
.end method

.method public abstract onServiceDisconnected()V
.end method
