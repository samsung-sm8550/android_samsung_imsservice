.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

.field public final synthetic f$1:Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->$r8$lambda$iERaTg89fnINSws3Usx7C47MD3U(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/ims/servicemodules/volte2/data/IncomingCallEvent;)V

    return-void
.end method
