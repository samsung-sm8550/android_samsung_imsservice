.class public final synthetic Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/helper/AsyncResult;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/AsyncResult;

    return-void
.end method


# virtual methods
.method public final broadcast(Landroid/os/IInterface;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/helper/AsyncResult;

    check-cast p1, Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->$r8$lambda$PEC6h_BvuZpjfHrRoy-qfA7ozb8(Lcom/sec/internal/helper/AsyncResult;Lcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method
