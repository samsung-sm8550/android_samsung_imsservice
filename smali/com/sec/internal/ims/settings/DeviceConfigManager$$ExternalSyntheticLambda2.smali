.class public final synthetic Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/DeviceConfigManager;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/DeviceConfigManager;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iput-object p2, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;->f$2:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/settings/DeviceConfigManager;

    iget-object v1, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/DeviceConfigManager$$ExternalSyntheticLambda2;->f$2:Landroid/util/SparseArray;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/ims/settings/DeviceConfigManager;->$r8$lambda$p9xP0aRO-SqIielIelFNNtg0S8I(Lcom/sec/internal/ims/settings/DeviceConfigManager;Ljava/lang/Integer;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-void
.end method
