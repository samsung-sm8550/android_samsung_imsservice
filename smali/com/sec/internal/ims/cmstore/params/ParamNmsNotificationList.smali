.class public Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;
.super Ljava/lang/Object;
.source "ParamNmsNotificationList.java"


# instance fields
.field public final mDataContractType:I

.field public final mDataType:Ljava/lang/String;

.field public final mLine:Ljava/lang/String;

.field public final mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataType:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    .line 17
    iget-object p1, p4, Lcom/sec/internal/omanetapi/nms/data/GCMPushNotification;->nmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    .line 18
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mLine:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParamNmsNotificationList [mDataType= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDataContractType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mDataContractType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamNmsNotificationList;->mLine:Ljava/lang/String;

    .line 24
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " mOriginalMessage = ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
