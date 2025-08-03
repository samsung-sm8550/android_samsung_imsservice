.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
.super Ljava/lang/Object;
.source "ParamOMAresponseforBufDB.java"


# instance fields
.field private mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;-><init>(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    return-object p0
.end method

.method public setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)V

    return-object p0
.end method

.method public setAllPayloads(Ljava/util/List;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;)",
            "Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/util/List;)V

    return-object p0
.end method

.method public setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmBufferDbParam(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    return-object p0
.end method

.method public setBufferDBChangeParam(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmBufferDbParamList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-object p0
.end method

.method public setBulkResponseList(Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmBulkResponseList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)V

    return-object p0
.end method

.method public setByte([B)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmDataString(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[B)V

    return-object p0
.end method

.method public setCursor(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmSearchCursor(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmFilePath(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmIsFullSync(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V

    return-object p0
.end method

.method public setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmLine(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMcsNmsEventList(Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmMcsNmsEventList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)V

    return-object p0
.end method

.method public setNotificationList([Lcom/sec/internal/omanetapi/nc/data/NotificationList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmNotificaitonList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)V

    return-object p0
.end method

.method public setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmOMASyncEventType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V

    return-object p0
.end method

.method public setObject(Lcom/sec/internal/omanetapi/nms/data/Object;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Object;)V

    return-object p0
.end method

.method public setObjectList(Lcom/sec/internal/omanetapi/nms/data/ObjectList;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmObjectList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/ObjectList;)V

    return-object p0
.end method

.method public setPayloadUrl(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmPayLoadUrl(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReasonPhrase(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmReasonPhrase(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V

    return-object p0
.end method

.method public setReference(Lcom/sec/internal/omanetapi/nms/data/Reference;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmReference(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Reference;)V

    return-object p0
.end method

.method public setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    return-object p0
.end method

.method public setVvmFolders(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmVvmFolders(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)V

    return-object p0
.end method

.method public setVvmServiceProfile(Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->mInstance:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->-$$Nest$fputmVvmServiceProfile(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)V

    return-object p0
.end method
