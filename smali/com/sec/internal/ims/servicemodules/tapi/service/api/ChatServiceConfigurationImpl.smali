.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;
.super Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;
.source "ChatServiceConfigurationImpl.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/gsma/services/rcs/chat/IChatServiceConfiguration$Stub;-><init>()V

    .line 14
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 22
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    return-void
.end method


# virtual methods
.method public getChatTimeout()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getTimerIdle()I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGeolocExpirationTime()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/16 p0, 0x708

    return p0
.end method

.method public getGeolocLabelMaxLength()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/16 p0, 0xc8

    return p0
.end method

.method public getGroupChatMaxParticipants()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxAdhocGroupSize()I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroupChatMessageMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSize1ToM()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getGroupChatMinParticipants()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public getGroupChatSubjectMaxLength()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/16 p0, 0x64

    return p0
.end method

.method public getIsComposingTimeout()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/16 p0, 0x14

    return p0
.end method

.method public getOneToOneChatMessageMaxLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSize1To1()J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChatSf()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChatWarnSF()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImWarnSf()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGroupChatSupported()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRespondToDisplayReportsEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;->DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p0, :cond_0

    .line 123
    const-string v0, "ChatRespondToDisplayReports"

    .line 125
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isSmsFallback()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isSmsFallbackAuth()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setRespondToDisplayReports(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRespondToDisplayReports() enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ChatServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p0, :cond_0

    .line 144
    const-string v0, "ChatRespondToDisplayReports"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
