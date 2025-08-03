.class Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;
.super Ljava/lang/Object;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

.field final synthetic val$paramResume:Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->val$paramResume:Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveOn()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "Last failed API succeed, resume all handlers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;->val$paramResume:Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->-$$Nest$mresumeHandlers(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method
