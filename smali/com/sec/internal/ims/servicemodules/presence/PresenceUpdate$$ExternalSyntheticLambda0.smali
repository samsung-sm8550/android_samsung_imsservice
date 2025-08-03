.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/sec/ims/presence/PresenceInfo;

.field public final synthetic f$3:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$2:Lcom/sec/ims/presence/PresenceInfo;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$3:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$2:Lcom/sec/ims/presence/PresenceInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate$$ExternalSyntheticLambda0;->f$3:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->$r8$lambda$va8ddWFSPHrg0SrFc55oXCDhwE4(Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;ILcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    return-void
.end method
