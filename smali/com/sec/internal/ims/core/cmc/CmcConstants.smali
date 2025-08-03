.class public Lcom/sec/internal/ims/core/cmc/CmcConstants;
.super Ljava/lang/Object;
.source "CmcConstants.java"


# static fields
.field public static final E_NUM_SLOT_SPLIT:Ljava/lang/String; = "-"

.field public static final E_NUM_STR_QUOTE:Ljava/lang/String; = "\""

.field public static final IS_TEST_MODE:Z

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.mdecservice"

.field public static final START_REGISTRATION_TIME_DELAY:I = 0x5

.field public static final URN_PREFIX:Ljava/lang/String; = "urn:duid:"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_MODE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_LINEID:Ljava/lang/String;

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_PD_DEVICEID:Ljava/lang/String;

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_SD_DEVICEID:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcConstants;->IS_TEST_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
