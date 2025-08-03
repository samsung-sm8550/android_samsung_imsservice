.class public Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;
.super Ljava/lang/Object;
.source "EntitlementConfigContract.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BINDING_SERVICE:I = 0x8

.field public static final DEVICE_CONFIG:I = 0x1

.field public static final DEVICE_CONFIG_TAG:I = 0x9

.field public static final ENTITLEMENT_URL:I = 0x6

.field public static final FORCE_UPDATE:I = 0x5

.field public static final NSDS_JANKSY_CONFIG:I = 0x2

.field public static final NSDS_XPATH_EXPR:I = 0x3

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlementconfig.provider"

.field public static final RCS_CONFIG:I = 0x4

.field public static final RECONNECT_DB:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
