.class Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;
.super Ljava/lang/Object;
.source "OpenApiServiceModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 328
    const-string p1, "OpenApiServiceModule"

    const-string v0, "Connected to ImsService."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p2}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fputmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/IImsService;)V

    .line 331
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmDialogEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IDialogEventListener;

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/IImsService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->access$000(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sec/ims/IImsService;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 334
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmDialogEventListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmRegiListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IImsRegistrationListener;

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Lcom/sec/ims/IImsService;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/ims/IImsService;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    goto :goto_1

    .line 338
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fgetmRegiListener(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 340
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 346
    const-string p1, "OpenApiServiceModule"

    const-string v0, "Disconnected from ImsService."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->-$$Nest$fputmImsService(Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;Lcom/sec/ims/IImsService;)V

    return-void
.end method
