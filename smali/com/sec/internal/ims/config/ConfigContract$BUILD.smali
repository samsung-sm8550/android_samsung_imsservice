.class public Lcom/sec/internal/ims/config/ConfigContract$BUILD;
.super Ljava/lang/Object;
.source "ConfigContract.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTerminalModel()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getTerminalSwVersion()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method
