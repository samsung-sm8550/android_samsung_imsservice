.class public final synthetic Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Lcom/sec/internal/helper/os/CellIdentityWrapper;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->$r8$lambda$7_9p4pDahBQN0u6k83WY44dV8xE(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    return p0
.end method
