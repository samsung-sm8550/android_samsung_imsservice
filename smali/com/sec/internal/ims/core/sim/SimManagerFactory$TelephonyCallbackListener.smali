.class Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;
.super Landroid/telephony/TelephonyCallback;
.source "SimManagerFactory.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory$TelephonyCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 0

    .line 59
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->-$$Nest$smupdateActiveDataSubscription(I)V

    return-void
.end method
