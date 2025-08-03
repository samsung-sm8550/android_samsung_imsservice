.class public Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;
.super Ljava/lang/Object;
.source "CmcAccessTokenStorage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcAccessTokenStorage"


# instance fields
.field private mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    .line 18
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mContext:Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->initFromPref()V

    return-void
.end method

.method private getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .line 35
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mContext:Landroid/content/Context;

    const-string v1, "cmcaccount"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private initFromPref()V
    .locals 4

    .line 23
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    const-string v1, "accesstoken"

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    .line 24
    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "saurl"

    const-string/jumbo v3, "us-auth2.samsungosp.comus-aut"

    .line 25
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    .line 26
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->LOG_TAG:Ljava/lang/String;

    const-string v0, "initFromPref:"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePref()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "updatePref: sp is null"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 57
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "accesstoken"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "saurl"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePref: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->getToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasSameToken(Ljava/lang/String;)Z
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public update(Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->mCmcAccessToken:Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage$CmcAccessToken;

    .line 48
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccessTokenStorage;->updatePref()V

    return-void
.end method
