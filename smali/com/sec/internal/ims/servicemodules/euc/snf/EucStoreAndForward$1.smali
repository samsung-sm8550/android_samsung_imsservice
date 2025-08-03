.class Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;
.super Ljava/lang/Object;
.source "EucStoreAndForward.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

.field final synthetic val$callback:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

.field final synthetic val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

.field final synthetic val$pin:Ljava/lang/String;

.field final synthetic val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

.field final synthetic val$responseToWorkflowHandle:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$pin:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$responseToWorkflowHandle:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;

    return-object p0
.end method

.method public getEUCData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$eucData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    return-object p0
.end method

.method public getPIN()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$pin:Ljava/lang/String;

    return-object p0
.end method

.method public getResponse()Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$response:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    return-object p0
.end method

.method public getResponseToWorkflowHandle()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$1;->val$responseToWorkflowHandle:Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    return-object p0
.end method
