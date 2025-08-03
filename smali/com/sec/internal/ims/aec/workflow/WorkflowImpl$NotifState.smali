.class public final enum Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;
.super Ljava/lang/Enum;
.source "WorkflowImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

.field public static final enum IN_PROGRESS:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

.field public static final enum NOT_READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

.field public static final enum READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;
    .locals 3

    .line 64
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->NOT_READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    sget-object v1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->IN_PROGRESS:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    sget-object v2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->NOT_READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->IN_PROGRESS:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    const-string v1, "READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->READY:Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    .line 64
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->$values()[Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->$VALUES:[Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;
    .locals 1

    .line 64
    const-class v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;
    .locals 1

    .line 64
    sget-object v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->$VALUES:[Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/aec/workflow/WorkflowImpl$NotifState;

    return-object v0
.end method
