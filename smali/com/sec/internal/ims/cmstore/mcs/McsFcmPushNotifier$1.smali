.class Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier$1;
.super Ljava/lang/Object;
.source "McsFcmPushNotifier.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public largePollingPushNotification(Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;)V
    .locals 0

    .line 0
    return-void
.end method

.method public nmsEventListPushNotification(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncBlockfilterPushNotification(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;

    const-string/jumbo v0, "syncBlockfilter"

    const-string/jumbo v1, "syncType"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->notifyMcsFcmPushMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncConfigPushNotification(Ljava/lang/String;)V
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier$1;->this$0:Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;

    const-string/jumbo v0, "syncConfig"

    const-string v1, "configType"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->notifyMcsFcmPushMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncContactPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncMessagePushNotification(Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public syncStatusPushNotification(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
