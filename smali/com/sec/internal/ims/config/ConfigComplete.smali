.class public Lcom/sec/internal/ims/config/ConfigComplete;
.super Ljava/lang/Object;
.source "ConfigComplete.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ConfigComplete"


# instance fields
.field private mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field private final mContext:Landroid/content/Context;

.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 60
    iput-object p3, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 61
    iput-object p4, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method public static isIndexTag(Ljava/lang/String;)Z
    .locals 10

    .line 321
    const-string v8, "8"

    const-string v9, "9"

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    invoke-static/range {v0 .. v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getParamPath(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/lang/String;
    .locals 4

    .line 295
    const-string p0, ""

    if-eqz p2, :cond_3

    .line 296
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->readAll()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 298
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2f

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2}, Lcom/sec/internal/ims/config/ConfigComplete;->isIndexTag(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    nop

    :cond_3
    :goto_0
    return-object p0
.end method

.method public getProvisioningIntValue(Ljava/lang/String;I)I
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigComplete;->getParamPath(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 271
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getProvisioningStringValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigComplete;->getParamPath(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 244
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method handleAutoconfigurationActiveVersion(Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;I)V
    .locals 4

    .line 209
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v0

    .line 212
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    sget-object p0, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    const-string p1, "auto config result don\'t turn on rcs settings for CHN."

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 214
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 226
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p1, :cond_4

    .line 227
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 232
    sget-object p1, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    const-string p2, "disable RCS failed modify rcs_user_setting to RCS_ENABLED for SKT"

    invoke-static {p1, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_1

    .line 218
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 222
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {p1, p2, v0, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 225
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected handleAutoconfigurationComplete(ILjava/util/List;ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I",
            "Lcom/sec/internal/interfaces/ims/config/IWorkflow;",
            ")V"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAutoconfigurationComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 150
    sget-object p2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v5, p2, :cond_1

    if-eqz p4, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p4

    move-object v4, v0

    move v6, p3

    move v7, p1

    .line 153
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationVersion(Lcom/sec/internal/interfaces/ims/config/IWorkflow;Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;II)V

    const/4 p0, 0x1

    .line 154
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    const/4 p0, 0x0

    .line 155
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/config/params/ACSConfig;->setForceAcs(Z)V

    .line 156
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/config/params/ACSConfig;->setIsTriggeredByNrcr(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method handleAutoconfigurationVersion(Lcom/sec/internal/interfaces/ims/config/IWorkflow;Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;II)V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p5}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autoconfiguration Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 166
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "Since the version is 0, RCS services are filtered"

    invoke-virtual {p0, p5, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",VER:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",EC:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x13000002

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/16 p0, 0x3db

    if-eq p4, p0, :cond_9

    .line 170
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->disableRcsByAcs(Z)V

    goto/16 :goto_1

    .line 172
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    const/4 v2, -0x2

    const/4 v4, -0x1

    if-eq p4, v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-ne p4, v2, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p4, -0x3

    if-ne p1, p4, :cond_3

    .line 201
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->setRcsDormantMode(Z)V

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p1, v3, :cond_9

    .line 203
    invoke-virtual {p0, p2, p3, p5}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationActiveVersion(Lcom/sec/internal/ims/config/params/ACSConfig;Lcom/sec/internal/constants/Mno;I)V

    goto :goto_1

    .line 173
    :cond_4
    :goto_0
    const-string p4, "RCS services are disabled"

    invoke-static {v1, p5, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    sget-object p4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p3, p4, :cond_5

    .line 175
    sget-object p4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearToken(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 176
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->removeValidToken()V

    .line 177
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 179
    const-string p4, "Try deleteChatsForUnsubscribe for SKT"

    invoke-static {v1, p5, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-interface {p1, p5}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->deleteChatsForUnsubscribe(I)Ljava/util/concurrent/FutureTask;

    .line 185
    :cond_5
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 186
    const-string p0, "auto config result don\'t turn off rcs settings for CHN."

    invoke-static {v1, p5, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    invoke-virtual {p2, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->disableRcsByAcs(Z)V

    goto :goto_1

    .line 191
    :cond_6
    invoke-virtual {p2}, Lcom/sec/internal/ims/config/params/ACSConfig;->isTriggeredByNrcr()Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-eq p3, p1, :cond_7

    invoke-virtual {p3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    .line 192
    invoke-static {p1, v4, p5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p1

    if-eqz p1, :cond_8

    .line 195
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v2, p5}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    .line 198
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1, p5}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 205
    :cond_9
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    return-void
.end method

.method releasePermanentBlockforJibe(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 82
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 83
    const-string v1, "jibe"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    if-ge p6, v0, :cond_0

    .line 87
    sget-object v0, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "releasePermanentBlock: register is blocked, release"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByAcs(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected sendRCSAInfoToHQM(III)V
    .locals 4

    const/4 v0, 0x0

    if-gez p3, :cond_0

    .line 128
    sget-object v1, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRCSAInfoToHQM : phoneId is invaild "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v0

    :cond_0
    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-ne p2, v1, :cond_1

    move v0, v2

    .line 133
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    xor-int/2addr v0, v2

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ARST"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "AVER"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string p1, "ERRC"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "PROF"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ATRE"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->resetAcsTryReason(I)V

    .line 140
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "TDRE"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->resetTokenDeletedReason(I)V

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    const-string p1, "RCSA"

    invoke-static {p3, p0, p1, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public setProvisioningIntValue(Ljava/lang/String;II)I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p3

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 285
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/config/ConfigComplete;->getParamPath(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 287
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public setProvisioningStringValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p3

    .line 256
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 257
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/config/ConfigComplete;->getParamPath(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 259
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected setStateforACSComplete(IILjava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;I)V"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/sec/internal/ims/config/ConfigComplete;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStateforACSComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 71
    const-string v2, "RACV"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mContext:Landroid/content/Context;

    const-string v3, "DRCS"

    invoke-static {p2, v2, v3, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 73
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v8

    move v7, p4

    .line 75
    invoke-virtual/range {v1 .. v7}, Lcom/sec/internal/ims/config/ConfigComplete;->releasePermanentBlockforJibe(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 76
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p4

    invoke-interface {p4, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyAutoConfigDone(I)V

    .line 77
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p4

    const/4 v1, 0x1

    invoke-interface {p4, v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyConfigured(ZI)V

    move-object v1, p0

    .line 78
    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/config/ConfigComplete;->setStateforDualRegistration(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method setStateforDualRegistration(IILjava/util/List;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 97
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "jibe"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const-string v2, "mmtel"

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    const-string v2, "mmtel-video"

    invoke-virtual {v1, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :cond_2
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_3

    .line 100
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "RegisterTask setState: CONFIGURED"

    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 101
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    .line 102
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    :cond_4
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    if-eqz p4, :cond_0

    .line 105
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "autocofig is changed"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 108
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 109
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigComplete;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/4 v2, 0x1

    const-string v3, "AUTOCONFIG_CHANGED"

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method
