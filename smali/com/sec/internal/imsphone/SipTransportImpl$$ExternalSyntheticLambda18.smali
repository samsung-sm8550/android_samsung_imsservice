.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;->f$0:Lcom/sec/internal/imsphone/SipTransportImpl;

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda18;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateConfig;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$lsEeQj0JWP1jApzYE5bg5aF-Vg0(Lcom/sec/internal/imsphone/SipTransportImpl;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/imsphone/SipDelegateConfig;)V

    return-void
.end method
