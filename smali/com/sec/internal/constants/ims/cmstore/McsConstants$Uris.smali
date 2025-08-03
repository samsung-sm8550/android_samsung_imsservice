.class public Lcom/sec/internal/constants/ims/cmstore/McsConstants$Uris;
.super Ljava/lang/Object;
.source "McsConstants.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.android.rcs"

.field public static final FRAGMENT_SIM_SLOT:Ljava/lang/String; = "simslot"

.field public static final RCS_REGISTRATION_STATUS_URI:Landroid/net/Uri;

.field public static final RCS_USER_ALIAS_URI:Landroid/net/Uri;

.field public static final URI:Ljava/lang/String; = "content://com.sec.ims.android.rcs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 368
    const-string v0, "content://com.sec.ims.android.rcs/registration"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$Uris;->RCS_REGISTRATION_STATUS_URI:Landroid/net/Uri;

    .line 369
    const-string v0, "content://com.sec.ims.android.rcs/preferences/5"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$Uris;->RCS_USER_ALIAS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
