.class public final synthetic Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/SipDelegate;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/SipDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda16;->f$0:Landroid/telephony/ims/stub/SipDelegate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/SipTransportImpl$$ExternalSyntheticLambda16;->f$0:Landroid/telephony/ims/stub/SipDelegate;

    check-cast p1, Lcom/sec/internal/imsphone/SipDelegateImpl;

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->$r8$lambda$ZED05-QVYIddTUzKozxgIWqbrcw(Landroid/telephony/ims/stub/SipDelegate;Lcom/sec/internal/imsphone/SipDelegateImpl;)Z

    move-result p0

    return p0
.end method
