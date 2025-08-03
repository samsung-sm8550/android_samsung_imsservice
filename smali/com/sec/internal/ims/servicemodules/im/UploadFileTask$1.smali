.class Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;
.super Ljava/lang/Object;
.source "UploadFileTask.java"

# interfaces
.implements Lcom/sec/internal/helper/HttpRequest$UploadProgress;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->access$000(Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;)Z

    move-result p0

    return p0
.end method

.method public onUpload(JJ)V
    .locals 5

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUpload: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    div-long/2addr v0, v2

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%)"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v0, p3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    const-wide/16 v2, 0x32

    mul-long/2addr v0, v2

    iget-wide p3, p3, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTotal:J

    div-long/2addr v0, p3

    mul-long/2addr v2, p1

    div-long/2addr v2, p3

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpload: currentTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mUploadProgressElapsed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mUploadProgressElapsed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iget-wide v1, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mUploadProgressElapsed:J

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    cmp-long v1, p3, v1

    if-lez v1, :cond_0

    .line 168
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mRequest:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadRequest;->mCallback:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$UploadTaskCallback;->onProgressUpdate(J)V

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iput-wide p3, v0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mUploadProgressElapsed:J

    .line 172
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask$1;->this$0:Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;

    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/UploadFileTask;->mTransferred:J

    return-void
.end method
