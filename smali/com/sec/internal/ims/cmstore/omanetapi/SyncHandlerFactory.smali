.class public Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;
.super Ljava/lang/Object;
.source "SyncHandlerFactory.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataChangeHandlerPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/helper/SyncParam;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceDataUpdatePool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/helper/SyncParam;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field private final mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

.field private final mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mLooper:Landroid/os/Looper;

.field private final mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private mSyncHandlerPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/cmstore/helper/SyncParam;",
            "Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    .line 52
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    .line 54
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    .line 55
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 56
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 57
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    .line 60
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 61
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->registerLineListener()V

    return-void
.end method

.method private registerLineListener()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    new-instance v1, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->registerLineStatusOberser(Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;)V

    return-void
.end method


# virtual methods
.method public clearAllDataChangeHandlerInstances()V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearAllDeviceDataUpdateHandlerInstances()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearAllSyncHandlerInstances()V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getAllDataChangeHandlerInstances()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    .line 169
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 170
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllDataChangeHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 184
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    .line 185
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 186
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    .line 228
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 229
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllDeviceDataUpdateHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    .line 245
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 246
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getAllSyncHandlerInstances()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    .line 113
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 114
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllSyncHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    .line 129
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 130
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v2, v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    return-object p0

    .line 143
    :cond_0
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 145
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 158
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    .line 153
    :cond_1
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/VvmDataChangeHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/VvmDataChangeHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    .line 147
    :cond_2
    new-instance v8, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/MessageDataChangeHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 149
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDataChangeHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8
.end method

.method public getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;
    .locals 8

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceDataUpdateHandlerInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    return-object p0

    .line 201
    :cond_0
    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 203
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 215
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {p0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {p0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_2
    new-instance v7, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/OMAObjectUpdateScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mDeviceDataUpdatePool:Ljava/util/Map;

    invoke-interface {p0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_0
    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->start()V

    return-object v7
.end method

.method public getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    return-object p0
.end method

.method public getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;
    .locals 10

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    return-object p0

    .line 83
    :cond_0
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mLine:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;->mType:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 85
    sget-object v1, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$2;->$SwitchMap$com$sec$internal$constants$ims$cmstore$omanetapi$SyncMsgType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 102
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v9

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 97
    :cond_1
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, v9

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmSyncHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9

    .line 92
    :cond_2
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmGreetingSyncHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/VvmGreetingSyncHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 94
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 87
    :cond_3
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mINetAPIEventListener:Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    const/4 v8, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/MessageSyncHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Z)V

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->mSyncHandlerPool:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
