.class public Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;
.super Ljava/lang/Object;
.source "McsOMAApiResponseParam.java"


# instance fields
.field public LargefileResponse:Lcom/sec/internal/omanetapi/common/data/LargeFileResponse;

.field public fileResponse:Lcom/sec/internal/omanetapi/common/data/FileUploadResponse;

.field public largePollingNotification:Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;

.field public mdn:Ljava/lang/String;

.field public ncListComplete:Z

.field public nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

.field public notificationChannel:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;

.field public notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;

.field public notificationChannelList:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelList;

.field public requestError:Lcom/sec/internal/omanetapi/common/data/RequestError;

.field public syncBlockfilter:Lcom/sec/internal/omanetapi/nc/data/SyncBlockfilter;

.field public syncConfig:Lcom/sec/internal/omanetapi/nc/data/SyncConfig;

.field public syncContact:Lcom/sec/internal/omanetapi/nc/data/SyncContact;

.field public syncMessage:Lcom/sec/internal/omanetapi/nc/data/SyncMessage;

.field public syncStatus:Lcom/sec/internal/omanetapi/nc/data/SyncStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McsOMAApiResponseParam { notificationChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannel:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationChannelList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannelList:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notificationChannelLifetime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->notificationChannelLifetime:Lcom/sec/internal/omanetapi/nc/data/McsNotificationChannelLifetime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->requestError:Lcom/sec/internal/omanetapi/common/data/RequestError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nmsEventList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", largePollingNotification = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->largePollingNotification:Lcom/sec/internal/omanetapi/nc/data/McsLargePollingNotification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ncListComplete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->ncListComplete:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", syncStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncStatus:Lcom/sec/internal/omanetapi/nc/data/SyncStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncContact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncContact:Lcom/sec/internal/omanetapi/nc/data/SyncContact;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncConfig:Lcom/sec/internal/omanetapi/nc/data/SyncConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncMessage:Lcom/sec/internal/omanetapi/nc/data/SyncMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncBlockfilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/omanetapi/common/data/McsOMAApiResponseParam;->syncBlockfilter:Lcom/sec/internal/omanetapi/nc/data/SyncBlockfilter;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
