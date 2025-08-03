.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;->$r8$lambda$AQ21bdgeSdUrznoz6keT39RRrI8(Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;Z)V

    return-void
.end method
