.class public final Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;
.super Ljava/lang/Object;
.source "McsConstants.java"


# static fields
.field public static final CLIENT_VENDOR:Ljava/lang/String; = "Samsung"

.field public static final DEVICE_KIND:Ljava/lang/String;

.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final FIRMWARE_VERSION:Ljava/lang/String;

.field public static final MNO:Ljava/lang/String; = "mno"

.field public static final NATIVE_INFO:Ljava/lang/String; = "native_info"

.field public static final ONEUI_VERSION:Ljava/lang/String;

.field public static final OS_TYPE:Ljava/lang/String; = "aos"

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final SERVICE_VERSION:Ljava/lang/String; = "1.0"

.field public static final SMS_PORT:I = 0x4199


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->OS_VERSION:Ljava/lang/String;

    .line 66
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->DEVICE_NAME:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tablet"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "phone"

    :goto_0
    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->DEVICE_KIND:Ljava/lang/String;

    .line 70
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->FIRMWARE_VERSION:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "ro.build.version.oneui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->ONEUI_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
