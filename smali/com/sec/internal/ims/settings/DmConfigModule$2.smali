.class Lcom/sec/internal/ims/settings/DmConfigModule$2;
.super Landroid/database/ContentObserver;
.source "DmConfigModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/DmConfigModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/settings/DmConfigModule;Landroid/os/Handler;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    .line 478
    const-string p1, ""

    iget-object v0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmConfigModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/settings/DmConfigModule;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.sec.ims.settings/nvlist"

    .line 479
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 478
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 480
    const-string v1, "DmConfigModule"

    if-eqz v0, :cond_1

    .line 481
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 482
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 485
    const-string v3, "["

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 486
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v2, v2, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 487
    iget-object v2, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v2, v2, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 489
    :cond_0
    const-string/jumbo p1, "nvList is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nv list reloaded:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule$2;->this$0:Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/DmConfigModule;->mNvList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 494
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_1
    if-eqz v0, :cond_3

    .line 478
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p0
.end method
