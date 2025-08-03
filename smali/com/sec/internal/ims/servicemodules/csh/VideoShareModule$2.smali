.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;
.super Ljava/lang/Object;
.source "VideoShareModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sec/internal/ims/servicemodules/csh/VideoShare;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field final synthetic val$contactUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$videoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$videoPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 385
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createShare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$fgetmVshTranslation(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    const/4 p0, 0x0

    return-object p0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->val$videoPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newOutgoingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 394
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->startQutgoingSession()V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;->call()Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object p0

    return-object p0
.end method
