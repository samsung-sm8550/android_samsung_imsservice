.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WorkflowVzw.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iput-object p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x1

    .line 180
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnectionAvailable:Z

    .line 181
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobileStateCallback: onAvailable with network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " registered with ads subId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAdsSubId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cur ads subId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSubId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAdsSubId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSubId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v0, "mobileStateCallback: onAvailable: ads subId is changed: the connection is not available"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iput-object p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    .line 195
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnectionAvailable:Z

    .line 196
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobileStateCallback: onLost with network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " registered with ads subId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAdsSubId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cur ads subId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getSubId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-static {v1, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
