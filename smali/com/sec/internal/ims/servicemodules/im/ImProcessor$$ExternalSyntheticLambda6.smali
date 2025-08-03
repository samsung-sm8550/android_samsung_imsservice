.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$2:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$2:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImProcessor$$ExternalSyntheticLambda6;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImProcessor;->$r8$lambda$qRaSVQCe7rHhKGgU4tyh4gM1Myg(Lcom/sec/internal/ims/servicemodules/im/ImProcessor;ILcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/List;)V

    return-void
.end method
