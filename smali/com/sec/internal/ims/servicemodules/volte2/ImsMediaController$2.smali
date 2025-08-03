.class Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;
.super Ljava/lang/Object;
.source "ImsMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1211
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1214
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController$2;->val$sessionId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsMediaController;->startCameraForActiveExcept(I)V

    return-void
.end method
