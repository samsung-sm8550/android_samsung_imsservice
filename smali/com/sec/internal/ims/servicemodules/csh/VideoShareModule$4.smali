.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;
.super Ljava/lang/Object;
.source "VideoShareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$remoteUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$sessionId:I

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;IILjava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$sessionId:I

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$source:I

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$filePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 542
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$sessionId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$fgetmInComingTerminateId(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 543
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InComing Video Share is already cancelled by stack"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$fputmVshInComingEntered(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Z)V

    .line 545
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$fputmInComingTerminateId(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;I)V

    return-void

    .line 550
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$source:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 551
    const-string v0, "com.sec.rcs.videosharing.LIVE_VIDEO_CONTENTPATH"

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$filePath:Ljava/lang/String;

    .line 556
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$sessionId:I

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->val$remoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v4, v1, v5, v6, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newIncommingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;ILcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 559
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "created incoming session"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->incomingSessionDone()V

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$fputmVshInComingEntered(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Z)V

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {p0, v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$fputmInComingTerminateId(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;I)V

    return-void
.end method
