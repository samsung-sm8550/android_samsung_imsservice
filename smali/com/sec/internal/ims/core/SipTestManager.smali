.class public Lcom/sec/internal/ims/core/SipTestManager;
.super Ljava/lang/Object;
.source "SipTestManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISipTestManager;


# static fields
.field private static final DEFAULT_SIP_TEST_IP:Ljava/lang/String; = "192.168.0.86"

.field private static final LOCAL_TOOL_ADDRESS:Ljava/lang/String; = "127.0.0.1"

.field private static final LOG_TAG:Ljava/lang/String; = "SipTestManager"

.field private static final PERSIST_SIP_TEST_IP:Ljava/lang/String; = "persist.sip.test.ip"


# instance fields
.field private mActMode:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/core/SipTestManager;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p2}, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->fromValue(I)Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/SipTestManager;->mActMode:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    .line 76
    sget-object p1, Lcom/sec/internal/ims/core/SipTestManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create SipTestManager with actMode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/SipTestManager;->mActMode:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearNetwork(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            "Lcom/sec/internal/ims/core/NetworkCallback;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onNetworkRequestFail()V

    .line 127
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyImsRegistration(ZII)V
    .locals 3

    .line 161
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 162
    const-string v0, "com.android.internal.telephony.TestServiceState"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v0, "data_rat"

    const-string v1, "data_reg_state"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    iget-object p1, p0, Lcom/sec/internal/ims/core/SipTestManager;->mActMode:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    sget-object p2, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->REMOTE_SERVER_ROAMING:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    const-string v0, "data_roaming_type"

    if-ne p1, p2, :cond_0

    const/4 p1, 0x3

    .line 169
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 175
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/SipTestManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public notifyNetworkEvent(ZLcom/sec/internal/constants/ims/os/NetworkState;I)V
    .locals 2

    const/16 p3, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    .line 133
    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 134
    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 135
    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    .line 136
    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 137
    sget p1, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    .line 138
    sget-object p1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V

    .line 139
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgAvailable(Z)V

    .line 140
    invoke-virtual {p2, p3, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/core/SipTestManager;->mActMode:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    sget-object p1, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->REMOTE_SERVER_ROAMING:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    if-ne p0, p1, :cond_0

    .line 142
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRoaming(Z)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRoaming(Z)V

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 148
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 149
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    .line 150
    invoke-virtual {p2, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 151
    sget p0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    invoke-virtual {p2, p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    .line 152
    sget-object p0, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    invoke-virtual {p2, p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V

    .line 153
    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgAvailable(Z)V

    .line 154
    invoke-virtual {p2, p3, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 155
    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRoaming(Z)V

    :goto_0
    return-void
.end method

.method public onDataConnectionStateChanged(Lcom/sec/internal/ims/core/RegistrationManagerBase;Landroid/os/Bundle;IZI)V
    .locals 7

    if-eqz p4, :cond_0

    .line 186
    const-string p0, "networkType"

    const/16 p3, 0x12

    invoke-virtual {p2, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 190
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length p2, p0

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_2

    aget-object v0, p0, p4

    .line 194
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    invoke-virtual {p1, p0, p5}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 197
    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    .line 198
    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZZ)V

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public requestNetwork(Landroid/net/ConnectivityManager;Ljava/util/Set;Lcom/sec/internal/ims/core/NetworkCallback;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;",
            ">;",
            "Lcom/sec/internal/ims/core/NetworkCallback;",
            "II)V"
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/4 v2, 0x1

    .line 85
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const-string/jumbo v3, "persist.sip.test.ip"

    const-string v4, "192.168.0.86"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/core/SipTestManager;->mActMode:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    sget-object v4, Lcom/sec/internal/ims/core/SipTestManager$ActionMode;->LOCAL_TOOL:Lcom/sec/internal/ims/core/SipTestManager$ActionMode;

    if-ne p0, v4, :cond_0

    .line 90
    const-string v3, "127.0.0.1"

    .line 92
    iget-object p0, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    instance-of v4, p0, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz v4, :cond_0

    .line 93
    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/sec/ims/settings/ImsProfile;->setTransport(I)V

    .line 96
    :cond_0
    iget-object p0, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    instance-of v4, p0, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz v4, :cond_1

    .line 97
    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    const-string/jumbo v4, "wifi_precondition_enabled"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v4, v5}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/SipTestManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add pcscf-server address as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p5, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->setPcscfServers(Ljava/util/Collection;)V

    .line 103
    new-instance p0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    const/16 p1, 0xb

    if-ne p4, p1, :cond_3

    .line 106
    iget-object p1, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 107
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 108
    monitor-enter p2

    .line 109
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    const/16 v3, 0x12

    .line 110
    invoke-interface {v1, v3, v2, p5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 111
    const-string v3, "ims"

    invoke-interface {v1, p5, v3}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 113
    :cond_2
    monitor-exit p2

    goto :goto_2

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 116
    :cond_3
    :goto_2
    iput-object v0, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 117
    iput-boolean v2, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    .line 118
    iput-object p0, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 119
    iget-object p0, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {p0, p4, v0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    :cond_4
    return-void
.end method
