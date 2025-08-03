.class public Lcom/sec/internal/ims/aec/AECModule;
.super Landroid/os/Handler;
.source "AECModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/aec/IAECModule;


# static fields
.field private static final PROPERTY_ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mAECResult:Lcom/sec/internal/ims/aec/AECResult;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

.field private final mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;


# direct methods
.method public static synthetic $r8$lambda$sN2qoRhVC6Di0uhkzr_9Tqo8Olg(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/aec/AECModule;->lambda$isEntitlementDisabled$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 40
    const-class p1, Lcom/sec/internal/ims/aec/AECModule;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    .line 54
    new-instance p1, Lcom/sec/internal/ims/aec/AECResult;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/aec/AECResult;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    .line 55
    new-instance p1, Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getInstance()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    const/16 p1, 0x8

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private createWorkflow(I)V
    .locals 9

    .line 202
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v5

    .line 205
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v7

    move v4, p1

    move-object v8, p0

    .line 204
    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->createWorkflow(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 206
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private getEntitlementServer(I)Ljava/lang/String;
    .locals 1

    .line 212
    const-string/jumbo p0, "support_configserver"

    const-string v0, ""

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEntitlementDisabled(I)Z
    .locals 5

    .line 265
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 266
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_2

    .line 267
    const-string/jumbo p1, "ro.product.first_api_level"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "SM-S711"

    const-string v3, "SM-A256"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/aec/AECModule$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sec/internal/ims/aec/AECModule$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 276
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firstSdkVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isDisabledModel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x22

    if-ge p1, p0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method private isSimAbsent(I)Z
    .locals 0

    .line 197
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p0, :cond_1

    .line 198
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

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

.method private static synthetic lambda$isEntitlementDisabled$0(Ljava/lang/String;)Z
    .locals 1

    .line 275
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onChangeConnectivity()V
    .locals 2

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 158
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->changeConnectivity()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onClearHttpResponse()V
    .locals 8

    .line 216
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "aec_result_%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 221
    const-string/jumbo v4, "root/response"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x190

    if-eq v6, v7, :cond_0

    const/16 v7, 0x193

    if-eq v6, v7, :cond_0

    const/16 v7, 0x1f4

    if-ne v6, v7, :cond_1

    .line 225
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 226
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 227
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    iget-object v3, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClearHttpResponse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onCompletedEntitlement(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onCompletedEntitlement: There is no message"

    invoke-static {p0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onCompletedEntitlement: From msg, couldn\'t get workflow"

    invoke-static {p0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoLte()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoLTE(Landroid/os/Message;)V

    .line 135
    :cond_2
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoWiFi()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementInitFromApp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isReadyToNotifyApp()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 138
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    .line 145
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    return-void
.end method

.method private onReceivedSmsNotification(Landroid/os/Message;)V
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 168
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->receivedSmsNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onSimReady(I)V
    .locals 2

    .line 173
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isSimAbsent(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementRequired(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimReady"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->createWorkflow(I)V

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->registerDefaultNetworkCallback()V

    :cond_1
    return-void
.end method

.method private onSimRemoved(I)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSimRemoved"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->unregisterNetworkCallback()V

    :cond_0
    return-void
.end method

.method private onStartEntitlement(Landroid/os/Message;)V
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 115
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onStopEntitlement(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 369
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 370
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    if-eqz v1, :cond_0

    .line 372
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->dump()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAkaToken(I)Ljava/lang/String;
    .locals 6

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 347
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getAkaToken()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isEntitlementOngoing()Z

    move-result v2

    const-string v3, "InProgress"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 351
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    :goto_0
    move-object v1, v3

    goto :goto_2

    .line 352
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isSharedAkaToken()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 360
    :cond_1
    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    goto :goto_2

    .line 354
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearAkaToken()V

    .line 355
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 356
    invoke-interface {v0, v5}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setValidEntitlement(Z)V

    const/4 v1, 0x0

    .line 357
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {p0, p1, v4}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    goto :goto_0

    .line 346
    :cond_3
    const-string v1, "NotProcess"

    :goto_2
    return-object v1
.end method

.method public getEntitlementForSMSoIp(I)Z
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 307
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForSMSoIp()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEntitlementForVoLte(I)Z
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 287
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoLte()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getEntitlementForVoWiFi(I)Z
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 297
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoWiFi()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSMSoIpEntitlementStatus(I)Z
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 317
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getSMSoIpEntitlementStatus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVoLteEntitlementStatus(IIZ)Z
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 327
    invoke-interface {p0, p2, p3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoLteEntitlementStatus(IZ)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getVoWiFiEntitlementStatus(I)Z
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 337
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoWiFiEntitlementStatus()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onClearHttpResponse()V

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onReceivedSmsNotification(Landroid/os/Message;)V

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStopEntitlement(Landroid/os/Message;)V

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onCompletedEntitlement(Landroid/os/Message;)V

    goto :goto_0

    .line 88
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStartEntitlement(Landroid/os/Message;)V

    goto :goto_0

    .line 84
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onChangeConnectivity()V

    goto :goto_0

    .line 79
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 80
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onSimRemoved(I)V

    goto :goto_0

    .line 74
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 75
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onSimReady(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSequentially()V
    .locals 4

    .line 62
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v2, 0x2

    .line 64
    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isEntitlementRequired(I)Z
    .locals 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ril.ICC_TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unsupported icc type"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    const-string v2, "ims"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 242
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "disabled ImsSwitch"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 246
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    const-string v3, "Bouygues_FR"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string v3, "BOG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "E/S: All models only on BOG SW, but not others like XEF"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return v1

    .line 255
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no needed to support Entitlement Server from new U OS"

    invoke-static {p0, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 260
    :cond_4
    const-string/jumbo v0, "ts43"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "nsds_eur"

    .line 261
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 1

    .line 379
    iget-boolean p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz p2, :cond_0

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public triggerAutoConfigForApp(I)V
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 388
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->triggerAutoConfigForApp()V

    :cond_0
    return-void
.end method
