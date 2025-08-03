.class public Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;
.super Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.source "WorkflowO2U.java"


# static fields
.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final MAX_RETRY_COUNT:I = 0x4

.field private static final MDSP30:Ljava/lang/String; = "3.0"

.field private static final RESPONSE_ENTITLEMENT_CHECK:I = 0x65

.field private static final SERVICE_ENTITLEMENT_STATUS:Ljava/lang/String; = "serviceEntitlementStatus"

.field private static final SERVICE_VOLTE:Ljava/lang/String; = "VoLTE"

.field private static final SERVICE_VOWIFI:Ljava/lang/String; = "VoWiFi"


# instance fields
.field private mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

.field private mBulkEntitlementCheck:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

.field private mRetryCount:I

.field private mReuseLastEntitlementResult:Z


# direct methods
.method public static synthetic $r8$lambda$JRwtYAxiIn-8Pk607Fjbb2u69Z0(Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->lambda$sendBroadcastCompletedEntitlement$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    .line 52
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    return-void
.end method

.method private checkRetry(I)Z
    .locals 4

    .line 274
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "checkRetry: exceeded max try count"

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    iput-boolean v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    .line 277
    iput v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    return v2

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e9

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x1e6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x198

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 290
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRetry: HTTP error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v3

    .line 282
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRetry: NSDS error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v3
.end method

.method private emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private handleEntitlementResponse(Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;)V
    .locals 3

    .line 240
    iget v0, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    const/16 v1, 0x418

    if-eq v1, v0, :cond_6

    iget v2, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    if-ne v1, v2, :cond_0

    goto/16 :goto_2

    .line 243
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->checkRetry(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 244
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    const/4 v0, -0x1

    .line 245
    iget p1, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    const/16 v1, 0x3e9

    if-ne v0, p1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "need to try again entitlement check after 5 seconds"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "need to try again entitlement check after 30 seconds"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 253
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 254
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mReuseLastEntitlementResult:Z

    const p1, 0x15180

    .line 255
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->startPollIntervalTimer(I)V

    .line 256
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    const-string v1, "all tries failed, retry entitlement check after 1 day"

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-boolean v2, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-boolean v2, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoWiFiEntitlementStatus(Z)V

    .line 260
    iget v0, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->pollInterval:I

    mul-int/lit16 v0, v0, 0xe10

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->startPollIntervalTimer(I)V

    .line 261
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->sendBroadcastCompletedEntitlement()V

    .line 262
    iget-boolean v0, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    if-nez v0, :cond_5

    iget-boolean p1, p1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    if-eqz p1, :cond_4

    goto :goto_0

    .line 266
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->sendDeRegister(Landroid/content/Context;I)V

    goto :goto_1

    .line 263
    :cond_5
    :goto_0
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v1}, Lcom/sec/internal/ims/aec/AECResult;->handleUtSwitch(IZ)V

    .line 264
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->sendTryRegister(Landroid/content/Context;I)V

    :goto_1
    const/16 p1, 0x3f1

    .line 269
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 242
    :cond_6
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->handleServiceNotEntitled(I)V

    :goto_3
    return-void
.end method

.method private handleServiceNotEntitled(I)V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleServiceNotEntitled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    .line 231
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoWiFiEntitlementStatus(Z)V

    .line 232
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopPollIntervalTimer()V

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 234
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->handleUtSwitch(IZ)V

    .line 235
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/aec/AECResult;->sendDeRegister(Landroid/content/Context;I)V

    .line 236
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->sendBroadcastCompletedEntitlement()V

    return-void
.end method

.method private synthetic lambda$sendBroadcastCompletedEntitlement$0(Ljava/lang/String;)V
    .locals 3

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.aec.action.COMPLETED_ENTITLEMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v1, "phoneId"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private onHandleEntitlementResponse(Landroid/os/Bundle;)V
    .locals 1

    .line 187
    const-string/jumbo v0, "serviceEntitlementStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 188
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->setEntitlementStatus(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;

    move-result-object p1

    .line 189
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->handleEntitlementResponse(Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;)V

    const/4 p1, 0x0

    .line 190
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    return-void
.end method

.method private onInitWorkFlow(Ljava/lang/String;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "identical sim, recover to the stored configuration"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoWiFiEntitlementStatus(Z)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForSMSoIp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setSMSoIPEntitlementStatus(Z)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sim swapped, revert to the default configuration"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setImsi(Ljava/lang/String;)V

    return-void
.end method

.method private onNetworkCallbackAvailable()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getDns()Lokhttp3/Dns;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setNetwork(Lokhttp3/Dns;Ljavax/net/SocketFactory;)V

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->requestEntitlement(I)V

    return-void
.end method

.method private onUnregisterNetworkCallback()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setNetwork(Lokhttp3/Dns;Ljavax/net/SocketFactory;)V

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    return-void
.end method

.method private sendBroadcastCompletedEntitlement()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.unifiedwfc"

    const-string v2, "com.sec.epdg"

    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;)V

    .line 304
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setEntitlementStatus(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;
    .locals 8

    .line 198
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;

    invoke-direct {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;-><init>()V

    if-eqz p1, :cond_5

    .line 201
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/NSDSResponse;->responseCode:I

    iput v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode:I

    .line 202
    iput v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    .line 203
    iput v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoWiFi:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4

    .line 206
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    .line 208
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 209
    iget-object v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    const-string v5, "VoLTE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 210
    iget v3, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput v3, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoLTE:I

    if-ne v3, v2, :cond_1

    move v5, v6

    .line 211
    :cond_1
    iput-boolean v5, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoLTE:Z

    goto :goto_0

    .line 212
    :cond_2
    const-string v4, "VoWiFi"

    iget-object v7, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    iget v3, v3, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    iput v3, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->responseCode_VoWiFi:I

    if-ne v3, v2, :cond_3

    move v5, v6

    .line 214
    :cond_3
    iput-boolean v5, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->entitlementStatus_VoWiFi:Z

    goto :goto_0

    .line 219
    :cond_4
    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->pollInterval:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 220
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->pollInterval:I

    .line 224
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEntitlementStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U$NSDSResponse;->printLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-object v0
.end method

.method private startPollIntervalTimer(I)V
    .locals 3

    const/4 v0, 0x1

    .line 297
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 298
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startPollIntervalTimer(I)V

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entitlement check will be performed after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sec"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clearResource()V
    .locals 1

    const/16 v0, 0x3f1

    .line 72
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopPollIntervalTimer()V

    return-void
.end method

.method public getVoWiFiEntitlementStatus()Z
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 p1, 0x3e9

    if-eq v0, p1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->onUnregisterNetworkCallback()V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->onNetworkCallbackAvailable()V

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->requestNetwork()V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->requestEntitlement(I)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->onInitWorkFlow(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 101
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->requestEntitlement(I)V

    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->onHandleEntitlementResponse(Landroid/os/Bundle;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 60
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 61
    new-instance v0, Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p3}, Lcom/sec/internal/ims/aec/persist/AECStorage;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 62
    new-instance p3, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {p3, v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 63
    new-instance p1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0, p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 64
    new-instance p1, Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0, p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    .line 65
    new-instance p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;-><init>(Landroid/os/Looper;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 66
    new-instance p1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const-string v7, "3.0"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBulkEntitlementCheck:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    const/16 p1, 0x3e8

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public performEntitlement(Ljava/lang/Object;)V
    .locals 4

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result p1

    const-wide/16 v0, 0x7d0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "performEntitlement: data unavailable"

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getPsDataOffExempt()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "performEntitlement: 3GPP PS Data Off Exempt Services"

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x3ef

    .line 128
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e9

    .line 131
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected requestEntitlement(I)V
    .locals 8

    .line 138
    iget-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEntitlement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "VoLTE"

    const-string v2, "VoWiFi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 142
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 143
    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementDomain()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 144
    invoke-virtual {v5}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPort()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v6}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v7}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getDomainFromImpi()Z

    move-result v7

    .line 143
    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getUrl(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setRequestUrl(Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowO2U;->mBulkEntitlementCheck:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method
