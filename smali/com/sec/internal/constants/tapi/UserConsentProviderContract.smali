.class public Lcom/sec/internal/constants/tapi/UserConsentProviderContract;
.super Ljava/lang/Object;
.source "UserConsentProviderContract.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.internal.userconsentprovider"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EUCR_ACKNOWLEDGEMENT_ID:I = 0x3

.field public static final EUCR_ACKNOWLEDGEMENT_LABEL:Ljava/lang/String; = "ACKNOWLEDGEMENT"

.field public static final EUCR_NOTIFICATION_ID:I = 0x2

.field public static final EUCR_NOTIFICATION_LABEL:Ljava/lang/String; = "NOTIFICATION"

.field public static final EUCR_PERSISTENT_ID:I = 0x0

.field public static final EUCR_PERSISTENT_LABEL:Ljava/lang/String; = "PERSISTENT"

.field public static final EUCR_VOLATILE_ID:I = 0x1

.field public static final EUCR_VOLATILE_LABEL:Ljava/lang/String; = "VOLATILE"

.field public static final EULA_ID:I = 0x4

.field public static final EULA_LABEL:Ljava/lang/String; = "EULA"

.field public static final USER_CONSENT_STATE_ACCEPTED_ID:I = 0x0

.field public static final USER_CONSENT_STATE_REJECTED_ID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "content://com.sec.internal.userconsentprovider"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/tapi/UserConsentProviderContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
