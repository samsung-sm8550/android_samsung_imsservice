.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceService;
.super Lcom/sec/ims/presence/IPresenceService$Stub;
.source "PresenceService.java"


# instance fields
.field mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/sec/ims/presence/IPresenceService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 26
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-void
.end method


# virtual methods
.method public getOwnPresenceInfo()Lcom/sec/ims/presence/PresenceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 32
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPresenceInfo(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 38
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPresenceInfoByContactId(Ljava/lang/String;)Lcom/sec/ims/presence/PresenceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceService;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method
