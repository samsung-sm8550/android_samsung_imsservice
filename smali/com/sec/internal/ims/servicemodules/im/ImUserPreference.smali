.class public Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
.super Ljava/lang/Object;
.source "ImUserPreference.java"


# static fields
.field private static final FT_AUTO_ACCEPT_SIM1:Ljava/lang/String; = "FT_AUTO_ACCEPT"

.field private static final FT_AUTO_ACCEPT_SIM2:Ljava/lang/String; = "FT_AUTO_ACCEPT_SIM2"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "im_user_prefs"

.field private static final USER_ALIAS:Ljava/lang/String; = "USER_ALIAS"

.field private static final USER_ALIAS_SIM1:Ljava/lang/String; = "USER_ALIAS_SIM1"

.field private static final USER_ALIAS_SIM2:Ljava/lang/String; = "USER_ALIAS_SIM2"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/im/ImUserPreference-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;-><init>()V

    return-void
.end method

.method private getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 113
    const-string p0, "FT_AUTO_ACCEPT_SIM2"

    goto :goto_0

    :cond_0
    const-string p0, "FT_AUTO_ACCEPT"

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
    .locals 1

    .line 43
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    return-object v0
.end method

.method private getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    .line 101
    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 103
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 107
    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 109
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getUserAliasPrefByPhoneId(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 117
    const-string p0, "USER_ALIAS_SIM2"

    goto :goto_0

    :cond_0
    const-string p0, "USER_ALIAS_SIM1"

    :goto_0
    return-object p0
.end method

.method private persist(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 85
    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 88
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    const-string p0, "im_user_prefs"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 95
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 96
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getFtAutAccept(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFtAutAccept(Landroid/content/Context;I)I
    .locals 2

    .line 59
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p2, 0x0

    .line 62
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUserAlias(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    .line 71
    const-string v0, "USER_ALIAS"

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "USER_ALIAS_SIM1"

    invoke-direct {p0, p1, v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    const-string v5, "USER_ALIAS_SIM2"

    invoke-direct {p0, p1, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 75
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-direct {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1, v5, v2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getUserAliasPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setFtAutAccept(Landroid/content/Context;II)V
    .locals 1

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 50
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAcceptPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setUserAlias(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getUserAliasPrefByPhoneId(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->persist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
