.class public Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallProfileBuilder;
.super Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
.source "IncomingCallProfileBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    return-object p0
.end method

.method public setCmcDeviceId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 0

    .line 90
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getCmcDeviceId()Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcDeviceId(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public setCmcEdCallSlot(I)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcEdCallSlot(I)V

    return-object p0
.end method

.method public setComposerData(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 2

    .line 74
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string v0, "CallProfileBuilder"

    const-string/jumbo v1, "setComposerData: Setting composer data incoming flow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getParams()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallParams;->getComposerData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setComposerData(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public setDisplayName(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 2

    .line 21
    sget-object v0, Lcom/sec/internal/constants/Mno;->AVEA_TURKEY:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    .line 22
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELENOR_MM:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/Mno;->UMNIAH_JO:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_7

    .line 23
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;->getPeerAddr()Lcom/sec/ims/util/NameAddr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 24
    sget-object v0, Lcom/sec/internal/constants/Mno;->DU_UAE:Lcom/sec/internal/constants/Mno;

    const-string v1, "CallProfileBuilder"

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/Mno;->ZAIN_KSA:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\\+?[0-9\\-]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    const-string/jumbo v0, "onImsIncomingCallEvent: displayName match with phonenumber format, set as DialingNumber"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_1

    .line 28
    sget-object p3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq p2, p3, :cond_0

    sget-object p3, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_1

    .line 29
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 33
    :cond_2
    sget-object p3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq p2, p3, :cond_3

    sget-object p3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_4

    .line 34
    :cond_3
    const-string p3, "\\\\"

    const-string v0, "\\"

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 35
    const-string p3, "\\\""

    const-string v0, "\""

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_4
    sget-object p3, Lcom/sec/internal/constants/Mno;->GRAMEENPHONE:Lcom/sec/internal/constants/Mno;

    if-eq p2, p3, :cond_6

    .line 38
    sget-object p3, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_5

    .line 40
    :try_start_0
    const-string p3, "UTF-8"

    invoke-static {p1, p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 42
    invoke-virtual {p3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 45
    :cond_5
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onImsIncomingCallEvent: displayName is different with phone number, so setting extra mLetteringText "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 50
    :cond_6
    sget-object p3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_7

    const-string p2, "RESTRICTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "onImsIncomingCallEvent: set displayName to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", dialNumber = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    .line 53
    invoke-virtual {p3}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-object p0
.end method

.method public setEchoCallId(Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;
    .locals 1

    .line 63
    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    filled-new-array {p1, v0}, [Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 64
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get echo call id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CallProfileBuilder"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/CallProfileBuilder;->mCallProfile:Lcom/sec/ims/volte2/data/CallProfile;

    invoke-virtual {p1, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setEchoCallId(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method
