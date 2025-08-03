.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field public final synthetic f$1:Lcom/sec/ims/util/ImsUri;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$1:Lcom/sec/ims/util/ImsUri;

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$1:Lcom/sec/ims/util/ImsUri;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImModule$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->$r8$lambda$hGz9OsPDPStlalcdYgQSCN5YKnY(Lcom/sec/internal/ims/servicemodules/im/ImModule;Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
