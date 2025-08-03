.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda3;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->$r8$lambda$SsUonBHhcxA7iepM7Xscoo9evV0(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;Ljava/util/List;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
