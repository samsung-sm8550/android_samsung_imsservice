.class Lcom/sec/internal/ims/servicemodules/im/ImCache$1;
.super Landroid/util/LruCache;
.source "ImCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/Integer;",
        "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 89
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mActiveSessions#entryRemoved: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;->entryRemoved(ZLjava/lang/Integer;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method
