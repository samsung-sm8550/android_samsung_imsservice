.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->$r8$lambda$xo_r_NLRBBoApaqJNmJGdzbMpZE(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V

    return-void
.end method
