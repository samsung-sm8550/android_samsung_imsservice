.class public final synthetic Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/sec/internal/ims/core/NetworkCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iput p2, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;->f$2:Lcom/sec/internal/ims/core/NetworkCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    iget v1, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;->f$1:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;->f$2:Lcom/sec/internal/ims/core/NetworkCallback;

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/core/PdnController;->$r8$lambda$pqlbpZWgwOrOeJ4a0p95PalQkSg(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V

    return-void
.end method
