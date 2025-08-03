.class public abstract Lcom/sec/internal/helper/HttpRequest$CloseOperation;
.super Lcom/sec/internal/helper/HttpRequest$Operation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sec/internal/helper/HttpRequest$Operation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final closeable:Ljava/io/Closeable;

.field fileOutputStream:Ljava/io/FileOutputStream;

.field private final ignoreCloseExceptions:Z


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;ZLjava/io/FileOutputStream;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/sec/internal/helper/HttpRequest$Operation;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    .line 503
    iput-boolean p2, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    .line 504
    iput-object p3, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    instance-of v1, v0, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    .line 510
    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_1

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 515
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_2

    .line 516
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 523
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest$CloseOperation;->fileOutputStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_2

    .line 524
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
