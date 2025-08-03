.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;
.super Landroid/content/ContentProvider;
.source "CapabilityProvider.java"


# static fields
.field static final ADDITIONAL_INFO_LOCAL_OFFLINE:Ljava/lang/String; = "local_offline;"

.field static final ADDITIONAL_INFO_NONE:Ljava/lang/String; = ""

.field static final ADDITIONAL_INFO_REMOTE_OFFLINE:Ljava/lang/String; = "remote_offline;"

.field static final ADDITIONAL_INFO_REMOTE_ONLINE:Ljava/lang/String; = "fresh;"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.serviceprovider"

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityProvider"

.field static final N_INCALL_SERVICE:I = 0x4

.field static final N_LOOKUP_URI:I = 0x1

.field static final N_LOOKUP_URI_ID:I = 0x2

.field static final N_OPERATOR_RCS_VERSION:I = 0x7

.field static final N_OWN_CAPS:I = 0x5

.field static final N_RCS_BIG_DATA:I = 0x8

.field static final N_RCS_ENABLED_STATIC:I = 0x6

.field static final N_SIP_URI:I = 0x3

.field private static final OPTIONS_PATTERN:Ljava/util/regex/Pattern;

.field private static ready_ish:Z

.field private static ready_vsh:Z

.field static sMatcher:Landroid/content/UriMatcher;


# instance fields
.field mAsyncResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDataNetworkType:I

.field private mLastInCallUri:Lcom/sec/ims/util/ImsUri;

.field mLock:Ljava/lang/Object;

.field private mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

.field mService:Lcom/sec/ims/options/ICapabilityService;

.field protected mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;


