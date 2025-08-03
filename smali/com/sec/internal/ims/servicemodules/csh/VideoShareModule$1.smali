.class Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoShareModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetINTENT_MAX_DURATION_TIME()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetEXTRA_SESSIONID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 164
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object p2

    .line 165
    const-string v0, "Session #"

    if-eqz p2, :cond_0

    .line 166
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " duration is approaching/longer than the VS MAX DURATION :"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$fgetmaxDurationTime(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)[I

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    aget p0, p1, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->maxDurationTime()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
