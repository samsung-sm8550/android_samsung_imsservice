.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;
.super Ljava/lang/Object;
.source "ParamOMAresponseforBufDB.java"


# instance fields
.field private mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

.field private mAllPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field private mBufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field private mBulkResponseList:Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

.field private mDataString:[B

.field private mFilePath:Ljava/lang/String;

.field private mIsFullSync:Z

.field private mLine:Ljava/lang/String;

.field private mMcsNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

.field private mNotificaitonList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

.field private mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

.field private mObject:Lcom/sec/internal/omanetapi/nms/data/Object;

.field private mObjectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

.field private mPayLoadUrl:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

.field private mSearchCursor:Ljava/lang/String;

.field private mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

.field private mVvmFolders:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;

.field private mVvmServiceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;


# direct methods
.method static bridge synthetic -$$Nest$fputmActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAllPayloads(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mAllPayloads:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBufferDbParam(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBufferDbParamList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBulkResponseList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBulkResponseList:Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDataString(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mDataString:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFilePath(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFullSync(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mIsFullSync:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLine(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mLine:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMcsNmsEventList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/NmsEventList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mMcsNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotificaitonList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;[Lcom/sec/internal/omanetapi/nc/data/NotificationList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mNotificaitonList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOMASyncEventType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmObject(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmObjectList(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/ObjectList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObjectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPayLoadUrl(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mPayLoadUrl:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReasonPhrase(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReasonPhrase:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReference(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/omanetapi/nms/data/Reference;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSearchCursor(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mSearchCursor:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVvmFolders(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mVvmFolders:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVvmServiceProfile(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mVvmServiceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionType()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    return-object p0
.end method

.method public getAllPayloads()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/mail/BodyPart;",
            ">;"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mAllPayloads:Ljava/util/List;

    return-object p0
.end method

.method public getBufferDBChangeParam()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    return-object p0
.end method

.method public getBufferDBChangeParamList()Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    return-object p0
.end method

.method public getBulkResponseList()Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBulkResponseList:Lcom/sec/internal/omanetapi/nms/data/BulkResponseList;

    return-object p0
.end method

.method public getData()[B
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mDataString:[B

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getIsFullSync()Z
    .locals 0

    .line 318
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mIsFullSync:Z

    return p0
.end method

.method public getLine()Ljava/lang/String;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mLine:Ljava/lang/String;

    return-object p0
.end method

.method public getMcsNmsEventList()Lcom/sec/internal/omanetapi/nms/data/NmsEventList;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mMcsNmsEventList:Lcom/sec/internal/omanetapi/nms/data/NmsEventList;

    return-object p0
.end method

.method public getNotificationList()[Lcom/sec/internal/omanetapi/nc/data/NotificationList;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mNotificaitonList:[Lcom/sec/internal/omanetapi/nc/data/NotificationList;

    return-object p0
.end method

.method public getOMASyncEventType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    return-object p0
.end method

.method public getObject()Lcom/sec/internal/omanetapi/nms/data/Object;
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObject:Lcom/sec/internal/omanetapi/nms/data/Object;

    return-object p0
.end method

.method public getObjectList()Lcom/sec/internal/omanetapi/nms/data/ObjectList;
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mObjectList:Lcom/sec/internal/omanetapi/nms/data/ObjectList;

    return-object p0
.end method

.method public getPayloadUrl()Ljava/lang/String;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mPayLoadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReasonPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public getReference()Lcom/sec/internal/omanetapi/nms/data/Reference;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

    return-object p0
.end method

.method public getSearchCursor()Ljava/lang/String;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mSearchCursor:Ljava/lang/String;

    return-object p0
.end method

.method public getSyncMsgType()Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    return-object p0
.end method

.method public getVvmFolders()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mVvmFolders:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmFolders;

    return-object p0
.end method

.method public getVvmServiceProfile()Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mVvmServiceProfile:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/VvmServiceProfile;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mActionType:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mLine:Ljava/lang/String;

    .line 332
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mReference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mReference:Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mBufferDbParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mBufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mPayLoadUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mPayLoadUrl:Ljava/lang/String;

    .line 335
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSearchCursor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mSearchCursor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mOMASyncEventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mOMASyncEventType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIsFullSync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->mIsFullSync:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
