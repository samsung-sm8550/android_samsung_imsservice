.class public final synthetic Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/SubscriptionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/SubscriptionInfo;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$1;->$r8$lambda$mRSSbluW_YWEOt3RxFzyX5u5t4E(Landroid/telephony/SubscriptionInfo;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method
