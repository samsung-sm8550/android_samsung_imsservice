.class Lcom/sec/internal/ims/imsservice/CallStateTracker$2;
.super Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;
.source "CallStateTracker.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/CallStateTracker;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$2;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCallStateChanged(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;I)V"
        }
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker$2;->this$0:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->notifyCallStateChanged(Ljava/util/List;I)V

    return-void
.end method
