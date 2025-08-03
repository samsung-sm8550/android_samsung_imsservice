.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcP2pHelperManager;->$r8$lambda$AieHGK8DwEIXTVqHufzW7wQ6xN0(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;)Z

    move-result p0

    return p0
.end method
