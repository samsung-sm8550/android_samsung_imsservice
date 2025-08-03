.class Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;
.super Ljava/lang/Object;
.source "ImageShareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

.field final synthetic val$ft:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

.field final synthetic val$remoteUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$sessionId:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$ft:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$sessionId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$2;->val$ft:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newIncommingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 377
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "created incoming session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->incomingSessionDone()V

    :cond_0
    return-void
.end method
