.class public final synthetic Lcom/sec/internal/ims/core/sim/SimManagerFactory$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->$r8$lambda$ydBJ6E2EUmb_DG1rlbgg0q_maEg(Landroid/telephony/TelephonyManager;)V

    return-void
.end method
