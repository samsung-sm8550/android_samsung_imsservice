.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;->f$1:Z

    iput p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;->f$1:Z

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda11;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->$r8$lambda$-bbTB29NMo0qLo6i3HL8Dj1H8Z4(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;ZI)V

    return-void
.end method
