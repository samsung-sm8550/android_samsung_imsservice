.class public final synthetic Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$2:Z

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$3:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$2:Z

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtProcessor$$ExternalSyntheticLambda5;->f$3:Landroid/net/Uri;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->$r8$lambda$-R6V904VLi3SCxqZ8iNGbpvkkn4(Lcom/sec/internal/ims/servicemodules/im/FtProcessor;Ljava/lang/String;ZLandroid/net/Uri;)V

    return-void
.end method
