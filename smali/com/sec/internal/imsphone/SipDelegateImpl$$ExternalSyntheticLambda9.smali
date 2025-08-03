.class public final synthetic Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

.field public final synthetic f$1:Landroid/telephony/ims/DelegateRegistrationState$Builder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/DelegateRegistrationState$Builder;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;->f$1:Landroid/telephony/ims/DelegateRegistrationState$Builder;

    iput p3, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;->f$1:Landroid/telephony/ims/DelegateRegistrationState$Builder;

    iget p0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda9;->f$2:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/imsphone/SipDelegateImpl;->$r8$lambda$c3j9LEbSXoq1QdqGEcDeulma3-4(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/DelegateRegistrationState$Builder;ILjava/lang/String;)V

    return-void
.end method
