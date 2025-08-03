.class Lcom/sec/internal/helper/HttpRequest$3;
.super Lcom/sec/internal/helper/HttpRequest$CloseOperation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/internal/helper/HttpRequest$CloseOperation<",
        "Lcom/sec/internal/helper/HttpRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/HttpRequest;

.field final synthetic val$input:Ljava/io/InputStream;

.field final synthetic val$output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/HttpRequest;Ljava/io/Closeable;ZLjava/io/FileOutputStream;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    iput-object p5, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$input:Ljava/io/InputStream;

    iput-object p6, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$output:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/helper/HttpRequest$CloseOperation;-><init>(Ljava/io/Closeable;ZLjava/io/FileOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/helper/HttpRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v0}, Lcom/sec/internal/helper/HttpRequest;->-$$Nest$fgetbufferSize(Lcom/sec/internal/helper/HttpRequest;)I

    move-result v0

    new-array v0, v0, [B

    .line 1172
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$input:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1173
    iget-object v2, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$output:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1174
    iget-object v2, p0, Lcom/sec/internal/helper/HttpRequest$3;->val$output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 1175
    iget-object v2, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->-$$Nest$fgettotalWritten(Lcom/sec/internal/helper/HttpRequest;)J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/sec/internal/helper/HttpRequest;->-$$Nest$fputtotalWritten(Lcom/sec/internal/helper/HttpRequest;J)V

    .line 1176
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->-$$Nest$fgetprogress(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v2}, Lcom/sec/internal/helper/HttpRequest;->-$$Nest$fgettotalWritten(Lcom/sec/internal/helper/HttpRequest;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v4}, Lcom/sec/internal/helper/HttpRequest;->-$$Nest$fgettotalSize(Lcom/sec/internal/helper/HttpRequest;)J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->onUpload(JJ)V

    .line 1177
    iget-object v1, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    invoke-static {v1}, Lcom/sec/internal/helper/HttpRequest;->-$$Nest$fgetprogress(Lcom/sec/internal/helper/HttpRequest;)Lcom/sec/internal/helper/HttpRequest$UploadProgress;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/HttpRequest$UploadProgress;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/helper/HttpRequest$3;->this$0:Lcom/sec/internal/helper/HttpRequest;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/HttpRequest$HttpRequestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    invoke-virtual {p0}, Lcom/sec/internal/helper/HttpRequest$3;->run()Lcom/sec/internal/helper/HttpRequest;

    move-result-object p0

    return-object p0
.end method
