.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;
.super Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;
.source "SoftphoneServiceStub.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAirplaneModeIntentFilter:Landroid/content/IntentFilter;

.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mClients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field final mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mNetworkConnected:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClients(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNetworkConnected(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monUserSwitched(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->onUserSwitched(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mvalidateTokens(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->validateTokens(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 47
    invoke-direct {p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    .line 42
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeIntentFilter:Landroid/content/IntentFilter;

    .line 45
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnected:Z

    .line 95
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 116
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 52
    new-instance v3, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v4, 0x64

    invoke-direct {v3, p1, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 54
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 55
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 57
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeIntentFilter:Landroid/content/IntentFilter;

    .line 59
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "SoftphoneServiceStub(): registering mAirplaneModeReceiver"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->reloadAccounts()V

    .line 63
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->clearUnusedAddresses()V

    .line 65
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    sget-object v1, Lcom/sec/ims/extensions/Extensions$Intent;->ACTION_USER_SWITCHED:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub$UserSwitchReceiver-IA;)V

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private clearUnusedAddresses()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "clearUnusedAddresses()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->CONTENT_URI:Landroid/net/Uri;

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_id is null OR account_id =?"

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    .locals 3

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 262
    monitor-exit p0

    return-object v0

    .line 260
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot be found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 262
    monitor-exit p0

    throw p1
.end method

.method private onUserSwitched(I)V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitched(): newUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    .line 147
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 148
    iput p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 151
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 152
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onUserSwitch()V

    .line 153
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onUserSwitchedAway()V

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onUserSwitchedBack()V

    .line 157
    iget-boolean v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mNetworkConnected:Z

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onNetworkConnected()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private reloadAccounts()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "reloadAccounts()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildFunctionalAccountUri()Landroid/net/Uri;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 80
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActiveAccountUri()Landroid/net/Uri;

    move-result-object v0

    .line 81
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const/4 v2, 0x0

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateAccountStatus(Ljava/lang/String;II)V
    .locals 2

    int-to-long v0, p2

    .line 185
    invoke-static {p1, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 186
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 187
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string/jumbo v0, "status"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private validateTokens(I)V
    .locals 12

    .line 192
    const-string v0, ":"

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateTokens(): newUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    int-to-long v1, p1

    .line 193
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildPendingAccountUri(J)Landroid/net/Uri;

    move-result-object v4

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "validateTokens found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " records"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 204
    new-instance v2, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string/jumbo v3, "softphone"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;-><init>(Ljava/lang/String;)V

    .line 206
    const-string v3, "AES"

    invoke-static {v3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getInstance(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    move-result-object v3

    .line 207
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    const-string v4, "account_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    .line 209
    invoke-direct {p0, v7, p1, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->updateAccountStatus(Ljava/lang/String;II)V

    .line 210
    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;

    move-result-object v4

    if-nez v4, :cond_1

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot obtain secret key for account: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 213
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    .line 216
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "tguard_token"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "tguard_appid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "environment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 222
    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encodedTGaurdToken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v9

    .line 225
    invoke-virtual {v3, v6, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v4

    .line 226
    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodedTGaurdToken: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", decodedTGaurdAppId: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClientId(Ljava/lang/String;)I

    move-result v5

    .line 230
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v5

    .line 234
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v8, 0x1

    move-object v6, v9

    move-object v9, v4

    .line 230
    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->restoreAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    goto/16 :goto_0

    .line 238
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 194
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void
.end method


# virtual methods
.method public deleteAddress(IJ)V
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "AddressId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deleteAddress(J)V

    return-void
.end method

.method public deregisterProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 0

    .line 296
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-static {}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterProgressListener(I)V

    return-void
.end method

.method public deregisterSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-static {}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSupplementaryServiceListener(I)V

    return-void
.end method

.method public dump(Lcom/sec/internal/log/IndentingPrintWriter;)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->increaseIndent()V

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 247
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->decreaseIndent()V

    const/4 v0, 0x0

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 251
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public exchangeForAccessToken(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 301
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object v0

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    return-void
.end method

.method public getCallForwardingInfo(I)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo()V

    return-void
.end method

.method public getCallWaitingInfo(I)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo()V

    return-void
.end method

.method public declared-synchronized getClientId(Ljava/lang/String;)I
    .locals 6

    monitor-enter p0

    .line 270
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 272
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 281
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SoftphoneClient-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 283
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mClients:Landroid/util/SparseArray;

    new-instance v4, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v4, p1, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientId(): create new client SoftphoneClient-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 286
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public getDeviceList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 366
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getDeviceList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTermsConditions(I)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions()V

    return-void
.end method

.method public logOut(I)V
    .locals 0

    .line 326
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    return-void
.end method

.method public provisionAccount(I)V
    .locals 0

    .line 306
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount()V

    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-static {}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V

    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-static {}, Lcom/sec/vsim/attsoftphone/ISoftphoneService$Stub;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V

    return-void
.end method

.method public setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V

    return-void
.end method

.method public setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 0

    .line 351
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    return-void
.end method

.method public tryDeregister(I)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryDeregister()V

    return-void
.end method

.method public tryRegister(I)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    return-void
.end method

.method public validateE911Address(IIZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneServiceStub;->getClient(I)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V

    return-void
.end method
