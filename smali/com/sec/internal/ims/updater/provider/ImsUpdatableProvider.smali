.class public Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;
.super Landroid/content/ContentProvider;
.source "ImsUpdatableProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.imsservice.updatable"

.field public static final PATH_STUB_IMS_UPDATE_DEBUG:Ljava/lang/String; = "stub_debug"

.field private static final STUB_DEBUG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImsUpdatableProvider"


# instance fields
.field private mService:Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;

.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public static synthetic $r8$lambda$8IBQb2HkGVMDsLACJ0wUhYGJG7k(Landroid/content/ContentValues;Landroid/database/MatrixCursor$RowBuilder;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->lambda$query$0(Landroid/content/ContentValues;Landroid/database/MatrixCursor$RowBuilder;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mService:Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static synthetic lambda$query$0(Landroid/content/ContentValues;Landroid/database/MatrixCursor$RowBuilder;Ljava/lang/String;)V
    .locals 2

    .line 88
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsUpdatableProvider"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, p2, p0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    return-void
.end method

.method private queryStubImsUpdateSettings()Landroid/content/ContentValues;
    .locals 5

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isStgServer()Z

    move-result v1

    const-string v2, "0"

    const-string v3, "1"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string/jumbo v4, "stg_server"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isBypassStubApis()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v4, "bypass_stub_apis"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isDebugNotificationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v4, "debug_noti"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "fake_version"

    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFakeVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "fake_device_id"

    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFakeDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v1, "fake_target_ap"

    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFakeTargetAp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isSideloadingInstallEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v2, v3

    :cond_3
    const-string/jumbo v1, "sideloading_install"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mService:Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_update_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mService:Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;->getNextUpdateTime()Ljava/lang/String;

    move-result-object p0

    const-string v1, "next_update_time"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private updateStubImsUpdateSettings(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 4

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "enabled"

    const-string/jumbo v1, "value"

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "last_update_time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v3, "sideloading_install"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "stg_server"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v3, "next_update_time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_4
    const-string v3, "fake_device_id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "fake_target_ap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_6
    const-string v3, "fake_version"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_7
    const-string v3, "debug_noti"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    const-string v3, "bypass_stub_apis"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 202
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mService:Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;->setLastUpdateTime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 196
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 197
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->enableSideloadingInstall(Z)V

    goto/16 :goto_1

    .line 160
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 161
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->setStgServer(Z)V

    goto :goto_1

    .line 208
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mService:Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/updater/IImsUpdatableService;->setNextUpdateTime(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 185
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->setFakeDeviceId(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 191
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->setFakeTargetAp(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 179
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->setFakeVersion(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 173
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->enableDebugNotification(Z)V

    goto :goto_1

    .line 166
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/StubUtil;->setBypassStubApis(Z)V

    :cond_9
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7758e40d -> :sswitch_8
        -0x6db2319e -> :sswitch_7
        -0x49598a12 -> :sswitch_6
        -0x35dd4acd -> :sswitch_5
        -0x3bfe8c6 -> :sswitch_4
        0xc51fd37 -> :sswitch_3
        0x230b577c -> :sswitch_2
        0x6f2e9b61 -> :sswitch_1
        0x786ba85a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delete: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsUpdatableProvider"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 116
    const-string p0, ""

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .line 122
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "insert: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsUpdatableProvider"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 4

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 54
    const-string v1, "com.sec.imsservice.updatable"

    const-string/jumbo v2, "stub_debug"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "stub_debug/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    invoke-virtual {p0}, Landroid/content/ContentProvider;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/internal/ims/updater/ImsUpdateService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$1;-><init>(Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;)V

    const/16 p0, 0x41

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "query: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ImsUpdatableProvider"

    invoke-static {p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->queryStubImsUpdateSettings()Landroid/content/ContentValues;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/content/ContentValues;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 85
    new-instance p2, Landroid/database/MatrixCursor;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object p3

    .line 87
    new-instance p4, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p3}, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider$$ExternalSyntheticLambda0;-><init>(Landroid/content/ContentValues;Landroid/database/MatrixCursor$RowBuilder;)V

    invoke-interface {p1, p4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 136
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "update: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " -> "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ImsUpdatableProvider"

    invoke-static {p4, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p3, p0, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    if-nez p2, :cond_0

    .line 139
    const-string/jumbo p0, "update: ContentValues is null!"

    invoke-static {p4, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 145
    const-string/jumbo p0, "update: No last path segment!"

    invoke-static {p4, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 149
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/updater/provider/ImsUpdatableProvider;->updateStubImsUpdateSettings(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 151
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method
