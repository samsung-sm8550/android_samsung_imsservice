.class Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;
.super Ljava/lang/Object;
.source "EucStoreAndForward.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;->-$$Nest$fgetstoredResponses(Lcom/sec/internal/ims/servicemodules/euc/snf/EucStoreAndForward;)Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForwardResponseData;->getResponseToWorkflowHandle()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
