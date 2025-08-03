.class public Lcom/sec/internal/ims/aec/persist/AECStorage;
.super Ljava/lang/Object;
.source "AECStorage.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsPushMsgStatus:Z

.field private final mPhoneId:I

.field protected mProviderSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSharedPreference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mIsPushMsgStatus:Z

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mContext:Landroid/content/Context;

    .line 22
    iput p2, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mPhoneId:I

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "aec_result_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mSharedPreference:Ljava/lang/String;

    .line 24
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/aec/persist/ProviderSettings;->getSettingMap(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    return-void
.end method

.method private declared-synchronized getIntValue(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 36
    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method private getServiceFlowURL()Ljava/lang/String;
    .locals 1

    .line 279
    const-string/jumbo v0, "root/application/vowifi/serviceflow_url"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getServiceFlowUserData()Ljava/lang/String;
    .locals 1

    .line 283
    const-string/jumbo v0, "root/application/vowifi/serviceflow_userdata"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mSharedPreference:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getVoLTEMessageForIncompatible()Ljava/lang/String;
    .locals 1

    .line 217
    const-string/jumbo v0, "root/application/volte/messageforincompatible"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized setMap(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getAkaToken()Ljava/lang/String;
    .locals 1

    .line 163
    const-string/jumbo v0, "root/token/token"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 3

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    const-string v1, "ap2003"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v1

    const-string v2, ","

    if-eqz v1, :cond_2

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_1
    const-string v1, "ap2004"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForSMSoIp()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :cond_3
    const-string p0, "ap2005"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultEntitlement()Ljava/lang/String;
    .locals 2

    .line 419
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, "incompatible"

    if-nez p0, :cond_0

    return-object v0

    .line 422
    :cond_0
    const-string v1, "default_entitlement_status"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDomainFromImpi()Z
    .locals 1

    .line 290
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_0
    const-string v0, "entitlement_domain_from_impi"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementDomain()Ljava/lang/String;
    .locals 2

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 321
    :cond_0
    const-string v1, "entitlement_domain"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEntitlementForSMSoIp()Z
    .locals 1

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_0
    const-string v0, "entitlement_for_smsoip"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoLte()Z
    .locals 1

    .line 391
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 394
    :cond_0
    const-string v0, "entitlement_for_volte"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementForVoWiFi()Z
    .locals 1

    .line 398
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 401
    :cond_0
    const-string v0, "entitlement_for_vowifi"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementInitFromApp()Z
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 387
    :cond_0
    const-string v0, "entitlement_init_from_app"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEntitlementPath()Ljava/lang/String;
    .locals 2

    .line 332
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 335
    :cond_0
    const-string v1, "entitlement_path"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEntitlementPort()Ljava/lang/String;
    .locals 2

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 328
    :cond_0
    const-string v1, "entitlement_port"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getEntitlementVersion()Ljava/lang/String;
    .locals 2

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, "1.0"

    if-nez p0, :cond_0

    return-object v0

    .line 307
    :cond_0
    const-string v1, "entitlement_version"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getHttpResponse()I
    .locals 1

    .line 167
    const-string/jumbo v0, "root/response"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 159
    const-string/jumbo v0, "root/imsi"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotifAction()Ljava/lang/String;
    .locals 2

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 365
    :cond_0
    const-string v1, "notif_action"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 366
    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getNotifIgnoreTimestamp()Z
    .locals 1

    .line 370
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 373
    :cond_0
    const-string v0, "notif_ignore_timestamp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getNotifSenderId()Ljava/lang/String;
    .locals 2

    .line 355
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 358
    :cond_0
    const-string v1, "notif_senderid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getNotifToken()Ljava/lang/String;
    .locals 1

    .line 183
    const-string/jumbo v0, "root/push-notif-token"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPsDataOffExempt()Z
    .locals 1

    .line 377
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 380
    :cond_0
    const-string/jumbo v0, "ps_data_off_exempt"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getSMSoIPEntitlementStatus()I
    .locals 1

    .line 228
    const-string/jumbo v0, "root/application/smsoip/entitlementstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getSNIInHeader()Z
    .locals 1

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_0
    const-string/jumbo v0, "sni_in_header"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected getServerVendor()Ljava/lang/String;
    .locals 2

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 443
    :cond_0
    const-string/jumbo v1, "server_vendor"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStoredConfiguration()Landroid/os/Bundle;
    .locals 3

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string/jumbo v1, "phoneId"

    iget v2, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string/jumbo v1, "version"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v1, "http_response"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string/jumbo v1, "volteEntitlementstatus"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string/jumbo v1, "volteMessageForIncompatible"

    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEMessageForIncompatible()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "vowifiActivationMode"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v1, "vowifiEntitlementstatus"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string/jumbo v1, "prov_status"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiProvStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string/jumbo v1, "tc_status"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiTcStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string v1, "addr_status"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAddrStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    const-string/jumbo v1, "serviceflow_url"

    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getServiceFlowURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "serviceflow_userdata"

    invoke-direct {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getServiceFlowUserData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "vowifiMessageForIncompatible"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiMessageForIncompatible()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "smsoipEntitlementstatus"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSMSoIPEntitlementStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEAutoOn()Z

    move-result v1

    const-string/jumbo v2, "volteAutoOn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAutoOn()Z

    move-result p0

    const-string/jumbo v1, "vowifiAutoOn"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 187
    const-string/jumbo v0, "root/timestamp"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTokenValidity()I
    .locals 1

    .line 195
    const-string/jumbo v0, "root/token/validity"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVersion()I
    .locals 1

    .line 175
    const-string/jumbo v0, "root/vers/version"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string p0, "0"

    .line 179
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVersionValidity()I
    .locals 1

    .line 191
    const-string/jumbo v0, "root/vers/validity"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoLTEAutoOn()Z
    .locals 1

    .line 426
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 429
    :cond_0
    const-string/jumbo v0, "volte_auto_on"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getVoLTEEntitlementStatus()I
    .locals 1

    .line 199
    const-string/jumbo v0, "root/application/volte/entitlementstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVoLTEEntitlementStatus(I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 204
    sget-object p1, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->LTE_4G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/*/home/entitlementstatus"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 206
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->LTE_4G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/*/roaming/entitlementstatus"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVoNrEntitlementStatus(I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 211
    sget-object p1, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->NG_RAN_5G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/*/home/entitlementstatus"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 213
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->NG_RAN_5G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/*/roaming/entitlementstatus"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getVoNrNetworkVoiceIRatCapability(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 222
    sget-object p1, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->NG_RAN_5G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/*/home/networkvoiceiratcapability"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 224
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->ALL:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->NG_RAN_5G:Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/aec/AECNamespace$AccessType;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "root/application/*/roaming/networkvoiceiratcapability"

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVoWiFiActivationMode()I
    .locals 4

    .line 232
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiEntitlementStatus()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiProvStatus()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiTcStatus()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAddrStatus()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiActivationMode(IIII)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiActivationMode(IIII)I
    .locals 5

    .line 256
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVersion()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 260
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementInitFromApp()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mIsPushMsgStatus:Z

    if-eqz v4, :cond_1

    .line 261
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setPushMsgStatus(Z)V

    return v1

    :cond_1
    if-eqz p3, :cond_4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    if-eq p3, v2, :cond_3

    if-eq p4, v2, :cond_3

    if-ne p2, v2, :cond_5

    :cond_3
    return v3

    :cond_4
    :goto_0
    return v0

    :cond_5
    if-ne p1, v3, :cond_9

    if-eq p2, v3, :cond_6

    if-ne p2, v0, :cond_9

    :cond_6
    if-eq p3, v3, :cond_7

    if-ne p3, v0, :cond_9

    :cond_7
    if-eq p4, v3, :cond_8

    if-ne p4, v0, :cond_9

    :cond_8
    return v2

    :cond_9
    :goto_1
    return v1
.end method

.method protected getVoWiFiAddrStatus()I
    .locals 1

    .line 252
    const-string/jumbo v0, "root/application/vowifi/addrstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiAutoOn()Z
    .locals 1

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 436
    :cond_0
    const-string/jumbo v0, "vowifi_auto_on"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getVoWiFiEntitlementStatus()I
    .locals 1

    .line 236
    const-string/jumbo v0, "root/application/vowifi/entitlementstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiMessageForIncompatible()Ljava/lang/String;
    .locals 1

    .line 240
    const-string/jumbo v0, "root/application/vowifi/messageforincompatible"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVoWiFiProvStatus()I
    .locals 1

    .line 244
    const-string/jumbo v0, "root/application/vowifi/provstatus"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getVoWiFiTcStatus()I
    .locals 1

    .line 248
    const-string/jumbo v0, "root/application/vowifi/tc_status"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isSupportOnlyVoWiFibyUserAction()Z
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoWiFi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementForVoLte()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementInitFromApp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoWiFiAutoOn()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public setAkaToken(Ljava/lang/String;)V
    .locals 1

    .line 90
    const-string/jumbo v0, "root/token/token"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConfiguration(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setMap(Ljava/util/Map;)V

    return-void
.end method

.method public setDefaultValues(Ljava/lang/String;)V
    .locals 4

    .line 69
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getDefaultEntitlement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 70
    const-string/jumbo v1, "root/vers/version"

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo p1, "root/vers/validity"

    const-string v1, "0"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string/jumbo p1, "root/token/token"

    const-string v2, ""

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo p1, "root/token/validity"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo p1, "root/push-notif-token"

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string p1, "1"

    if-eqz v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string/jumbo v3, "root/application/volte/entitlementstatus"

    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 76
    :goto_1
    const-string/jumbo v3, "root/application/vowifi/entitlementstatus"

    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 78
    const-string/jumbo v2, "root/application/vowifi/provstatus"

    const-string v3, "2"

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "root/application/vowifi/tc_status"

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string/jumbo v2, "root/application/vowifi/addrstatus"

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    move-object v1, p1

    .line 82
    :cond_3
    const-string/jumbo p1, "root/application/smsoip/entitlementstatus"

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEntitlementVersion(Ljava/lang/String;)V
    .locals 1

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mProviderSettings:Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    .line 314
    :cond_0
    const-string v0, "entitlement_version"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHttpResponse(I)V
    .locals 1

    .line 94
    const-string/jumbo v0, "root/response"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 1

    .line 86
    const-string/jumbo v0, "root/imsi"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNotifToken(Ljava/lang/String;)V
    .locals 1

    .line 102
    const-string/jumbo v0, "root/push-notif-token"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPushMsgStatus(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/persist/AECStorage;->mIsPushMsgStatus:Z

    return-void
.end method

.method public setSMSoIPEntitlementStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string/jumbo v0, "root/application/smsoip/entitlementstatus"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    .line 98
    const-string/jumbo v0, "root/vers/version"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVoLteEntitlementStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 106
    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string/jumbo v0, "root/application/volte/entitlementstatus"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVoWiFiEntitlementStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 110
    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string/jumbo v0, "root/application/vowifi/entitlementstatus"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
