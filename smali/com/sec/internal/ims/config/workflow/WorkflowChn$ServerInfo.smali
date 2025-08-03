.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;
.super Ljava/lang/Object;
.source "WorkflowChn.java"


# instance fields
.field public appIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fqdn:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->appIdList:Ljava/util/List;

    return-void
.end method
