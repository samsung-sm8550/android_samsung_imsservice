.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:Lcom/sec/internal/ims/servicemodules/im/FtMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda10;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda10;->f$1:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda10;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda10;->f$1:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->$r8$lambda$oCY5vxCmuFZuldHuezLm4ty8CLA(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method
