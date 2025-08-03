.class Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;
.super Ljava/lang/Object;
.source "OpenApiServiceModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

.field final synthetic val$listener:Lcom/sec/ims/openapi/ISipDialogListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/openapi/ISipDialogListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->val$listener:Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 174
    const-string v0, "OpenApiServiceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binder died, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->val$listener:Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmSipDialogListeners(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmSipDialogListeners(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$1;->val$listener:Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-virtual {v1, p0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
