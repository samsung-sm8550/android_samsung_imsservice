.class public final synthetic Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

.field public final synthetic f$1:Lcom/sec/internal/imsphone/SipDelegateConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda1;->f$1:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda1;->f$1:Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-static {v0, p0}, Lcom/sec/internal/imsphone/SipDelegateImpl;->$r8$lambda$m4oJ5EFyI12mavQyYQPUM0hj19s(Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    return-void
.end method
