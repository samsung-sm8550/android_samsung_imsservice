.class Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "CmcSAServiceBinderImpl.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl$SACallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinderImpl;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->mAccessTokenCallback:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;->onReceiveAccessToken(IZLandroid/os/Bundle;)V

    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
