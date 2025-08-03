.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/constants/ims/SipMsg;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/constants/ims/SipMsg;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda21;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda21;->f$0:Lcom/sec/internal/constants/ims/SipMsg;

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$kp1Ouez8wjBugLpXvnxM3u4YQGg(Lcom/sec/internal/constants/ims/SipMsg;Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method
