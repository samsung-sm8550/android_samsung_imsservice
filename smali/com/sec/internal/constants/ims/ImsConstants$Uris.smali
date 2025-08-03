.class public Lcom/sec/internal/constants/ims/ImsConstants$Uris;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.settings"

.field public static final CONFIG_URI:Ljava/lang/String; = "content://com.sec.ims.settings"

.field public static final FRAGMENT_SIM_SLOT:Ljava/lang/String; = "simslot"

.field public static final LINES_CONTENT_URI:Landroid/net/Uri;

.field public static final MMS_PREFERENCE_PROVIDER_DATASAVER_URI:Landroid/net/Uri;

.field public static final MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

.field public static final RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_DYNAMIC_IMS_UPDATE_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_SMK_CONFIG_RESET_URI:Landroid/net/Uri;

.field public static final SETTINGS_PROVIDER_SMK_CONFIG_URI:Landroid/net/Uri;

.field public static final SMS_SETTING:Landroid/net/Uri;

.field public static final SPECIFIC_BOT_EXPIRES:Landroid/net/Uri;

.field public static final SPECIFIC_BOT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "content://com.samsung.ims.nsds.provider/lines"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->LINES_CONTENT_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.sec.ims.settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_PROFILE_URI:Landroid/net/Uri;

    .line 50
    const-string v0, "content://com.sec.ims.settings/dynamic_ims_updated"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_DYNAMIC_IMS_UPDATE_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://com.sec.ims.settings/downloadconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SMK_CONFIG_URI:Landroid/net/Uri;

    .line 52
    const-string v0, "content://com.sec.ims.settings/resetconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SMK_CONFIG_RESET_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "content://com.sec.ims.settings/simmobility"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_KEY_URI:Landroid/net/Uri;

    .line 55
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/data_saver"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->MMS_PREFERENCE_PROVIDER_DATASAVER_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "content://com.sec.ims.settings/sms_setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SMS_SETTING:Landroid/net/Uri;

    .line 57
    const-string v0, "content://com.sec.ims.android.rcs/support_dual_rcs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->RCS_PREFERENCE_PROVIDER_SUPPORT_DUAL_RCS:Landroid/net/Uri;

    .line 58
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/specific_bot"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SPECIFIC_BOT_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "content://com.android.mms.csc.PreferenceProvider/specific_bot_expires"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SPECIFIC_BOT_EXPIRES:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
