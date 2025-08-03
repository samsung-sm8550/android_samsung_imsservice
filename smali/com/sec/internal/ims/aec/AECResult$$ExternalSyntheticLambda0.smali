.class public final synthetic Lcom/sec/internal/ims/aec/AECResult$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/aec/AECResult;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/aec/AECResult;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/aec/AECResult$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/aec/AECResult;

    iput-object p2, p0, Lcom/sec/internal/ims/aec/AECResult$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECResult$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/aec/AECResult;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/AECResult$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/aec/AECResult;->$r8$lambda$T-4RcaGaHw1tE8e7CDBA9SId2GE(Lcom/sec/internal/ims/aec/AECResult;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
