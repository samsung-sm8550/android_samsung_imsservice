.class public Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;
.super Landroid/content/ContentProvider;
.source "EntitlementContentProvider.java"


# static fields
.field private static final AKA_TOKEN:Ljava/lang/String; = "aka_token"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlement.provider"

.field private static final RETRIEVE_AKA_TOKEN:I = 0x1

.field private static final RETRIEVE_VOWIFI_ENTITLEMENT_REQUIRED:I = 0x2

.field private static final RETRIEVE_VOWIFI_ENTITLEMENT_STATUS:I = 0x3

.field private static final SLOT_ID:Ljava/lang/String; = "slot"

.field private static final VOWIFI_ENTITLEMENT_REQUIRED:Ljava/lang/String; = "vowifi_entitlement_required"

.field private static final VOWIFI_ENTITLEMENT_STATUS:Ljava/lang/String; = "vowifi_entitlement_status"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const-class v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 49
    const-string v1, "aka_token"

    const/4 v2, 0x1

    const-string v3, "com.samsung.ims.entitlement.provider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    const-string/jumbo v1, "vowifi_entitlement_required"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    const-string/jumbo v1, "vowifi_entitlement_status"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private activateSimDevice(I)V
    .locals 3

    .line 100
    sget-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "activateSimDevice()"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "Nsds"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Nsdsconfig"

    .line 104
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 106
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 107
    const-string/jumbo v1, "retrieve aka token for config"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const-string v1, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "device_event_type"

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v1, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 115
    :cond_1
    const-string/jumbo v1, "retrieve aka token for nsds"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "retrieve_aka_token"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private getAkaToken(I)Landroid/database/Cursor;
    .locals 3

    .line 124
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->supportEntitlementSlot(I)Z

    move-result v1

    const-string v2, "NotSupported"

    if-nez v1, :cond_0

    goto :goto_2

    .line 128
    :cond_0
    const-string v1, "Nsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Nsdsconfig"

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    const-string/jumbo p0, "ts43"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string/jumbo p0, "nsds_eur"

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 139
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 140
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->isEntitlementRequired(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getAkaToken(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 130
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_4

    .line 131
    const-string v0, ""

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getAkaToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 135
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->activateSimDevice(I)V

    const-string p0, "InProgress"

    move-object v2, p0

    goto :goto_2

    :cond_5
    move-object v2, v0

    .line 150
    :cond_6
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAkaToken(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    new-instance p0, Landroid/database/MatrixCursor;

    const-string p1, "aka_token"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 152
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private getVoWiFiEntitlementStatus(I)Landroid/database/Cursor;
    .locals 4

    .line 185
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "vowifi_entitlement_status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->isEntitlementRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->getVoWiFiEntitlementStatus(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 199
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoWiFiEntitlementStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private isVoWiFiEntitlementRequired(I)Landroid/database/Cursor;
    .locals 4

    .line 167
    new-instance p0, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "vowifi_entitlement_required"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 171
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->isEntitlementRequired(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoWiFiEntitlementRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private supportEntitlementSlot(I)Z
    .locals 3

    .line 157
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigServer(I)Ljava/lang/String;

    move-result-object p0

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "supportEntitlementSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 162
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "supportEntitlementSlot : Not Support"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 61
    const-string/jumbo p2, "slot"

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 62
    sget-object p3, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "query uri:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p2, p4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    sget-object p3, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->getVoWiFiEntitlementStatus(I)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->isVoWiFiEntitlementRequired(I)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/EntitlementContentProvider;->getAkaToken(I)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
