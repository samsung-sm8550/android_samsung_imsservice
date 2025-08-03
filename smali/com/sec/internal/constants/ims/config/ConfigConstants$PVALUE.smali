.class public Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# static fields
.field public static final APP_ID_1:Ljava/lang/String; = "ap2001"

.field public static final APP_ID_2:Ljava/lang/String; = "ap2002"

.field public static final APP_ID_3:Ljava/lang/String; = "ap2003"

.field public static final APP_ID_3GPP_IMS:Ljava/lang/String; = "urn:oma:mo:ext-3gpp-ims:1.0"

.field public static final APP_ID_3GPP_NAS:Ljava/lang/String; = "urn:oma:mo:ext-3gpp-nas-config:1.0"

.field public static final APP_ID_4:Ljava/lang/String; = "ap2004"

.field public static final APP_ID_5:Ljava/lang/String; = "ap2005"

.field public static final CLIENT_VENDOR:Ljava/lang/String; = "SEC"

.field public static final CLIENT_VERSION_NAME:Ljava/lang/String; = "RCSAndr-"

.field public static final CLIENT_VERSION_VALUE:Ljava/lang/String; = "6.0"

.field public static final COMPOSER_AUTH_DISABLED:I = 0x0

.field public static final COMPOSER_AUTH_ENABLED_BOTH:I = 0x3

.field public static final COMPOSER_AUTH_ENABLED_MMTEL:I = 0x2

.field public static final COMPOSER_AUTH_ENABLED_MSRP:I = 0x1

.field public static final DEFAULT_SMS_APP:Ljava/lang/String; = "1"

.field public static final GOOG_DEFAULT_CLIENT_VENDOR:Ljava/lang/String; = "Goog"

.field public static final GOOG_DEFAULT_CLIENT_VERSION:Ljava/lang/String; = "RCSAndr-8.5"

.field public static final GOOG_DEFAULT_RCS_ENABLED_BY_USER:Ljava/lang/String; = "1"

.field public static final GOOG_DEFAULT_RCS_PROFILE:Ljava/lang/String; = "UP_1.0"

.field public static final GOOG_DEFAULT_RCS_VERSION:Ljava/lang/String; = "7.0"

.field public static final NONDEFAULT_SMS_APP:Ljava/lang/String; = "2"

.field public static final PROVISIONING_VERSION:Ljava/lang/String; = "2.0"

.field public static final PROVISIONING_VERSION_2_0:Ljava/lang/String; = "2.0"

.field public static final PROVISIONING_VERSION_4_0:Ljava/lang/String; = "4.0"

.field public static final PROVISIONING_VERSION_5_0:Ljava/lang/String; = "5.0"

.field public static final RCS_VERSION:Ljava/lang/String; = "6.0"

.field public static final SEC_DEFAULT_RCS_PROFILE:Ljava/lang/String; = "UP_1.0"

.field public static final TERMINAL_MODEL:Ljava/lang/String;

.field public static final TERMINAL_SW_VERSION:Ljava/lang/String;

.field public static final TERMINAL_VENDOR:Ljava/lang/String;

.field public static final TOKEN:Ljava/lang/String; = ""

.field public static final VBC_AUTH_DISABLED:I = 0x0

.field public static final VBC_AUTH_ENABLED:I = 0x1

.field public static final VERS:Ljava/lang/String; = "0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_VENDOR:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_VENDOR:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    sput-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
