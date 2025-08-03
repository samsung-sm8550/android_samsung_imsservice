.class Lcom/sec/internal/ims/servicemodules/im/ImCache$3;
.super Landroid/util/LruCache;
.source "ImCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected create(Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3

    .line 137
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache miss. attempt to load from db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$fgetmPersister(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->imdnId:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->direction:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Couldn\'t load from db."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$mloadExtras(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->create(Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method protected entryRemoved(ZLcom/sec/internal/ims/servicemodules/im/data/MessageKey;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 150
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CachingMessage#entryRemoved: id= "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->-$$Nest$munregisterObserver(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    check-cast p3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;->entryRemoved(ZLcom/sec/internal/ims/servicemodules/im/data/MessageKey;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method
