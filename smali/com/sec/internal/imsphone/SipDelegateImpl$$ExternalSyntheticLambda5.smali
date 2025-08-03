.class public final synthetic Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

.field public final synthetic f$1:Landroid/telephony/ims/SipMessage;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/SipMessage;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iput-object p2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/ims/SipMessage;

    iput-wide p3, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/imsphone/SipDelegateImpl;

    iget-object v1, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$1:Landroid/telephony/ims/SipMessage;

    iget-wide v2, p0, Lcom/sec/internal/imsphone/SipDelegateImpl$$ExternalSyntheticLambda5;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/imsphone/SipDelegateImpl;->$r8$lambda$prDw1_94HvcXCSBR06HvDQOyv80(Lcom/sec/internal/imsphone/SipDelegateImpl;Landroid/telephony/ims/SipMessage;J)V

    return-void
.end method
