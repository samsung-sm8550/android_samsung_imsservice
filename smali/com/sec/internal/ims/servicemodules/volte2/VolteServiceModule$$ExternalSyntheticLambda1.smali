.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

.field public final synthetic f$1:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;->f$1:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule$$ExternalSyntheticLambda1;->f$1:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->$r8$lambda$IHMPt60TVpaeXEinKpzoHFI_v6E(Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;Lcom/sec/internal/constants/ims/servicemodules/volte2/CallStateEvent;)V

    return-void
.end method
