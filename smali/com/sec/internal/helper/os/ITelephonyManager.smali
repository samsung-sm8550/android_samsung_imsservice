.class public interface abstract Lcom/sec/internal/helper/os/ITelephonyManager;
.super Ljava/lang/Object;
.source "ITelephonyManager.java"


# virtual methods
.method public abstract checkCallControl(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract clearCache()V
.end method

.method public abstract getAidForAppType(I)Ljava/lang/String;
.end method

.method public abstract getAidForAppType(II)Ljava/lang/String;
.end method

.method public abstract getAllCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllCellInfoBySubId(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBtid(I)Ljava/lang/String;
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCallState(I)I
.end method

.method public abstract getCurrentPhoneTypeForSlot(I)I
.end method

.method public abstract getDataNetworkType()I
.end method

.method public abstract getDataNetworkType(I)I
.end method

.method public abstract getDataServiceState(I)I
.end method

.method public abstract getDeviceSoftwareVersion(I)Ljava/lang/String;
.end method

.method public abstract getEmcAttachAuth(I)Z
.end method

.method public abstract getEmergencyNumberList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getGid2(I)Ljava/lang/String;
.end method

.method public abstract getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract getGroupIdLevel1(I)Ljava/lang/String;
.end method

.method public abstract getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImei(I)Ljava/lang/String;
.end method

.method public abstract getIsimDomain()Ljava/lang/String;
.end method

.method public abstract getIsimDomain(I)Ljava/lang/String;
.end method

.method public abstract getIsimImpi(I)Ljava/lang/String;
.end method

.method public abstract getIsimImpu(I)[Ljava/lang/String;
.end method

.method public abstract getIsimImpuAtIndex(II)Ljava/lang/String;
.end method

.method public abstract getIsimPcscf()[Ljava/lang/String;
.end method

.method public abstract getKeyLifetime(I)Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1Number(I)Ljava/lang/String;
.end method

.method public abstract getMeid(I)Ljava/lang/String;
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getMsisdn(I)Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIso()Ljava/lang/String;
.end method

.method public abstract getNetworkCountryIso(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperator(I)Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorForPhone(I)Ljava/lang/String;
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract getNextRetryTime()J
.end method

.method public abstract getPhoneCount()I
.end method

.method public abstract getPreferredNetworkType(I)I
.end method

.method public abstract getPrimaryImei()Ljava/lang/String;
.end method

.method public abstract getRand(I)[B
.end method

.method public abstract getRilSimOperator(I)Ljava/lang/String;
.end method

.method public abstract getServiceState()I
.end method

.method public abstract getServiceState(I)Landroid/telephony/ServiceState;
.end method

.method public abstract getServiceStateForSubscriber(I)I
.end method

.method public abstract getSimCountryIso()Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForPhone(I)Ljava/lang/String;
.end method

.method public abstract getSimCountryIsoForSubId(I)Ljava/lang/String;
.end method

.method public abstract getSimOperator()Ljava/lang/String;
.end method

.method public abstract getSimOperator(I)Ljava/lang/String;
.end method

.method public abstract getSimOperatorName(I)Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber()Ljava/lang/String;
.end method

.method public abstract getSimSerialNumber(I)Ljava/lang/String;
.end method

.method public abstract getSimState()I
.end method

.method public abstract getSimState(I)I
.end method

.method public abstract getSubscriberId(I)Ljava/lang/String;
.end method

.method public abstract getSubscriberIdForUiccAppType(II)Ljava/lang/String;
.end method

.method public abstract getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVoiceNetworkType()I
.end method

.method public abstract getVoiceNetworkType(I)I
.end method

.method public abstract hasCall(Ljava/lang/String;)Z
.end method

.method public abstract iccCloseLogicalChannel(II)Z
.end method

.method public abstract iccOpenLogicalChannelAndGetChannel(ILjava/lang/String;)I
.end method

.method public abstract iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isGbaSupported()Z
.end method

.method public abstract isGbaSupported(I)Z
.end method

.method public abstract isNetworkRoaming()Z
.end method

.method public abstract isNetworkRoaming(I)Z
.end method

.method public abstract isVoiceCapable()Z
.end method

.method public abstract registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
.end method

.method public abstract registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
.end method

.method public abstract semGetDataState(I)I
.end method

.method public abstract semGetNrMode(I)I
.end method

.method public abstract semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract semIsVoNrEnabled(I)Z
.end method

.method public abstract semSetNrMode(II)V
.end method

.method public abstract sendRawRequestToTelephony(Landroid/content/Context;I[B)V
.end method

.method public abstract setCallState(I)V
.end method

.method public abstract setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPreferredNetworkType(II)Z
.end method

.method public abstract setRadioPower(Z)V
.end method

.method public abstract unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
.end method

.method public abstract unregisterTelephonyCallbackForSlot(ILandroid/telephony/TelephonyCallback;)V
.end method

.method public abstract validateMsisdn(I)Z
.end method
