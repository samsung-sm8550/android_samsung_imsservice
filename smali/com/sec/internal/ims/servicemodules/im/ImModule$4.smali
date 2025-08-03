.class Lcom/sec/internal/ims/servicemodules/im/ImModule$4;
.super Landroid/database/ContentObserver;
.source "ImModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Landroid/os/Handler;)V
    .locals 0

    .line 2308
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 2311
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmBlockList(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 2312
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockedNumbersListFromNW(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fputmBlockList(Lcom/sec/internal/ims/servicemodules/im/ImModule;Ljava/util/Set;)V

    .line 2313
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$4;->this$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/im/ImModule;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/BlockedNumberUtil;->getBlockExpires(Landroid/content/Context;)J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->-$$Nest$fputmBlockExpires(Lcom/sec/internal/ims/servicemodules/im/ImModule;J)V

    return-void
.end method
