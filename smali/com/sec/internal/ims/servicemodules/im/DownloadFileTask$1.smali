.class Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;
.super Ljava/lang/Object;
.source "DownloadFileTask.java"

# interfaces
.implements Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->access$000(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Z

    move-result p0

    return p0
.end method

.method public onUpload(JJ)V
    .locals 6

    .line 138
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUpload: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmWritten(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmTotal(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmWritten(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmTotal(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%)"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmTransferred(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide p3

    const-wide/16 v0, 0x32

    mul-long/2addr p3, v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmTotal(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    div-long/2addr p3, v2

    mul-long/2addr v0, p1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmTotal(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    div-long/2addr v0, v2

    cmp-long p3, p3, v0

    if-gez p3, :cond_1

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 142
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpload: currentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDownloadProgressElapsed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmDownloadProgressElapsed(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmDownloadProgressElapsed(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmWritten(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmTotal(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v2

    const-wide/16 v4, 0x2800

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmRequest(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fgetmWritten(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;)J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$DownloadTaskCallback;->onProgressUpdate(J)V

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {v0, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fputmDownloadProgressElapsed(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)V

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;->-$$Nest$fputmTransferred(Lcom/sec/internal/ims/servicemodules/im/DownloadFileTask;J)V

    return-void
.end method
