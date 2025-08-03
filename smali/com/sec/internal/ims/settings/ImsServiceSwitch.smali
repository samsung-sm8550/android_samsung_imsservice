.class public Lcom/sec/internal/ims/settings/ImsServiceSwitch;
.super Ljava/lang/Object;
.source "ImsServiceSwitch.java"


# static fields
.field protected static final IMS_SETTINGS_UPDATED:Ljava/lang/String; = "android.intent.action.IMS_SETTINGS_UPDATED"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceSwitch"

.field protected static final SP_KEY_MNONAME:Ljava/lang/String; = "mnoname"

.field private static final mImsServiceSwitchTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImsVolteSwitchTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected isLoded:Z

.field protected mContext:Landroid/content/Context;

.field protected mDefaultSms:Z

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mPhoneId:I

.field protected mRcsEnabled:Z

.field protected mRcsServiceSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mSsEnabled:Z

.field protected mVoLteEnabled:Z

.field protected mVolteServiceSwitch:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;


# direct methods
.method public static synthetic $r8$lambda$fJhzvbT-cDwZ9tv1uyu9V1edq3w(Lcom/sec/internal/ims/settings/ImsServiceSwitch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->lambda$getSwitchDump$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mOQ-__3c4QkRDXoWTDZ3VzbRSjE(Lcom/sec/internal/ims/settings/ImsServiceSwitch;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->lambda$getSwitchDump$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tH-Ivn3iGYaepaL5mOzSjTfnozE(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->lambda$dumpServiceSwitch$0(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsVolteSwitchTable:Ljava/util/HashMap;

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    .line 243
    const-string v2, "mmtel"

    const-string v3, "enableServiceVolte"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "mmtel-video"

    const-string v4, "enableServiceVilte"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v2, "smsip"

    const-string v5, "enableServiceSmsip"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v2, "datachannel"

    const-string v6, "enableServiceDatachannel"

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "enableIms"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    const-string v0, "enableServiceVowifi"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v0, "enableServiceRcs"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v0, "enableServiceRcschat"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    .line 42
    iput v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isLoded:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mDefaultSms:Z

    .line 47
    iput-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->isLoded:Z

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    .line 56
    iput p2, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 57
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    return-void
.end method

.method public static getImsServiceSwitchTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsServiceSwitchTable:Ljava/util/List;

    return-object v0
.end method

.method public static getSimMobilityImsSwitchSetting(Landroid/content/Context;I)Landroid/content/ContentValues;
    .locals 6

    .line 134
    const-string v0, "ImsServiceSwitch"

    const-string v1, "getSimMobilityImsSwitchSetting according to imsswitch"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 136
    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {p1, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 139
    const-string p1, "enableServiceVilte"

    const-string v1, "enableServiceVolte"

    const-string v3, "enableIms"

    const-string v4, "enableServiceVowifi"

    const-string v5, "enableServiceSmsip"

    filled-new-array {v3, v4, v5, p1, v1}, [Ljava/lang/String;

    move-result-object p1

    move v1, v2

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 146
    aget-object v3, p1, v1

    .line 147
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getVolteServiceSwitchTable()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mImsVolteSwitchTable:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getXasImsSwitchSetting()Landroid/content/ContentValues;
    .locals 3

    .line 269
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 271
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "enableIms"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 272
    const-string v2, "enableServiceVolte"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 273
    const-string v2, "enableServiceVowifi"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 274
    const-string v2, "enableServiceSmsip"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 275
    const-string v2, "enableServiceRcs"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 276
    const-string v2, "enableServiceRcschat"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static synthetic lambda$dumpServiceSwitch$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getSwitchDump$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 191
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 192
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$getSwitchDump$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    .line 197
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    .line 198
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private makeInstance(Lcom/sec/internal/constants/Mno;I)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceSwitch"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance p1, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    goto :goto_1

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    new-instance p1, Lcom/sec/internal/ims/settings/ImsServiceSwitchKor;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchKor;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isJpn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 69
    new-instance p1, Lcom/sec/internal/ims/settings/ImsServiceSwitchJpn;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchJpn;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    goto :goto_1

    .line 71
    :cond_3
    new-instance p1, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    goto :goto_1

    .line 65
    :cond_4
    :goto_0
    new-instance p1, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    :goto_1
    return-void
.end method


# virtual methods
.method public doInit()V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->doInit()V

    return-void
.end method

.method public dump()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->dump()V

    return-void
.end method

.method protected dumpServiceSwitch()V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpServiceSwitch: volte ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] rcs ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpServiceSwitch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    .line 180
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 179
    invoke-static {v3, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v3, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda0;-><init>()V

    .line 181
    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v3, ", "

    .line 182
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method

.method public enable(Ljava/lang/String;Z)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->enable(Ljava/lang/String;Z)V

    return-void
.end method

.method public enableRcs(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->enableRcs(Z)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",RCS SW:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x10030030

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method public enableVoLte(Z)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->enableVoLte(Z)V

    return-void
.end method

.method public getRcsUserSetting()I
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->getRcsUserSetting()I

    move-result p0

    return p0
.end method

.method protected getSwitchDump()Ljava/lang/String;
    .locals 7

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getVoLteServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitch;)V

    .line 191
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v4, ","

    .line 193
    const-string v5, ""

    const-string v6, "_"

    invoke-static {v5, v6, v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-boolean v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v1, :cond_1

    move-object v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/settings/ImsServiceSwitch;)V

    .line 197
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 199
    invoke-static {v5, v6, v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoCallType(Ljava/lang/String;)I
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->getVideoCallType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVoiceCallType(Ljava/lang/String;)I
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->getVoiceCallType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isDefaultMessageAppInUse()Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isDefaultMessageAppInUse()Z

    move-result p0

    return p0
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isImsEnabled()Z
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isImsEnabled()Z

    move-result p0

    return p0
.end method

.method public isImsSwitchEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 286
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 288
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabled()Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isRcsEnabled()Z

    move-result p0

    return p0
.end method

.method public isRcsSwitchEnabled()Z
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isRcsSwitchEnabled()Z

    move-result p0

    return p0
.end method

.method public isVoLteEnabled()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->isVoLteEnabled()Z

    move-result p0

    return p0
.end method

.method protected saveImsSwitch(Landroid/content/ContentValues;)V
    .locals 4

    .line 204
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 206
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 208
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getImsServiceSwitchTable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 209
    invoke-static {p1, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 212
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRcsUserSetting(I)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->setRcsUserSetting(I)V

    return-void
.end method

.method public setVideoCallType(Ljava/lang/String;I)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->setVideoCallType(Ljava/lang/String;I)V

    return-void
.end method

.method public setVoiceCallType(Ljava/lang/String;I)V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->setVoiceCallType(Ljava/lang/String;I)V

    return-void
.end method

.method public unregisterObserver()V
    .locals 0

    .line 282
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->unregisterObserver()V

    return-void
.end method

.method public updateServiceSwitch(Landroid/content/ContentValues;)V
    .locals 2

    .line 76
    const-string v0, "mnoname"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iget v1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->makeInstance(Lcom/sec/internal/constants/Mno;I)V

    .line 77
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->updateServiceSwitch(Landroid/content/ContentValues;)V

    .line 79
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->dumpServiceSwitch()V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",UPDATE:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->getSwitchDump()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x1003002f

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method public updateSwitchByDynamicUpdate()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->sInstance:Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;->loadImsSwitchFromResource()V

    return-void
.end method
