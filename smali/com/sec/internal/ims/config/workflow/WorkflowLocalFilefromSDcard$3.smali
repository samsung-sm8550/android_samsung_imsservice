.class Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowLocalFilefromSDcard.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsVersion:Ljava/lang/String;

    :goto_0
    const-string v3, "info/rcs_version"

    invoke-interface {v1, v3, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    :goto_1
    const-string v3, "info/rcs_profile"

    invoke-interface {v1, v3, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mClientVendor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->mClientVendor:Ljava/lang/String;

    :goto_2
    const-string v3, "info/client_vendor"

    invoke-interface {v1, v3, v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mClientVersion:Ljava/lang/String;

    :goto_3
    const-string v0, "info/client_version"

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    if-nez v0, :cond_6

    iget-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 80
    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 82
    :goto_6
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
