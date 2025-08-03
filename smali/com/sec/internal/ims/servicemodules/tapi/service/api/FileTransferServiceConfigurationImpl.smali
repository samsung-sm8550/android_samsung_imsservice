.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;
.super Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;
.source "FileTransferServiceConfigurationImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/gsma/services/rcs/filetransfer/IFileTransferServiceConfiguration$Stub;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 39
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    .line 40
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rcsSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getImageResizeOption()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/defaultconst/FileTransferDefaultConst;->DEFALUT_IMAGERESIZEOPTION:Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p0, :cond_0

    .line 72
    const-string v0, "ImageResizeOption"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    invoke-static {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->valueOf(I)Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;

    move-result-object v1

    .line 75
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start : getImageResizeOption() mValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", imageResizeOption="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/gsma/services/rcs/filetransfer/FileTransferServiceConfiguration$ImageResizeOption;->toInt()I

    move-result p0

    .line 79
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : getImageResizeOption() vv="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getMaxAudioMessageLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const-wide/16 v0, 0x258

    return-wide v0
.end method

.method public getMaxFileTransfers()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/16 p0, 0xa

    return p0
.end method

.method public getMaxSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMaxSizeFileTr()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWarnSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtWarnSize()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isAutoAcceptEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v0, :cond_0

    .line 112
    const-string v1, "AutoAcceptFileTransfer"

    .line 113
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtAutAccept()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public isAutoAcceptInRoamingEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz v0, :cond_0

    .line 126
    const-string v1, "AutoAcceptFtInRoaming"

    .line 127
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtAutAccept()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public isAutoAcceptModeChangeable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p0, :cond_0

    .line 141
    const-string v0, "AutoAcceptFtChangeable"

    .line 142
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGroupFileTransferSupported()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public setAutoAccept(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p0, :cond_0

    .line 47
    const-string v0, "AutoAcceptFileTransfer"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setAutoAcceptInRoaming(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p0, :cond_0

    .line 55
    const-string v0, "AutoAcceptFtInRoaming"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setImageResizeOption(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/FileTransferServiceConfigurationImpl;->rcsSetting:Lcom/sec/internal/ims/util/RcsSettingsUtils;

    if-eqz p0, :cond_0

    .line 63
    const-string v0, "ImageResizeOption"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->writeParameter(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
