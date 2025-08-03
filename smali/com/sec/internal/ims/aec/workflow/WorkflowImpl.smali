.class public abstract Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.super Landroid/os/Handler;
.source "WorkflowImpl.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;


# static fields
.field protected static final TIMEOUT_PUSH_MSG:I = 0x7530

.field protected static final TIMEOUT_WAKELOCK:I = 0x15f90


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

.field protected mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

.field protected final mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mFcmEventListener:Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

.field protected mHasFcmEvent:Z

.field protected mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

.field protected mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

.field protected mIsEntitlementOngoing:Z

.field protected mIsReadyToNotifyApp:Z

.field protected mIsSharedAkaToken:Z

.field protected mIsValidEntitlement:Z

.field protected final mModuleHandler:Landroid/os/Handler;

.field protected mNotifJar:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

.field protected mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

.field protected mPhoneId:I

.field protected mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

.field protected mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

.field protected mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 34
    iput p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    .line 56
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 57
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    .line 58
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    .line 59
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    .line 60
    iput-boolean p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHasFcmEvent:Z

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mFcmEventListener:Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    .line 68
    sget-object p2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->NOT_READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    iput-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    .line 74
    iput-object p4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private handlePushNotification(Ljava/lang/String;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePushNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->getEntitlementInitFromApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 278
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 279
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setPushMsgStatus(Z)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVersion(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    return-void
.end method

.method private onCompletedEapChallengeResp(Landroid/os/Message;)V
    .locals 3

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCompletedEapChallengeResp: no eap challenge response"

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompletedEapChallengeResp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallengeResp(Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 247
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private onCompletedWorkFlow()V
    .locals 5

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    const/16 v0, 0x3f1

    .line 208
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    const-string v1, "0"

    if-lez v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersionValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startVersionValidityTimer(I)V

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getTokenValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->startTokenValidityTimer(I)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_3

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-nez v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    .line 224
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStoredConfiguration()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCompletedWorkFlow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 228
    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v3

    const/4 v4, 0x5

    .line 227
    invoke-virtual {p0, v4, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notification jar is not empty, try entitlement"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->handlePushNotification(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private onHandlePushNotification(Ljava/lang/String;)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->clearAppId()V

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->isEntitlementOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->isSupportOnlyVoWiFibyUserAction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gtz v0, :cond_1

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p1, "onHandlePushNotification : Don\'t try entitlement"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    return-void

    .line 271
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->handlePushNotification(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private onInitWorkFlow(Ljava/lang/String;)V
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "identical sim, recover to the stored configuration"

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setDefaultValues(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoWiFiEntitlementStatus(Z)V

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForSMSoIp()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setSMSoIPEntitlementStatus(Z)V

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sim swapped, revert to the default configuration"

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setImsi(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 165
    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStoredConfiguration()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x5

    .line 164
    invoke-virtual {p0, v4, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 167
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHasFcmEvent:Z

    if-eqz v1, :cond_2

    .line 169
    new-instance p1, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, v0, p0}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;-><init>(ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mFcmEventListener:Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    .line 170
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mFcmEventListener:Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->registerFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V

    .line 171
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerFcmEventListener"

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, p0}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method private onReceivedFcmNotification(ILandroid/os/Bundle;)V
    .locals 3

    .line 289
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHasFcmEvent:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    if-ne v0, p1, :cond_2

    .line 290
    const-string p1, "from"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    const-string v0, "app"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string/jumbo v1, "timestamp"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 295
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifIgnoreTimestamp()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 296
    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->validate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string p2, "discard incorrect notification"

    iget p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x3f4

    .line 297
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {v1, p2, v0}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->calcWaitTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {v2, p2, v0}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->updateAppId(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 301
    iput p1, p2, Landroid/os/Message;->what:I

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/NotificationUtil;->getAppId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    int-to-long v0, v1

    .line 303
    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private onRefreshFcmToken(I)V
    .locals 2

    .line 312
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHasFcmEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    if-ne v0, p1, :cond_0

    .line 313
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRefreshFcmToken"

    invoke-static {p1, v1, v0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x3ee

    .line 314
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private onRequestFcmToken()V
    .locals 4

    .line 252
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->IN_PROGRESS:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    if-eq v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onRequestFcmToken"

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    const-string/jumbo v1, "phoneId"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifSenderId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "senderId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private onStartWorkFlow()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartWorkFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->requestEntitlement(I)V

    :cond_1
    return-void
.end method

.method private onStopWorkflow(Landroid/os/Message;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopWorkflow"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    const/16 v0, 0x3f1

    .line 191
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mModuleHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "notification jar is not empty, try entitlement"

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifJar:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->handlePushNotification(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onWaitEapAkaResp()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWaitEapAkaResp"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    return-void
.end method


# virtual methods
.method public changeConnectivity()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public clearAkaToken()V
    .locals 1

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setAkaToken(Ljava/lang/String;)V

    return-void
.end method

.method public clearResource()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mFcmEventListener:Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    if-eqz v0, :cond_0

    .line 428
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mFcmEventListener:Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->unregisterFcmEventListener(Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;)V

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterFcmEventListener"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mFcmEventListener:Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;

    .line 431
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->NOT_READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    :cond_0
    const/16 v0, 0x3f1

    .line 433
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopVersionValidityTimer()V

    .line 436
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->stopTokenValidityTimer()V

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;->unregisterReceiver()V

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PowerController;->release()V

    return-void
.end method

.method public dump()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getAkaToken()Ljava/lang/String;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAkaToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEntitlementForSMSoIp()Z
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForSMSoIp()Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoLte()Z
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoWiFi()Z
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result p0

    return p0
.end method

.method public getEntitlementInitFromApp()Z
    .locals 0

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementInitFromApp()Z

    move-result p0

    return p0
.end method

.method public getSMSoIpEntitlementStatus()Z
    .locals 1

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSMSoIPEntitlementStatus()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getVoLteEntitlementStatus(IZ)Z
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getVoWiFiEntitlementStatus()Z
    .locals 1

    .line 482
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 146
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onRefreshFcmToken(I)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onReceivedFcmNotification(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 140
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onHandlePushNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    goto :goto_0

    .line 124
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :pswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->requestNetwork()V

    goto :goto_0

    .line 130
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onRequestFcmToken()V

    goto :goto_0

    .line 118
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onCompletedEapChallengeResp(Landroid/os/Message;)V

    goto :goto_0

    .line 115
    :pswitch_b
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onWaitEapAkaResp()V

    goto :goto_0

    .line 112
    :pswitch_c
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onCompletedWorkFlow()V

    goto :goto_0

    .line 109
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onStopWorkflow(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_e
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onStartWorkFlow()V

    goto :goto_0

    .line 103
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->onInitWorkFlow(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public initWorkflow(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 86
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 87
    new-instance v0, Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p3}, Lcom/sec/internal/ims/aec/persist/AECStorage;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 88
    new-instance p3, Lcom/sec/internal/ims/aec/util/CalcEapAka;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p3, v0, p2}, Lcom/sec/internal/ims/aec/util/CalcEapAka;-><init>(ILjava/lang/String;)V

    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    .line 89
    new-instance p3, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {p3, v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 90
    new-instance p1, Lcom/sec/internal/ims/aec/util/HttpClient;

    iget p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3}, Lcom/sec/internal/ims/aec/util/HttpClient;-><init>(I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    .line 91
    new-instance p1, Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    .line 92
    new-instance p1, Lcom/sec/internal/ims/aec/util/NotificationUtil;

    iget p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/sec/internal/ims/aec/util/NotificationUtil;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifUtil:Lcom/sec/internal/ims/aec/util/NotificationUtil;

    .line 93
    new-instance p1, Lcom/sec/internal/ims/aec/util/PowerController;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0}, Lcom/sec/internal/ims/aec/util/PowerController;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    .line 94
    new-instance p1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0, p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    .line 95
    new-instance p1, Lcom/sec/internal/ims/aec/util/ValidityTimer;

    iget-object p3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-direct {p1, p3, v0, p0}, Lcom/sec/internal/ims/aec/util/ValidityTimer;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mValidityTimer:Lcom/sec/internal/ims/aec/util/ValidityTimer;

    const/16 p1, 0x3e8

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isEntitlementOngoing()Z
    .locals 0

    .line 397
    iget-boolean p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsEntitlementOngoing:Z

    return p0
.end method

.method public isReadyToNotifyApp()Z
    .locals 0

    .line 387
    iget-boolean p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    return p0
.end method

.method public isSharedAkaToken()Z
    .locals 0

    .line 407
    iget-boolean p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    return p0
.end method

.method public performEntitlement(Ljava/lang/Object;)V
    .locals 4

    .line 352
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->isEntitlementOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_6

    const/16 v1, 0x193

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    const-wide/16 v1, 0x7d0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "performEntitlement: data unavailable"

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 367
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getPsDataOffExempt()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isDataAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 368
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "performEntitlement: 3GPP PS Data Off Exempt Services"

    iget v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v0, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x3ef

    .line 369
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setAppId(Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 376
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHasFcmEvent:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->NOT_READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    if-ne v0, v3, :cond_5

    const/16 v0, 0x3ee

    .line 378
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 381
    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    .line 360
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performEntitlement: stored response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 p1, 0x3ea

    .line 361
    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public receivedSmsNotification(Ljava/lang/String;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    if-gez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVersion(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 446
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    .line 447
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    return-void
.end method

.method abstract requestEntitlement(I)V
.end method

.method public setReadyToNotifyApp(Z)V
    .locals 0

    .line 392
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsReadyToNotifyApp:Z

    return-void
.end method

.method public setSharedAkaToken(Z)V
    .locals 0

    .line 412
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsSharedAkaToken:Z

    return-void
.end method

.method public setValidEntitlement(Z)V
    .locals 0

    .line 402
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    return-void
.end method

.method public triggerAutoConfigForApp()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "triggerAutoConfigForApp"

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 338
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setReadyToNotifyApp(Z)V

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    return-void
.end method

.method public updateFcmToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFcmToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 322
    sget-object p1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->NOT_READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    .line 323
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setNotifToken(Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_0
    sget-object p2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    iput-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mNotifState:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    .line 326
    iget-object p2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getNotifToken()Ljava/lang/String;

    move-result-object p2

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setNotifToken(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mIsValidEntitlement:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 329
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
