.class public Lcom/sec/internal/helper/os/TelephonyUtilsWrapper;
.super Ljava/lang/Object;
.source "TelephonyUtilsWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;
    .locals 0

    .line 10
    invoke-static {p0, p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
