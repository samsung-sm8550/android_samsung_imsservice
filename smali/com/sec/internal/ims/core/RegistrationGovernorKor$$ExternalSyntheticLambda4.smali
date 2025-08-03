.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyManager;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/TelephonyManager;

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->$r8$lambda$X7zABWBKAOW9lJon-U0of4RtBck(Landroid/telephony/TelephonyManager;Ljava/lang/Long;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
