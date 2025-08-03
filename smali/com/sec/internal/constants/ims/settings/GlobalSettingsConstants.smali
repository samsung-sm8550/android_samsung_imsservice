.class public Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;
.super Ljava/lang/Object;
.source "GlobalSettingsConstants.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LOG_TAG:Ljava/lang/String; = "GlobalSettingsConstants"

.field public static final NAME:Ljava/lang/String; = "mnoname"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
