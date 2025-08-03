.class public interface abstract Lcom/sec/internal/ims/cmstore/MessageStoreClient;
.super Ljava/lang/Object;
.source "MessageStoreClient.java"


# virtual methods
.method public abstract getBinder()Landroid/os/Binder;
.end method

.method public abstract getClientID()I
.end method

.method public abstract getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;
.end method

.method public abstract getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCurrentIMSI()Ljava/lang/String;
.end method

.method public abstract getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;
.end method

.method public abstract getMcsFcmPushNotificationListener()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMcsProvisioningListener()Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ICentralMsgStoreServiceListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;
.end method

.method public abstract getMultilineStatusValues()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNetAPIWorkingStatusController()Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.end method

.method public abstract getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
.end method

.method public abstract getProvisionStatus()Z
.end method

.method public abstract getProvisionWorkFlow()Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
.end method

.method public abstract getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;
.end method

.method public abstract getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;
.end method

.method public abstract getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;
.end method

.method public abstract isRcsRegistered()Z
.end method

.method public abstract notifyAppNetworkOperationResult(Z)V
.end method

.method public abstract onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V
.end method

.method public abstract setBinSyncSettingStatus(Z)V
.end method

.method public abstract setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V
.end method

.method public abstract setProvisionStatus(Z)V
.end method

.method public abstract unregisterCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;)V
.end method

.method public abstract updateDelay(IJ)Z
.end method

.method public abstract updateEvent(I)V
.end method
