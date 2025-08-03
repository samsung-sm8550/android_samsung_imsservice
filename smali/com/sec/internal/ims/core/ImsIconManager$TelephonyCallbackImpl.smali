.class Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;
.super Landroid/telephony/TelephonyCallback;
.source "ImsIconManager.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field private mPhoneId:I

.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;I)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 153
    iput p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;ILcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;I)V

    return-void
.end method

.method private isUpdateRequires(Landroid/telephony/ServiceState;)Z
    .locals 8

    .line 167
    new-instance v0, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v0, p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 168
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 169
    iget v2, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    .line 170
    iget v3, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    .line 171
    iget-boolean v4, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    .line 172
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentNetworkType(I)V

    .line 173
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentServiceState(I)V

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentVoiceRatType(I)V

    .line 175
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->setCurrentRoamingState(Z)V

    .line 176
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 177
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isATTMexico()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-nez p1, :cond_0

    return v5

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-boolean p1, p1, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-eq v4, p1, :cond_1

    move p1, v6

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    if-eqz v2, :cond_2

    .line 182
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-nez v2, :cond_4

    .line 184
    invoke-virtual {v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    move v0, v5

    .line 185
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget-object v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v2, v2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    if-eq v3, v2, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    if-nez v0, :cond_6

    .line 187
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isNWTypeChangedUpdateRequires(I)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_6

    if-nez v2, :cond_6

    .line 188
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isSeparatedVo5gIcon(II)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v5, v6

    :cond_7
    return v5
.end method


# virtual methods
.method isImsIconSupportedNW(I)Z
    .locals 0

    .line 196
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x12

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method isNWTypeChangedUpdateRequires(I)Z
    .locals 1

    .line 192
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isImsIconSupportedNW(I)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isImsIconSupportedNW(I)Z

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSeparatedVo5gIcon(II)Z
    .locals 4

    .line 201
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    const-string/jumbo v1, "separate_vo5g_icon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    .line 206
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v1, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p2, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    .line 208
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSeparatedVo5gIcon oldCellularNetworkType :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , newCellularNetworkType :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p1, v1, :cond_3

    .line 210
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public onCallStateChanged(I)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iget v0, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    if-ne p1, v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call state is changed to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput p1, v0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentPhoneState:I

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 221
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    const-string v2, "hide_vowifi_icon_when_cs_call"

    .line 222
    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    iput-boolean v0, v1, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 224
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_2
    if-nez p1, :cond_3

    .line 227
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    :cond_3
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 158
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServiceStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->isUpdateRequires(Landroid/telephony/ServiceState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/core/ImsIconManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->mPhoneId:I

    const-string/jumbo v1, "updateRegistrationIcon on RAT change"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_0
    return-void
.end method
