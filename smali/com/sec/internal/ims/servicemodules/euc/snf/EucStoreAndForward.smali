.class public Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;
.super Landroid/os/Handler;
.source "EucStoreAndForward.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;


# static fields
.field private static final EVENT_SEND_RESPONSE_RESPONSE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "EucStoreAndForward"


# instance fields
.field private mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

.field private mOwnIdentitiesInForwardState:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storedResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetstoredResponses(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;Landroid/os/Looper;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    .line 54
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    return-void
.end method

.method private createEUCStoreAndForwardResponseData(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;
    .locals 8

    .line 129
    new-instance v7, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)V

    return-object v7
.end method

.method private getResponseToWorkflowHandle()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    .locals 1

    .line 189
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)V

    return-object v0
.end method


# virtual methods
.method public forward(Ljava/lang/String;)V
    .locals 13

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state for ownIdentity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " set to FORWARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    .line 108
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getEUCData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v2

    .line 109
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    new-instance v12, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 111
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v6

    .line 113
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getPIN()Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    .line 115
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v9

    .line 116
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getResponse()Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    move-result-object v10

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/os/Message;)V

    .line 110
    invoke-interface {v3, v12}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 164
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 165
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    .line 173
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getEUCData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 180
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;->onStatus(Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;)V

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 184
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message, ignoring!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    .locals 16

    move-object/from16 v6, p0

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->getResponseToWorkflowHandle()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    move-result-object v7

    .line 63
    iget-object v8, v6, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->createEUCStoreAndForwardResponseData(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 68
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    .line 69
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    const/4 v11, 0x0

    move-object v8, v1

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/os/Message;)V

    .line 67
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    :cond_0
    return-object v7
.end method

.method public sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    .locals 16

    move-object/from16 v6, p0

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->getResponseToWorkflowHandle()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    move-result-object v7

    .line 83
    iget-object v8, v6, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->storedResponses:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->createEUCStoreAndForwardResponseData(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mEucService:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    .line 88
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    .line 89
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    .line 90
    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object v8, v1

    move-object/from16 v11, p3

    move-object/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Landroid/os/Message;)V

    .line 87
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucServiceInterface;->sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    :cond_0
    return-object v7
.end method

.method public store(Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->mOwnIdentitiesInForwardState:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state for ownIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " set to STORE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
