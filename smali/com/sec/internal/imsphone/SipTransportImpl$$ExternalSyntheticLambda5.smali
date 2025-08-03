.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/ims/ImsRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/ims/ImsRegistration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/ims/ImsRegistration;

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$j6wzwSpJLWxhZISNAK2FyFFBkGs(Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/imsphone/SipDelegateImpl;)V

    return-void
.end method
