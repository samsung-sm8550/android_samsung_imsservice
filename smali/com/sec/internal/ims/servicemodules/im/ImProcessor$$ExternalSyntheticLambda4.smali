.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->$r8$lambda$TNLVXAt8kgWfffXcIGvaQkZRpnk(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
