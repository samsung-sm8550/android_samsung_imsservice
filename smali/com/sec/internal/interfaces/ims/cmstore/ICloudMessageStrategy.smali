.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;
.super Ljava/lang/Object;
.source "ICloudMessageStrategy.java"


# virtual methods
.method public abstract bulkOpTreatSuccessIndividualResponse(I)Z
.end method

.method public abstract bulkOpTreatSuccessRequestResponse(I)Z
.end method

.method public abstract clearOmaRetryData()V
.end method

.method public abstract decrypt(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getAdaptedRetrySchedule(I)I
.end method

.method public abstract getAuthorizationBasic()Ljava/lang/String;
.end method

.method public abstract getAuthorizationBearer()Ljava/lang/String;
.end method

.method public abstract getClientVersion(I)Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.end method

.method public abstract getDateFormat()Ljava/text/SimpleDateFormat;
.end method

.method public abstract getDeviceType()Ljava/lang/String;
.end method

.method public abstract getFailedCallFlowTranslator()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getIsInitSyncIndicatorRequired()Z
.end method

.method public abstract getLastFailedApi()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxBulkOptionEntry()I
.end method

.method public abstract getMaxRetryCounter()I
.end method

.method public abstract getMaxSearchEntry()I
.end method

.method public abstract getMessageAttributeRegistration()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNativeLine()Ljava/lang/String;
.end method

.method public abstract getNcHost()Ljava/lang/String;
.end method

.method public abstract getNmsHost()Ljava/lang/String;
.end method

.method public abstract getNotificaitonFormat()Lcom/sec/internal/omanetapi/common/data/NotificationFormat;
.end method

.method public abstract getOMAApiVersion()Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStoreName()Ljava/lang/String;
.end method

.method public abstract getSuccessfullCallFlowTranslator()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getTimerValue(I)J
.end method

.method public abstract getTypeUsingMessageContext(Ljava/lang/String;)I
.end method

.method public abstract getVVMAutoDownloadSetting()Z
.end method

.method public abstract getVVMEnabled()Z
.end method

.method public abstract getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleNCCommonError(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)Z
.end method

.method public abstract isAirplaneModeChangeHandled()Z
.end method

.method public abstract isAppTriggerMessageSearch()Z
.end method

.method public abstract isBulkCreationEnabled()Z
.end method

.method public abstract isBulkDeleteEnabled()Z
.end method

.method public abstract isBulkUpdateEnabled()Z
.end method

.method public abstract isCaptivePortalCheckSupported()Z
.end method

.method public abstract isDeviceConfigUsed()Z
.end method

.method public abstract isEnableATTHeader()Z
.end method

.method public abstract isEnableFolderIdInSearch()Z
.end method

.method public abstract isEnableTMOHeader()Z
.end method

.method public abstract isEncrypted()Z
.end method

.method public abstract isErrorCodeSupported(ILcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
.end method

.method public abstract isGbaSupported()Z
.end method

.method public abstract isGoForwardSyncSupported()Z
.end method

.method public abstract isMultiLineSupported()Z
.end method

.method public abstract isNeedCheckBlockedNumberBeforeCopyRcsDb()Z
.end method

.method public abstract isNmsEventHasMessageDetail()Z
.end method

.method public abstract isNotifyAppOnUpdateCloudFail()Z
.end method

.method public abstract isPollingAllowed()Z
.end method

.method public abstract isPostMethodForBulkDelete()Z
.end method

.method public abstract isProvisionRequired()Z
.end method

.method public abstract isRetryEnabled()Z
.end method

.method public abstract isRetryRequired(I)Z
.end method

.method public abstract isStoreImdnEnabled()Z
.end method

.method public abstract isSupportExpiredRule()Z
.end method

.method public abstract isTokenRequestedFromProvision()Z
.end method

.method public abstract isTrIdCorrelationId()Z
.end method

.method public abstract isUIButtonUsed()Z
.end method

.method public abstract isValidOMARequestUrl()Z
.end method

.method public abstract needToHandleSimSwap()Z
.end method

.method public abstract onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
.end method

.method public abstract onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
.end method

.method public abstract requiresInterworkingCrossSearch()Z
.end method

.method public abstract requiresMsgUploadInInitSync()Z
.end method

.method public abstract resetVVMPendingRequestCount()V
.end method

.method public abstract setDeviceConfigUsed(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setProtocol(Ljava/lang/String;)V
.end method

.method public abstract setVVMAutoDownloadSetting(Z)V
.end method

.method public abstract setVVMPendingRequestCounts(Z)V
.end method

.method public abstract shouldCareAfterPreProcess(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Object;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;I)Z
.end method

.method public abstract shouldCareGroupChatAttribute()Z
.end method

.method public abstract shouldClearCursorUponInitSyncDone()Z
.end method

.method public abstract shouldCorrectShortCode()Z
.end method

.method public abstract shouldEnableNetAPIPutFlag(Ljava/lang/String;)Z
.end method

.method public abstract shouldEnableNetAPIWorking(ZZZZZ)Z
.end method

.method public abstract shouldPersistImsRegNum()Z
.end method

.method public abstract shouldSkipCmasSMS(Ljava/lang/String;)Z
.end method

.method public abstract shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z
.end method

.method public abstract shouldStopInitSyncUponLowMemory()Z
.end method

.method public abstract shouldStopSendingAPIwhenNetworklost()Z
.end method

.method public abstract updateHTTPHeader()V
.end method
