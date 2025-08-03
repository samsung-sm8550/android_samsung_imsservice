.class public Lcom/sec/internal/ims/servicemodules/options/OptionsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "OptionsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/IOptionsModule;
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;


# static fields
.field protected static final EVT_CAPABILITIES_UPDATE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "OptionsModule"


# instance fields
.field mContext:Landroid/content/Context;

.field mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

.field private mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;


# direct methods
.method public static synthetic $r8$lambda$tuMevY-ev98_tWIhDKq36O1Y0Qs(Lcom/sec/internal/ims/servicemodules/options/OptionsModule;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->lambda$init$0(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mContext:Landroid/content/Context;

    .line 61
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 62
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$init$0(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method convertOptionsError(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 0

    .line 233
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, p0, :cond_0

    .line 234
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0

    .line 235
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, p0, :cond_1

    .line 236
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0

    .line 237
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REACHABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-eq p1, p0, :cond_8

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, p0, :cond_2

    goto :goto_1

    .line 239
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, p0, :cond_3

    .line 240
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0

    .line 241
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, p0, :cond_4

    .line 242
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0

    .line 243
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, p0, :cond_5

    .line 244
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0

    .line 245
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-eq p1, p0, :cond_7

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->AUTOMATA_PRESENT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, p0, :cond_6

    goto :goto_0

    .line 248
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0

    .line 246
    :cond_7
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0

    .line 238
    :cond_8
    :goto_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object p0
.end method

.method public deRegisterService(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 71
    const-class p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 76
    const-string/jumbo p0, "options"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 254
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->onCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 83
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 84
    const-string v0, "OptionsModule"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    .line 87
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/OptionsModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/OptionsModule;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->registerOptionsEvent(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;)V

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->init()V

    return-void
.end method

.method public isReadyToRequest(I)Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method onCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 8

    .line 199
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCapabilitiesUpdate: success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OptionsModule"

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 202
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 203
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 204
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 206
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_3

    .line 207
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->convertOptionsError(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v1

    .line 208
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq v1, v4, :cond_2

    .line 209
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq v1, v4, :cond_1

    .line 211
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setFeatures(J)V

    goto :goto_1

    .line 213
    :cond_1
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setFeatures(J)V

    goto :goto_1

    .line 216
    :cond_2
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setFeatures(J)V

    goto :goto_1

    .line 218
    :cond_3
    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_4

    const-string v4, "TEL"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 219
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 220
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setFeatures(J)V

    .line 224
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v4, :cond_6

    .line 225
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", txID: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v0, 0x0

    invoke-interface {p0, v4, v1, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    :cond_6
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 103
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 104
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->setImsDeRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 105
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 107
    const-string p2, "OptionsModule"

    const-string/jumbo v0, "onDeregistered: Options service is disabled."

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    const/4 p2, 0x0

    invoke-interface {p0, p2, p2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 98
    const-string p0, "OptionsModule"

    const-string/jumbo p1, "onRegistered: Options service is enabled."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public readConfig(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "II)I"
        }
    .end annotation

    .line 132
    const-string p0, "OptionsModule"

    const-string/jumbo p1, "requestCapabilityExchange: OPTIONS doesn\'t support list."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;I)Z
    .locals 6

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return p4

    .line 144
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p9, "requestCapabilityExchange: uri: "

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p9, ", iari: "

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p9, "OptionsModule"

    invoke-static {p9, p7, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    invoke-static {p7}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result p3

    const/4 p9, 0x0

    if-eqz p3, :cond_1

    invoke-static {p1, p7}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p3

    if-nez p3, :cond_1

    .line 146
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p3, p7, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p3

    .line 147
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p9}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    :cond_1
    move-object v1, p1

    if-eqz p2, :cond_2

    .line 152
    invoke-interface {p2, p9}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;->onComplete(Lcom/sec/ims/options/Capabilities;)V

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    move-wide v2, p5

    move v4, p7

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return p4
.end method

.method public reset(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;IILjava/lang/String;)Z
    .locals 8

    .line 190
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexErrorResponse: uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendCapexErrorResponse(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z
    .locals 10

    .line 171
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsModule"

    move/from16 v8, p6

    invoke-static {v1, v8, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, p0

    .line 176
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;II)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsModule"

    invoke-static {v1, p5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCapexResponse: feature list:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p5, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ZLjava/util/Set;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Ljava/util/Set;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOwnCapabilities(JI)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->setOwnCapabilities(JI)V

    .line 125
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    :cond_1
    return-void
.end method
