.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

.field public final synthetic f$1:Lcom/sec/internal/imsphone/SipDelegateImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/internal/imsphone/SipDelegateImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$1:Lcom/sec/internal/imsphone/SipDelegateImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda15;->f$1:Lcom/sec/internal/imsphone/SipDelegateImpl;

    check-cast p1, Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$FqdzxlFjXeZSY1LbtZefk32kUFQ(Lcom/sec/internal/imsphone/SipTransportImpl;Lcom/sec/internal/imsphone/SipDelegateImpl;Lcom/sec/internal/imsphone/RegistrationTracker$RegisteredToken;)V

    return-void
.end method
