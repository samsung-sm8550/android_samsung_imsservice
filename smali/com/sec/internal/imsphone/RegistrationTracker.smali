.class Lcom/sec/internal/imsphone/RegistrationTracker;
.super Ljava/lang/Object;
.source "RegistrationTracker.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RegTracker"


# instance fields
.field private mAdhocDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallId:Ljava/lang/String;

.field mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

.field mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

.field final mFeatureTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    iput-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mAdhocDomains:Ljava/util/List;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCallId:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-direct {v0}, Lcom/sec/internal/imsphone/SipDelegateConfig;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-void
.end method

.method private isAdhocProfileRegister(Lcom/sec/internal/constants/ims/SipMsg;)Z
    .locals 2

    .line 112
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getRequestLineUri()Ljava/lang/String;

    move-result-object p1

    .line 113
    const-string v0, "isAdhocProfileRegister: domain from StartLine is [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegTracker"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mAdhocDomains:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getFeatureTags()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    monitor-enter v0

    .line 68
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-direct {v1, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getRegisteredDelegateConfig()Lcom/sec/internal/imsphone/SipDelegateConfig;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    sget-object v1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getRegisteredToken(Ljava/util/Set;)Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/RegistrationTracker;->getFeatureTags()Ljava/util/Set;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/RegistrationTracker;->getState()Lcom/sec/internal/imsphone/RegistrationTracker$State;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    if-ne v1, v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    new-instance p1, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/RegistrationTracker;->getRegisteredDelegateConfig()Lcom/sec/internal/imsphone/SipDelegateConfig;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;-><init>(Lcom/sec/internal/imsphone/SipDelegateConfig;Ljava/util/Set;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getState()Lcom/sec/internal/imsphone/RegistrationTracker$State;
    .locals 1

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isIrrelevantRegister(Lcom/sec/internal/constants/ims/SipMsg;)Z
    .locals 1

    .line 97
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isContactUriHasSos()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/RegistrationTracker;->isAdhocProfileRegister(Lcom/sec/internal/constants/ims/SipMsg;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRegistrationDone(Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/imsphone/SipDelegateConfig;
    .locals 4

    .line 187
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/SipDelegateConfig;->getBuilder()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPcscf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setPcscfAddress(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/imsphone/RegistrationTracker$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/sec/internal/imsphone/RegistrationTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setPublicUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpi()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setPrivateUserIdentifier(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMssSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setMaxUdpPayloadSizeBytes(I)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->build()Lcom/sec/internal/imsphone/SipDelegateConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-object p1
.end method

.method public onRegistrationDone(Lcom/sec/ims/ImsRegistration;Z)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/RegistrationTracker;->onRegistrationDone(Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/imsphone/SipDelegateConfig;

    .line 199
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/RegistrationTracker;->updateState(Z)V

    return-void
.end method

.method public onSipRegisterTransaction(Lcom/sec/internal/constants/ims/SipMsg;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getCallIds()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 87
    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/RegistrationTracker;->isIrrelevantRegister(Lcom/sec/internal/constants/ims/SipMsg;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/RegistrationTracker;->setCallId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/RegistrationTracker;->updateState(Lcom/sec/internal/constants/ims/SipMsg;)V

    return-void
.end method

.method setCallId(Ljava/lang/String;)V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCallId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    sget-object v1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    const-string v2, "RegTracker"

    if-eq v0, v1, :cond_0

    .line 56
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "setCallId: Call-Id has changed in [%s] state! Changed to DE_REGISTERED"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object v1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCallId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setSipDelegateConfig(Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegTracker(state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") callId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCallId:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAdhocDomain(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mAdhocDomains:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mAdhocDomains:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method updateState(Lcom/sec/internal/constants/ims/SipMsg;)V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 180
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getExpire()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->RE_REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    :goto_0
    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    goto/16 :goto_2

    .line 144
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getExpire()I

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getViaHostPort()Landroid/util/Pair;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/SipDelegateConfig;->getBuilder()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sip:"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setHomeDomain(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getViaTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setTransport(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 149
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setLocalAddress(Ljava/lang/String;I)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getContactUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipContactUserParameter(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getContactImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setImei(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipUserAgentHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    const-string v1, ","

    .line 153
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getSecurityVerify()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSecurityVerifyHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getPAccessNetworkInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipPaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getPLastAccessNetworkInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipPlaniHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    .line 160
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getStartLine()Lcom/sec/internal/constants/ims/SipMsg$StartLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->asStatusLine()Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;->getCode()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_5

    const/16 v1, 0x197

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    .line 167
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 169
    iget-object v1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getFeatureTags()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object p0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipDelegateConfig;->getBuilder()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p0

    const-string v0, ","

    .line 173
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getServiceRoutes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipServiceRouteHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object p0

    const-string v0, ","

    .line 174
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getPAssociatedUris()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipAssociatedUriHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 170
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 162
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mDelegateConfig:Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/SipDelegateConfig;->getBuilder()Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getAuthenticate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipAuthenticationHeader(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->getAuthenticateNonce()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;->setSipAuthenticationNonce(Ljava/lang/String;)Lcom/sec/internal/imsphone/SipDelegateConfig$Builder;

    .line 165
    sget-object p1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->AUTHORIZING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    goto :goto_2

    .line 136
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/SipMsg;->isOutGoing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 137
    const-string v0, "RegTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DE_REGISTERED: updateState: Unexpected SIP ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_7
    sget-object p1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERING:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    :cond_8
    :goto_2
    return-void
.end method

.method updateState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    sget-object p1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 121
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 123
    :cond_0
    monitor-enter p0

    .line 124
    :try_start_1
    sget-object p1, Lcom/sec/internal/imsphone/RegistrationTracker$State;->DE_REGISTERED:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCurrentState:Lcom/sec/internal/imsphone/RegistrationTracker$State;

    .line 125
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 126
    iget-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    monitor-enter p1

    .line 127
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mFeatureTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 128
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/imsphone/RegistrationTracker;->mCallId:Ljava/lang/String;

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 128
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p1

    .line 125
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method
