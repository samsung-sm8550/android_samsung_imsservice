.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->$r8$lambda$u_DMHdp43pWc85B-4JRSy-cD4x0(Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
