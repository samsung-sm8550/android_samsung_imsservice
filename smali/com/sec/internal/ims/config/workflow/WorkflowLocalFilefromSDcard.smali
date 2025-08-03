.class public Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;
.super Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;
.source "WorkflowLocalFilefromSDcard.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WorkflowLocalFilefromSDcard"


# instance fields
.field mMno:Lcom/sec/internal/constants/Mno;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V

    .line 33
    iput-object p4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;->mMno:Lcom/sec/internal/constants/Mno;

    return-void
.end method


# virtual methods
.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V

    return-object p1

    .line 50
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V

    return-object p1

    .line 40
    :cond_2
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowLocalFilefromSDcard;)V

    return-object p1
.end method
