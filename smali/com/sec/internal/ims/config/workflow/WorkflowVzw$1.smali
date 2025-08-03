.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "WorkflowVzw.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
