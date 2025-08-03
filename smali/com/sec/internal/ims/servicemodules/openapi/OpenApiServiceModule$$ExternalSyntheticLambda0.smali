.class public final synthetic Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final broadcast(Landroid/os/IInterface;)V
    .locals 2

    .line 0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule$$ExternalSyntheticLambda0;->f$2:Z

    check-cast p1, Lcom/sec/ims/openapi/ISipDialogListener;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/openapi/OpenApiServiceModule;->$r8$lambda$-AVGSleWuYaEXurI9HlN350D9A4(ILjava/lang/String;ZLcom/sec/ims/openapi/ISipDialogListener;)V

    return-void
.end method
