.class Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;
.super Ljava/lang/Object;
.source "ImageShareModule.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sec/internal/ims/servicemodules/csh/ImageShare;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

.field final synthetic val$contactUri:Lcom/sec/ims/util/ImsUri;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createShare"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$contactUri:Lcom/sec/ims/util/ImsUri;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->val$filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->newOutgoingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->startQutgoingSession()V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule$1;->call()Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    move-result-object p0

    return-object p0
.end method
