.class public Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
.source "WorkflowBase.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 759
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    return-void
.end method

.method public closeStorage()V
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    return-void
.end method

.method public forceAutoConfig(Z)V
    .locals 4

    .line 781
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAutoConfig mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 782
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    const/4 p1, 0x0

    .line 783
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .locals 4

    .line 793
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceAutoConfigNeedResetConfig mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 795
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 796
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMSISDNDialog()V
    .locals 3

    .line 801
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "handleMSISDNDialog()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 802
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public init()V
    .locals 2

    .line 754
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "already initialized"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 3

    .line 812
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 813
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public read(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 788
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public startAutoConfig(Z)V
    .locals 4

    .line 764
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutoConfig mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Config status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 767
    iget-boolean p1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public startAutoConfigDualsim(Z)V
    .locals 4

    .line 774
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAutoConfigDualsim mobile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 775
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    const/4 p1, 0x6

    .line 776
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
