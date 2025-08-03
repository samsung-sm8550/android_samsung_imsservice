.class public Lcom/sec/internal/ims/core/iil/IpcDispatcherFactory;
.super Ljava/lang/Object;
.source "IpcDispatcherFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIpcDispatcher(I)Lcom/sec/internal/ims/core/iil/IpcDispatcher;
    .locals 2

    .line 10
    const-string/jumbo v0, "ro.vendor.api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    .line 11
    new-instance v0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;-><init>(I)V

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;-><init>(I)V

    return-object v0
.end method
