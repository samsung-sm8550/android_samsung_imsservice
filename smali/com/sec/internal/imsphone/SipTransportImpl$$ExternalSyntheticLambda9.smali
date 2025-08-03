.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipDelegateConfig;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipDelegateConfig;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/imsphone/SipDelegateConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/imsphone/SipDelegateConfig;

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$Lfx4z_3Ch95uTKxBzSyUT2pMPBs(Lcom/sec/internal/imsphone/SipDelegateConfig;Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method
