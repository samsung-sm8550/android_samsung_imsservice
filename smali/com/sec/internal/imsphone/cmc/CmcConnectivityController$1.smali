.class Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "CmcConnectivityController.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3

    .line 290
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    .line 291
    invoke-static {}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeregistered, cmcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ErrorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", DeregistrationReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 293
    const-string v1, "SamsungCMC_WIFI_SD"

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 p2, 0x7

    if-eq p1, p2, :cond_0

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_2

    .line 328
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmP2pController(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->onDeregistered(I)V

    goto :goto_2

    .line 309
    :cond_1
    sput-boolean v2, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    .line 312
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmWifiProfile(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 313
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result p1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    .line 314
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result p1

    const/16 p2, 0x19

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    .line 317
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmPhoneCount(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 318
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmRm(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmWifiProfile(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p2, v0, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 315
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p0, v1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$mretryWifiRegister(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Ljava/lang/String;)V

    goto :goto_2

    .line 301
    :cond_4
    sput-boolean v2, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    .line 303
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    const-string p1, "SamsungCMC_WIFI_PD"

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$mretryWifiRegister(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Ljava/lang/String;)V

    goto :goto_2

    .line 296
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p0, v1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$mretryWifiRegister(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 230
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    .line 231
    invoke-static {}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered, cmcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmP2pController(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/imsphone/cmc/CmcP2pController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcP2pController;->onRegistered(I)V

    goto/16 :goto_2

    .line 264
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1, v2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fputmHotspotRegistered(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Z)V

    .line 266
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$mgetHSPref(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "local_network"

    if-nez v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmIpServiceManager(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleRemove(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmIpServiceManager(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/imsphone/cmc/IpServiceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmHotspotHostPcscfIp(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/imsphone/cmc/IpServiceManager;->ipRuleAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmHotspotHostPcscfIp(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$msetHSPref(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 251
    :cond_3
    sput-boolean v2, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    .line 254
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmRm(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isCmcRegistered(I)I

    move-result p1

    if-lez p1, :cond_6

    .line 255
    invoke-static {}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "There is already cmc registration. deregister"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmPhoneCount(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 257
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmRm(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmWifiProfile(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_4
    sput-boolean v2, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    goto :goto_2

    .line 236
    :cond_5
    invoke-static {}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmc is registered, mWifiRegistered: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-boolean p1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->mWifiRegistered:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmWifiProfile(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 238
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmPhoneCount(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 239
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmRm(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController$1;->this$0:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;->-$$Nest$fgetmWifiProfile(Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method
