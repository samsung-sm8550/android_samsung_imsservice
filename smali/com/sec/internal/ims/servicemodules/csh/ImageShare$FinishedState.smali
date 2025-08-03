.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 464
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/16 v2, 0xd

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 465
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$FinishedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->deleteSession(I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    .line 472
    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p0, 0x0

    return p0
.end method
