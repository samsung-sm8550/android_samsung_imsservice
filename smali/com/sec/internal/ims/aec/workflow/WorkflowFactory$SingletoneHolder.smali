.class Lcom/sec/internal/ims/aec/workflow/WorkflowFactory$SingletoneHolder;
.super Ljava/lang/Object;
.source "WorkflowFactory.java"


# static fields
.field static final INSTANCE:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowFactory-IA;)V

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
