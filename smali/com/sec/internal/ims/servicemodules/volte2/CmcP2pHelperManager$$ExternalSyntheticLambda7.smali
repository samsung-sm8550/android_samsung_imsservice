.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$4:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda7;->f$4:Z

    move-object v5, p1

    check-cast v5, Landroid/os/Message;

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->$r8$lambda$sgeJQr9IgCCV2S9NKZwvThZPud8(Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Message;)Z

    move-result p0

    return p0
.end method
