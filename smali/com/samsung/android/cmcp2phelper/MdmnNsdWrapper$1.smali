.class Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;
.super Ljava/lang/Object;
.source "MdmnNsdWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field count:I

.field final synthetic this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

.field final synthetic val$WAIT_INTERVAL_TIME:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$ipVersion:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

.field final synthetic val$maxRetryCount:I


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;Lcom/samsung/android/cmcp2phelper/PreferredIpType;ILandroid/os/Handler;I)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$ipVersion:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    iput p3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$maxRetryCount:I

    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$handler:Landroid/os/Handler;

    iput p5, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$WAIT_INTERVAL_TIME:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 196
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne v0, v1, :cond_0

    .line 200
    sget-object p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Stopped cmcp2phelper"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 203
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "wait 300 + from wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$ipVersion:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-static {v1, v2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->access$000(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->count:I

    iget v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$maxRetryCount:I

    if-ge v1, v2, :cond_1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$handler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->val$WAIT_INTERVAL_TIME:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    iget v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->count:I

    goto :goto_0

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->access$100(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The wifi transport manager is restarted, and State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
