.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/core/PdnFailReason;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/core/PdnFailReason;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda19;->f$0:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda19;->f$0:Lcom/sec/internal/constants/ims/core/PdnFailReason;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->$r8$lambda$GQIkpPxafNqRT6__QBS8hN_3tXM(Lcom/sec/internal/constants/ims/core/PdnFailReason;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
