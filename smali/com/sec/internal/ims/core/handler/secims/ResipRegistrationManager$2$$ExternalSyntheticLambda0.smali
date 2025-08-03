.class public final synthetic Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

.field public final synthetic f$1:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2$$ExternalSyntheticLambda0;->f$1:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;->$r8$lambda$D8OT4fBgBLDeIjxCT1Gvy2ZHzIM(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$2;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method
