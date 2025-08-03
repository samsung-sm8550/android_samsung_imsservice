.class public Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.vsim.attsoftphone.settings"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final PACKAGE_CONTEXT:Ljava/lang/String; = "com.sec.imsservice"

.field public static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.internal.ims.entitlement.softphone.SoftphoneService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-string v0, "content://com.sec.vsim.attsoftphone.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
