.class public Lcom/sec/internal/helper/os/BuildProxy;
.super Ljava/lang/Object;
.source "BuildProxy.java"


# static fields
.field private static final PRODUCT_SHIP_PROP:Ljava/lang/String; = "ro.product_ship"

.field private static final SHIP_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/helper/os/BuildProxy;->SHIP_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDiagnosticsAllowed()Z
    .locals 1

    .line 32
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEng()Z
    .locals 1

    .line 24
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    return v0
.end method

.method public static isShipBuild()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/sec/internal/helper/os/BuildProxy;->SHIP_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isPrivateInspectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUser()Z
    .locals 1

    .line 28
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    return v0
.end method
