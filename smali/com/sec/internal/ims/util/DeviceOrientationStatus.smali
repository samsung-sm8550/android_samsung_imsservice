.class public Lcom/sec/internal/ims/util/DeviceOrientationStatus;
.super Ljava/lang/Object;
.source "DeviceOrientationStatus.java"


# static fields
.field private static final FLIPPED_LANDSCAPE:I = 0x3

.field private static final LANDSCAPE:I = 0x1

.field private static final PORTRAIT:I = 0x0

.field private static final REVERSE_PORTRAIT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceOrientation(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 28
    invoke-static {p0}, Lcom/sec/internal/ims/util/DeviceOrientationStatus;->translate(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 31
    invoke-static {p0}, Lcom/sec/internal/ims/util/DeviceOrientationStatus;->translate(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object p0

    return-object p0
.end method

.method public static translate(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 46
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object p0

    .line 43
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->FLIPPED_LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object p0

    .line 39
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->REVERSE_PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object p0

    .line 41
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->LANDSCAPE:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object p0

    .line 37
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;->PORTRAIT:Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    return-object p0
.end method
