.class public final synthetic Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda16;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda16;->f$0:I

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->$r8$lambda$3dNKRoRssdldTrrBUogOVkAHZuE(I)Lcom/sec/internal/ims/core/sim/SimManager;

    move-result-object p0

    return-object p0
.end method
