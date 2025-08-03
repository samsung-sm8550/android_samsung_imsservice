.class Lcom/sec/internal/ims/servicemodules/im/ImCache$2;
.super Landroid/util/LruCache;
.source "ImCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3

    .line 114
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache miss. attempt to load from db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$fgetmPersister(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_0

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Couldn\'t load from db."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$mcreateSession(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 111
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->create(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 111
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->entryRemoved(ZLjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$fgetmActiveSessions(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Landroid/util/LruCache;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ImSessions#entryRemoved: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->closeSession()V

    :cond_0
    return-void
.end method
