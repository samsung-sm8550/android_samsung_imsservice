.class public Lcom/sec/internal/ims/settings/UserConfigStorage;
.super Ljava/lang/Object;
.source "UserConfigStorage.java"


# static fields
.field private static final KEY_LOADED:Ljava/lang/String; = "loaded"

.field private static final LOG_TAG:Ljava/lang/String; = "UserConfigStorage"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mLock:Ljava/lang/Object;

.field private mMnoname:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    .line 39
    const-string v0, "UserConfigStorage()"

    const-string v1, "UserConfigStorage"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    .line 43
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v0, 0x64

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private initUserConfiguration()V
    .locals 12

    .line 112
    const-string/jumbo v0, "user_config"

    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v2, "initUserConfiguration()"

    const-string v3, "UserConfigStorage"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    const-string v1, "DEFAULT"

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 119
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 120
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 125
    :try_start_0
    const-string v4, "configurations"

    invoke-static {v1, v4}, Lcom/sec/internal/helper/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v5, v4

    .line 127
    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "mnoname"

    const/4 v8, 0x1

    if-eq v6, v8, :cond_7

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_4

    .line 133
    const-string v10, "name"

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 134
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 135
    :cond_2
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 136
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 138
    :cond_3
    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 142
    :cond_4
    const-string v6, "default"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    .line 144
    iget-object v6, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 145
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_4

    .line 148
    :cond_6
    :goto_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 151
    :cond_7
    :goto_4
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/settings/UserConfigStorage;->insert(Landroid/content/ContentValues;)V

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 154
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string v3, "loaded"

    invoke-static {v1, v2, v0, v3, v8}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    invoke-static {v1, v2, v0, v7, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 158
    :goto_5
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v2, "initUserConfiguration Exception"

    invoke-virtual {v1, p0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 164
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v1, "Dump of UserConfigStorage:"

    const-string v2, "UserConfigStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public insert(Landroid/content/ContentValues;)V
    .locals 3

    .line 47
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v1, "insert()"

    const-string v2, "UserConfigStorage"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 48
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user_config"

    invoke-static {v0, p0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public isLoaded()Z
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "loaded"

    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public query([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 52
    const-string v0, "UserConfigStorage"

    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v2, "query()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string v2, "initUserConfig"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->initUserConfiguration()V

    .line 57
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user_config"

    invoke-static {v0, p0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getStringArray(ILandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 64
    new-instance p1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 65
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    return-object p1
.end method

.method public reset(Ljava/lang/String;)V
    .locals 7

    .line 78
    const-string v0, "UserConfigStorage"

    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    const-string p1, "UserConfigStorage"

    iget p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v1, "reset() sim not available"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_0

    .line 87
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user_config"

    const-string v4, "mnoname"

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v3, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnoname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", prevMnoName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 90
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 91
    iget v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user_config"

    const-string v6, "loaded"

    invoke-static {v2, v4, v5, v6, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    const-string/jumbo v3, "prevMnoName was empty, put it back again"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 94
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "mnoname"

    invoke-static {v1, p0, v2, v3, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    monitor-exit v0

    return-void

    .line 98
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    const-string v1, "UserConfigStorage"

    iget p0, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset() same mnoname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    monitor-exit v0

    return-void

    .line 103
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user_config"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->clear(ILandroid/content/Context;Ljava/lang/String;)V

    .line 104
    iget v1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user_config"

    const-string v5, "loaded"

    invoke-static {v1, v2, v4, v5, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/settings/UserConfigStorage;->mMnoname:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/UserConfigStorage;->initUserConfiguration()V

    .line 108
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