# direct methods
.method public static synthetic $r8$lambda$5IAGWEFl9Kfk2RlXw_GmrchgbhQ(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmLastInCallUri(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataNetworkType(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCapabilityChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyInCallServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyInCallServicesChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyOwnServicesChange(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->notifyOwnServicesChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwakeup(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->wakeup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputready_ish(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputready_vsh(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smcreateIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 73
    const-string v0, "\\?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    .line 105
    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    .line 106
    sput-boolean v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    .line 111
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 113
    const-string v2, "lookup/*/#"

    const/4 v3, 0x2

    const-string v4, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v2, "lookup/*"

    invoke-virtual {v1, v4, v2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "sip/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "incall/*"

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "own"

    const/4 v2, 0x5

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcs_enabled_static"

    const/4 v2, 0x6

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "operator_rcs_version"

    const/4 v2, 0x7

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "rcs_big_data/*"

    const/16 v2, 0x8

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    return-void
.end method

.method private createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has call composer feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callcomposer\""

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 849
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CANCEL_MESSAGE:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 949
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createChatbotSlmRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 956
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.chatbot.sa\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createExtendedMessagingRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 856
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_EXTENDED_MESSAGING:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createExtendedbotRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 963
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.xbotmessage\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT_HTTP:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    const-string v4, "android.intent.category.DEFAULT"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 809
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    const-string v4, "android.intent.category.DEFAULT"

    const-string v1, "ft-in-group-chat"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 791
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_FT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    const-string v4, "android.intent.category.DEFAULT"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 818
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_SF_GROUP_CHAT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    const-string v4, "android.intent.category.DEFAULT"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 842
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 835
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_GEOLOCATION_PUSH:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 782
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_CHAT:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    const-string v4, "android.intent.category.DEFAULT"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createImageCameraShareRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 7

    .line 905
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "android.intent.category.DEFAULT"

    const-string v6, "Take a picture"

    const-string v3, "com.samsung.rcs.contentsharing.action.IMAGE_SHARE_CAMERA"

    move-object v5, p3

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createImageFileShareRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 7

    .line 897
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_ISH:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "android.intent.category.DEFAULT"

    const-string v6, "Picture"

    const-string v3, "com.samsung.rcs.contentsharing.action.IMAGE_SHARE_FILE"

    move-object v5, p3

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 863
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_INTEGRATED_MSG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 1066
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1068
    const-string v1, "com.sec.rcs.mediatransfer.ish.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1069
    const-string v1, "com.sec.rcs.mediatransfer.ish.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1070
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1071
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method private createPlugInRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 970
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.plugin\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p3

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has post call feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.callunanswered\""

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 880
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_PUBLIC_MSG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    const-string v4, "android.intent.category.DEFAULT"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createShareVideoRow(IZLjava/lang/String;)[Ljava/lang/Object;
    .locals 7

    .line 889
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_VSH:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "android.intent.category.DEFAULT"

    const-string v6, "Live video"

    const-string v3, "com.samsung.rcs.contentsharing.action.VIDEO_SHARE_CAMERA"

    move-object v5, p3

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has shared map feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedmap\""

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 12

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has shared sketch feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CapabilityProvider"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v4, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma.sharedsketch\""

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 827
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STANDALONE_MSG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    const-string v4, "android.intent.category.DEFAULT"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9

    .line 871
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_STICKER:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.samsung.rcs.instantmessaging.VIEW_CHAT"

    const-string v4, "android.intent.category.DEFAULT"

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->initCapabilityService()V

    return-void
.end method

.method private notifyCapabilityChange(Lcom/sec/ims/util/ImsUri;)V
    .locals 3

    .line 1008
    const-string v0, "notifyCapabilityChange"

    const-string v1, "CapabilityProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCapabilityChange: uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.rcs.serviceprovider/sip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 1013
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyInCallServicesChange()V
    .locals 2

    .line 1024
    const-string v0, "CapabilityProvider"

    const-string/jumbo v1, "notifyInCallServicesChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1027
    const-string v0, "content://com.samsung.rcs.serviceprovider/incall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private notifyOwnServicesChange()V
    .locals 2

    .line 1017
    const-string v0, "CapabilityProvider"

    const-string/jumbo v1, "notifyOwnServicesChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1020
    const-string v0, "content://com.samsung.rcs.serviceprovider/own"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private wakeup()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 248
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1042
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    if-eqz v0, :cond_0

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getImsUriListFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 716
    const-string p0, "CapabilityProvider"

    const-string p1, "getImsUriListFromQuery: null uris"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 719
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    const-string v0, "\\s*,\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 722
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 723
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 724
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 727
    :cond_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;
    .locals 0

    .line 745
    const-string p0, "disable_requery"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 750
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    .line 751
    :cond_0
    const-string p0, "force_requery"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 756
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    .line 757
    :cond_1
    const-string p0, "force_requery_uce"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 761
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    .line 762
    :cond_2
    const-string p0, "force_requery_sync"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 766
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    .line 767
    :cond_3
    const-string p0, "msg_conditional_requery"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 773
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0

    .line 776
    :cond_4
    sget-object p0, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1032
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method initCapabilityService()V
    .locals 4

    .line 146
    const-string v0, "CapabilityProvider"

    const-string v1, "Connecting to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 149
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.CapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    const/4 p0, 0x1

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, p0, v3}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 1037
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onCreate()Z
    .locals 3

    .line 125
    const-string v0, "CapabilityProvider"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    .line 132
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    .line 134
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mReceiver:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$ShareServiceBroadcastReceiver;

    .line 136
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider-IA;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 138
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$TelephonyCallbackForCapabilityProvider;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ImsFrameworkState;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/os/ImsFrameworkState;->registerForFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 262
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "query(Uri, String[], String, String[], String) - uri: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", selection: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", args: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 262
    const-string p4, "CapabilityProvider"

    invoke-static {p4, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    if-nez p3, :cond_0

    .line 266
    const-string/jumbo p0, "query before provider was started! Returning empty response"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0

    .line 270
    :cond_0
    sget-object p3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->OPTIONS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    .line 272
    aget-object p3, p1, p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 273
    invoke-virtual {p3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p5

    .line 275
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 276
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getRequeryStrategyId(Ljava/lang/String;)Lcom/sec/ims/options/CapabilityRefreshType;

    move-result-object p1

    .line 278
    invoke-static {p3}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 280
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p3}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 310
    const-string p0, "UNDEFINED CATEGORY! | Operation for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Operation not supported for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :pswitch_0
    const-string p1, "N_RCS_BIG_DATA | Operation for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    invoke-virtual {p0, p5, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 302
    :pswitch_1
    const-string p1, "N_OPERATOR_RCS_VERSION"

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOperatorRcsVersion(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 298
    :pswitch_2
    const-string p1, "N_RCS_ENABLED_STATIC"

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 299
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryRcsEnabledStatic(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 294
    :pswitch_3
    const-string p1, "N_OWN_CAPS | Operation for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 295
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryOwnCaps(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 290
    :pswitch_4
    const-string p2, "N_INCALL_SERVICE | Operation for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    invoke-virtual {p0, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 286
    :pswitch_5
    const-string v1, "N_SIP_URI | Operation for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, v0, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    invoke-virtual {p0, p2, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 282
    :pswitch_6
    const-string p2, "N_LOOKUP_URI_ID | Operation for uri: "

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 283
    invoke-virtual {p0, p5, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method queryIncallService(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 478
    const-string/jumbo v0, "queryIncallService"

    const-string v1, "CapabilityProvider"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 480
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 482
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->INCALL_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 485
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    .line 486
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 488
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual {p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v5

    invoke-interface {v4, v3, v5, p3}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 489
    sget-object v5, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {p2, v5}, Lcom/sec/ims/options/CapabilityRefreshType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 490
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->waitForUpdate(Lcom/sec/ims/util/ImsUri;)V

    .line 491
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getAsyncCapexResult(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryIncallService: Capabilities not found for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 495
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    return-object v0

    .line 499
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLastInCallUri:Lcom/sec/ims/util/ImsUri;

    .line 500
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_2

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 501
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryIncallService: No hasFeature for ish, vsh "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 505
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {p1, p3}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    if-nez p1, :cond_3

    .line 507
    const-string/jumbo p0, "queryIncallService: own capex is null"

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 509
    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result p2

    if-nez p2, :cond_4

    .line 510
    const-string/jumbo p0, "queryIncallService: own capex is not available"

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 512
    :cond_4
    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_5

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 513
    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-nez p2, :cond_5

    .line 514
    const-string/jumbo p0, "queryIncallService: No hasFeature for ish, vsh in own capex"

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 518
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryIncallService: ready_ish = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ready_vsh = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 520
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mDataNetworkType:I

    const/4 v3, 0x3

    const/4 v5, 0x0

    if-ne p2, v3, :cond_6

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 521
    sput-boolean v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    .line 524
    :cond_6
    sget-boolean p2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_ish:Z

    if-eqz p2, :cond_7

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    invoke-virtual {v4, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_7

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    .line 525
    invoke-virtual {p1, p2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, v2

    goto :goto_1

    :cond_7
    move p2, v5

    .line 527
    :goto_1
    sget-boolean v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->ready_vsh:Z

    if-eqz v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    invoke-virtual {v4, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 528
    invoke-virtual {p1, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v2

    goto :goto_2

    :cond_8
    move p1, v5

    .line 530
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryIncallService: hasfeature_ish = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "queryIncallService: hasfeature_vsh = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 533
    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 535
    invoke-direct {p0, v5, p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createShareVideoRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 536
    invoke-direct {p0, v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageFileShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 537
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImageCameraShareRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 539
    :goto_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-object v0
.end method

.method queryLookupUriId(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p3

    .line 316
    const-string/jumbo v1, "queryLookupUriId"

    const-string v9, "CapabilityProvider"

    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 321
    new-instance v12, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v12, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 325
    :try_start_0
    iget-object v0, v7, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2, v8}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    if-nez v13, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryLookupUriId: Capabilities not found for contactId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v12

    .line 332
    :cond_0
    const-string/jumbo v0, "remote_offline;"

    .line 333
    array-length v14, v13

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v6, v14, :cond_7

    aget-object v5, v13, v6

    .line 334
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v1

    .line 335
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    .line 339
    const-string v0, ""

    :cond_1
    :goto_1
    move-object/from16 v17, v0

    goto :goto_2

    .line 341
    :cond_2
    const-string v0, "fresh;"

    goto :goto_1

    :goto_2
    add-int/lit8 v18, v16, 0x1

    .line 345
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v5, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 346
    invoke-virtual {v5, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v10

    .line 347
    :goto_4
    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v10, v5

    move-object/from16 v5, v17

    move/from16 v20, v6

    move-object/from16 v6, v19

    .line 345
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v19, v16, 0x2

    .line 348
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_6

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 349
    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v2, 0x1

    .line 350
    :goto_6
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v5, v17

    .line 348
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v18, v16, 0x3

    .line 351
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 352
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v5, v17

    .line 351
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v6, v16, 0x4

    .line 353
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 354
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v5, v17

    move v15, v6

    move-object/from16 v6, v19

    .line 353
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v0, v16, 0x5

    .line 355
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v10, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 356
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-direct {v7, v15, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v16, 0x6

    .line 357
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v10, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 358
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 357
    invoke-direct {v7, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v15, v16, 0x7

    .line 359
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    .line 360
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v5, v17

    .line 359
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v16, 0x8

    .line 361
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v10, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v0

    .line 362
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-direct {v7, v15, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v15, v16, 0x9

    .line 363
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v10, v2, v3}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v2

    .line 364
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v5, v17

    .line 363
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v0, v16, 0xa

    .line 365
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v10, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    .line 366
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-direct {v7, v15, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v16, v16, 0xb

    .line 367
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    invoke-virtual {v10, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    .line 368
    invoke-virtual {v10}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-direct {v7, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createExtendedMessagingRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v20, 0x1

    move-object/from16 v0, v17

    const/4 v10, 0x1

    goto/16 :goto_0

    .line 371
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryLookupUriId: no uris exist for lookup, returning empty response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_7
    return-object v12
.end method

.method queryOperatorRcsVersion(I)Landroid/database/Cursor;
    .locals 2

    .line 660
    const-string p0, "CapabilityProvider"

    const-string/jumbo v0, "queryOperatorRcsVersion"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 662
    new-instance p0, Landroid/database/MatrixCursor;

    const-string v0, "OperatorRcsVersion"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 664
    const-string/jumbo v0, "rcs_phase_version"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 665
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method queryOwnCaps(I)Landroid/database/Cursor;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 545
    const-string/jumbo v2, "queryOwnCaps"

    const-string v3, "CapabilityProvider"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    new-instance v8, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v8, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 550
    :try_start_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-interface {v2, v1}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v11
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_0

    .line 604
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    .line 556
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v2, :cond_1

    .line 557
    :try_start_2
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    move-object v12, v4

    .line 560
    :goto_0
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v13, v4

    goto :goto_1

    :cond_2
    const-string v2, "local_offline;"

    move-object v13, v2

    .line 561
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryOwnCaps: RCS additionalInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 564
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v1, :cond_4

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 565
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v15

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v14

    .line 566
    :goto_3
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 564
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 567
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_6

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 568
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v15

    goto :goto_5

    :cond_6
    :goto_4
    move v3, v14

    .line 569
    :goto_5
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 567
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 570
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 571
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 570
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 572
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 573
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 572
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtInGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 574
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 575
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 574
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 576
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 577
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 578
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotChatSessionRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 579
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createChatbotSlmRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 580
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createExtendedbotRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 581
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 582
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xa

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 581
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 583
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    const/16 v2, 0xb

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 584
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 585
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xc

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 584
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 586
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 587
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xd

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 586
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 588
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 589
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xe

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 588
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 590
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 591
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xf

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 590
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 592
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 593
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x10

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 592
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 594
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 595
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    move-object/from16 v1, p0

    move-object v4, v12

    move-object v6, v13

    .line 594
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 596
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 598
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x13

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPlugInRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 599
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    const/16 v2, 0x14

    invoke-direct {v0, v2, v1, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createExtendedMessagingRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 604
    :goto_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    .line 602
    :goto_7
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_8
    return-object v8

    .line 604
    :goto_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 605
    throw v0
.end method

.method queryRcsBigData(Ljava/util/List;I)Landroid/database/Cursor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 670
    const-string/jumbo v0, "queryRcsBigData"

    const-string v1, "CapabilityProvider"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 672
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "RemoteLegacyLatching"

    const-string v3, "PhoneNumber"

    const-string v4, "RemoteRcsStatus"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 675
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 678
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    .line 679
    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 682
    invoke-virtual {v3}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    .line 681
    invoke-interface {p0, v2, v3, p2}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-nez p0, :cond_0

    .line 684
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "queryRcsBigData: Capabilities not found for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v2

    .line 692
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 697
    const-string v2, "fresh;"

    goto :goto_0

    .line 699
    :cond_2
    const-string/jumbo v2, "remote_offline;"

    .line 702
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getLegacyLatching()Z

    move-result p0

    .line 704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queryRcsBigData: remoteRcsStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", remoteLegacyLatching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", phoneNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p0, :cond_3

    .line 707
    const-string/jumbo p0, "true"

    goto :goto_1

    :cond_3
    const-string p0, "false"

    :goto_1
    filled-new-array {v2, p0, p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 709
    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method queryRcsEnabledStatic(I)Landroid/database/Cursor;
    .locals 10

    .line 610
    const-string/jumbo v0, "queryRcsEnabledStatic"

    const-string v1, "CapabilityProvider"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 612
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "EnableRCS"

    const-string v3, "EnableRCSchat"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 616
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v4

    const-string v5, ", isEnableRcsChat = "

    const-string v6, "false"

    const-string/jumbo v7, "true"

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    .line 617
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v8, 0x1

    :cond_0
    move p0, v8

    goto :goto_0

    .line 619
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 621
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 622
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v2, :cond_2

    .line 623
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 624
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result v8

    .line 625
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result p0

    move v9, v8

    move v8, p0

    move p0, v9

    .line 632
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryRcsEnabledStatic: SimMobility, isEnableRcs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v8, :cond_3

    move-object p1, v7

    goto :goto_1

    :cond_3
    move-object p1, v6

    :goto_1
    if-eqz p0, :cond_4

    move-object v6, v7

    .line 635
    :cond_4
    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object p0

    .line 633
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    .line 640
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 641
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 642
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 646
    invoke-static {p0, v2, v8}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v2

    .line 647
    invoke-static {p0, v3, v8}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v8

    .line 648
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "queryRcsEnabledStatic: Customer, isEnableRcs = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move p0, v8

    move v8, v2

    goto :goto_3

    .line 650
    :cond_7
    const-string/jumbo p0, "queryRcsEnabledStatic: cscSettings is null, isEnableRcs = false, isEnableRcsChat = false"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move p0, v8

    :goto_3
    if-eqz v8, :cond_8

    move-object p1, v7

    goto :goto_4

    :cond_8
    move-object p1, v6

    :goto_4
    if-eqz p0, :cond_9

    move-object v6, v7

    .line 655
    :cond_9
    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object p0

    .line 653
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method querySipUri([Ljava/lang/String;Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;I)Landroid/database/Cursor;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "I)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p4

    .line 377
    const-string/jumbo v1, "querySipUri"

    const-string v9, "CapabilityProvider"

    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    new-instance v10, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$Projections;->SERVICE_PROJECTION:[Ljava/lang/String;

    invoke-direct {v10, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 381
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->getImsUriListFromQuery(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 382
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v12, 0x0

    .line 388
    :try_start_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mService:Lcom/sec/ims/options/ICapabilityService;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v3

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    invoke-interface {v2, v1, v3, v4, v8}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v13

    if-nez v13, :cond_1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySipUri: Capabilities not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v10

    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 394
    :cond_1
    array-length v14, v13

    const/4 v15, 0x0

    move v7, v15

    :goto_0
    if-ge v7, v14, :cond_a

    aget-object v6, v13, v7

    if-nez v6, :cond_2

    move/from16 v16, v7

    goto/16 :goto_7

    .line 409
    :cond_2
    const-string/jumbo v1, "querySipUri: return service info."

    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->hasNoRcsFeatures()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v5, v12

    goto :goto_2

    .line 418
    :cond_3
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getExpired()Z

    move-result v1

    .line 419
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 423
    const-string v1, ""

    :goto_1
    move-object v5, v1

    goto :goto_2

    .line 425
    :cond_4
    const-string v1, "fresh;"

    goto :goto_1

    .line 428
    :cond_5
    const-string/jumbo v1, "remote_offline;"

    goto :goto_1

    .line 431
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "querySipUri: RCS additionalInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v8, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 433
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    .line 434
    invoke-virtual {v6, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v15

    goto :goto_4

    :cond_7
    :goto_3
    move v3, v11

    .line 435
    :goto_4
    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v6}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object v11, v6

    move-object/from16 v6, v18

    move/from16 v16, v7

    move-object/from16 v7, v17

    .line 433
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createImRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 436
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-nez v1, :cond_9

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_STORE:I

    .line 437
    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    move v3, v15

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v3, 0x1

    .line 438
    :goto_6
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 436
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 439
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 440
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x2

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 439
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtHttpRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 441
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 442
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    .line 441
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSlmRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 443
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 444
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    .line 443
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeolocationPushRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 445
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 446
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 445
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createGeoPushViaSMSRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 447
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 448
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x6

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 447
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createFtSfGroupChatRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 449
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    .line 450
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    .line 449
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createIntegratedMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 451
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_STICKER:I

    invoke-virtual {v11, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v3

    .line 452
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x8

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 451
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createStickerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 453
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 454
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x9

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    .line 453
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCallComposerRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 455
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 456
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xa

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    .line 455
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedMapRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 457
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 458
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xb

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    .line 457
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createSharedSketchRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 459
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 460
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xc

    move-object/from16 v1, p0

    move-object/from16 v6, v18

    .line 459
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPostCallRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 461
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v3

    .line 462
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xd

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 461
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createPublicMsgRow(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 463
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    .line 464
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    .line 463
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createCancelMessageRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 465
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    invoke-virtual {v11, v1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v1

    .line 466
    invoke-virtual {v11}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    .line 465
    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->createExtendedMessagingRow(IZLjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v7, v16, 0x1

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v10

    .line 470
    :goto_8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 471
    invoke-virtual {v10}, Landroid/database/MatrixCursor;->close()V

    return-object v12

    .line 383
    :cond_b
    :goto_9
    const-string/jumbo v0, "querySipUri: no valid uri to request"

    invoke-static {v9, v8, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v10
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1047
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported for uri:"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method waitForUpdate(Lcom/sec/ims/util/ImsUri;)V
    .locals 4

    .line 233
    const-string v0, "CapabilityProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitForUpdate: remote uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 238
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->mAsyncResults:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
