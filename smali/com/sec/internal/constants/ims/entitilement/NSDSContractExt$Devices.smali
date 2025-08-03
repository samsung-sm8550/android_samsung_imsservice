.class public final Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;
.super Ljava/lang/Object;
.source "NSDSContractExt.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$CommonColumns;
.implements Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEVICE_PUSH_TOKEN:Ljava/lang/String; = "device_push_token"

.field public static final OWN_ACTIVATION_STATUS:Ljava/lang/String; = "activation_status"

.field public static final OWN_READY_STATUS:Ljava/lang/String; = "ready_status"

.field public static final QUERY_PARAM_DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field public static final QUERY_PARAM_IS_PRIMARY:Ljava/lang/String; = "is_primary"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 563
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "devices"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildDeviceUri(J)Landroid/net/Uri;
    .locals 1

    .line 596
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final buildUpdateDeviceNameUri(J)Landroid/net/Uri;
    .locals 1

    .line 606
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const-string/jumbo p1, "update_device_name"

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
