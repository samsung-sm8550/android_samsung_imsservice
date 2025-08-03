.class public final synthetic Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/net/Network;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/LinkedList;

.field public final synthetic f$4:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$3:Ljava/util/LinkedList;

    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$0:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$1:Landroid/net/Network;

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$3:Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationUtils$$ExternalSyntheticLambda1;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->$r8$lambda$sKyYKJwrIe9OOxSIb-mdAufMdQc(ILandroid/net/Network;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
