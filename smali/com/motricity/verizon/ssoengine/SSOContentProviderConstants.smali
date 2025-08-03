.class public abstract Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;
.super Ljava/lang/Object;
.source "SSOContentProviderConstants.java"


# static fields
.field public static final AUTHORITIES:[Ljava/lang/String;

.field public static final LTE_FEATURES:[Ljava/lang/String;

.field public static final OFFICIAL_IDENTITY_PACKAGES:[Ljava/lang/String;

.field public static final OFFICIAL_SIGNING_CERT_SHA1:[Ljava/lang/String;

.field public static final OFFICIAL_TOKEN_PACKAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 111
    const-string v0, "com.verizon.loginclient"

    const-string v1, "com.verizon.services.loginclient"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->AUTHORITIES:[Ljava/lang/String;

    .line 120
    const-string v0, "com.verizon.loginengine.unbranded"

    const-string v1, "com.motricity.verizon.ssodownloadable"

    const-string v2, "com.motricity.verizon.ssoengine"

    const-string v3, "com.verizon.mips.services"

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_TOKEN_PACKAGES:[Ljava/lang/String;

    .line 132
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_IDENTITY_PACKAGES:[Ljava/lang/String;

    .line 142
    const-string v0, "0B:A7:6D:BD:55:0A:4C:76:68:BD:7C:85:60:C1:2D:AF:95:14:CC:02"

    const-string v1, "89:F8:F2:11:15:3C:A6:BB:DE:56:4C:8F:7F:17:2D:72:06:8F:A5:66"

    const-string v2, "A1:F6:F0:8B:5D:91:99:55:DD:51:DA:94:88:38:87:14:29:B1:E9:36"

    const-string v3, "03:FE:29:EF:A0:6C:0B:D8:64:3A:A1:A7:C3:EC:91:A1:A6:57:00:E6"

    const-string v4, "25:FF:90:5A:66:42:E5:3A:58:D6:00:F2:3C:01:E5:8D:23:63:B2:3F"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->OFFICIAL_SIGNING_CERT_SHA1:[Ljava/lang/String;

    .line 260
    const-string v0, "com.vzw.telephony.lte"

    const-string v1, "com.vzw.telephony.ehrpd"

    const-string v2, "com.verizon.hardware.telephony.lte"

    const-string v3, "com.verizon.hardware.telephony.ehrpd"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motricity/verizon/ssoengine/SSOContentProviderConstants;->LTE_FEATURES:[Ljava/lang/String;

    return-void
.end method
