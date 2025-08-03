.class abstract Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
.super Ljava/lang/Object;
.source "WorkflowBase.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IWorkflow;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 0
    return-void
.end method

.method public closeStorage()V
    .locals 0

    .line 0
    return-void
.end method

.method public forceAutoConfig(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public forceAutoConfigNeedResetConfig(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public getStorage()Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMSISDNDialog()V
    .locals 0

    .line 0
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public read(Ljava/lang/String;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startAutoConfig(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public startAutoConfigDualsim(Z)V
    .locals 0

    .line 0
    return-void
.end method
