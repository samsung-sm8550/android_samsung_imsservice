.class public Lcom/sec/internal/ims/config/ConfigModule;
.super Landroid/os/Handler;
.source "ConfigModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IConfigModule;


# static fields
.field private static final AUTOCONF_TAG:Ljava/lang/String; = "Autoconf"

.field static final AUTO_CONFIG_IMS_PDN:I = 0x1

.field static final ERROR_WORKFLOW_IS_NULL:I = 0x2c4

.field static final LOCAL_CONFIG_VERS:I = 0x3b

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigModule"


# instance fields
.field m403ForbiddenCounter:I

.field mAcsEncrNeededParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallState:I

.field mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

.field mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

.field private final mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIidToken:Ljava/lang/String;

.field mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

.field mIsConfigModuleBootUp:Z

.field mIsMessagingReady:Z

.field mIsRcsEnabled:Z

.field mJibeRcsAutoConfig:Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;

.field private mListener:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/ims/IAutoConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMobileNetwork:Z

.field private mMsisdnNumber:Ljava/lang/String;

.field mNeedRetryOverNetwork:Z

.field mNeedRetryOverWifi:Z

.field private mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/Network;",
            ">;>;"
        }
    .end annotation
.end field

.field mOnCompleteList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPendingAutoComplete:Z

.field mPendingAutoConfig:Z

.field mPendingDeregi:Z

.field mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVerificationCode:Ljava/lang/String;

.field mWifiNetwork:Z

.field mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

.field mWorkflowThreadList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Aoy-ndJQSTFwz-b2SGXet-rwug0(Lcom/sec/internal/ims/config/ConfigModule;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->lambda$dumpEncrAcsDb$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/config/ConfigModule;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 169
    invoke-direct/range {p0 .. p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 114
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    .line 115
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 116
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 117
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 118
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    const/4 v2, 0x0

    .line 119
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 120
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    .line 124
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 125
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 126
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    .line 127
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    .line 129
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 130
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 131
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 132
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    .line 133
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsMessagingReady:Z

    .line 135
    iput v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    const/4 v3, 0x1

    .line 141
    iput v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 142
    iput v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    .line 149
    const-string v2, "capdiscoveryallowedprefixes"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v2, "capinfoexpiry"

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v2, "defaultdisc"

    .line 151
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v2, "disableInitialAddressBookScan"

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v2, "nonRCScapInfoExpiry"

    .line 153
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "pollingperiod"

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v2, "imMsgTech"

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v2, "ChatAuth"

    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v2, "GroupChatAuth"

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v2, "ftAuth"

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "standaloneMsgAuth"

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v2, "cancelmessageux"

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "validity"

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "version"

    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "rcsDisabledState"

    .line 163
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v2, "geolocPushAuth"

    .line 164
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "source-throttlepublish"

    .line 165
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v2, "max-number-ofsubscriptions-inpresence-list"

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    filled-new-array/range {v3 .. v20}, [Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mAcsEncrNeededParams:Ljava/util/List;

    .line 170
    iput-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    move-object/from16 v2, p3

    .line 171
    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 172
    new-instance v2, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-direct {v2, v1, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 175
    new-instance v2, Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mJibeRcsAutoConfig:Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;

    return-void
.end method

.method private checkChatPolicyforSMSAppChange(I)I
    .locals 6

    .line 1424
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1425
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 1426
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1428
    const-string/jumbo v2, "support_chat_on_default_mms_app"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 1429
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-static {v4, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 1432
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "jibe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1435
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyDefaultSmsChanged - SupportChat Type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v3
.end method

.method private dumpAutoConfDb(Landroid/net/Uri;)V
    .locals 8

    .line 1373
    const-string v0, "Autoconf"

    const/4 v1, 0x1

    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 1375
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p1, 0x0

    .line 1376
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 1377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1379
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-ge p1, v1, :cond_2

    .line 1380
    const-string p1, "  DB is empty"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1383
    :cond_1
    const-string p1, "  DB is not available"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_4

    .line 1385
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    if-eqz p0, :cond_3

    .line 1373
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1386
    :catch_0
    const-string p0, "  Skip dump auto conf db"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_4
    return-void
.end method

.method private dumpEncrAcsDb(Landroid/net/Uri;)V
    .locals 9

    .line 1349
    const-string v0, "Autoconf"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    .line 1352
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    .line 1353
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1354
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 1355
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/config/ConfigModule$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/config/ConfigModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1356
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1358
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v1, :cond_1

    .line 1367
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1364
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 1365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->dumpEncryptedACS(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz p1, :cond_5

    .line 1367
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_2
    if-eqz p1, :cond_4

    .line 1349
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1368
    :catch_0
    const-string p0, "  Skip dump encr auto conf db"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    :goto_4
    return-void
.end method

.method private isWifiSwitchOn()Z
    .locals 1

    .line 1158
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 1159
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$dumpEncrAcsDb$0(Ljava/lang/String;)Z
    .locals 0

    .line 1355
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mAcsEncrNeededParams:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private onADSChanged(I)V
    .locals 2

    .line 1734
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onADSChanged"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 1735
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1736
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1738
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onADSChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetMsisdnFromPau(I)V
    .locals 3

    .line 1604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RES_SP_PAU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000018

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1605
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "reset to MSISDN_FROM_PAU"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1607
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "msisdn_from_pau"

    const-string v2, ""

    invoke-static {p1, p0, v1, v0, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setIsGcEnabledChange(ZI)V
    .locals 3

    .line 1779
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsGcEnabledChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1780
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string p1, "isGcEnabledChange"

    const/4 v0, 0x0

    const-string v1, "imsswitch"

    invoke-static {p2, p0, v1, p1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public changeOpMode(ZII)V
    .locals 6

    .line 866
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 867
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOpMode: mIsRcsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",RCSE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x13000004

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 870
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 871
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 872
    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    const-string p0, "changeOpMode: it is not supported"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 880
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 881
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    if-nez p1, :cond_4

    .line 883
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    .line 884
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p3

    .line 885
    const-string v1, "jibe"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 886
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->isValidConfigDb(I)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    const-string/jumbo p1, "root/token/token"

    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 891
    :cond_2
    const-string p0, "not to trigger a config because of invalid config"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 887
    :cond_3
    :goto_0
    const-string p1, "force autoconfig for supporting up profile"

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 888
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p1, v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 889
    invoke-virtual {p0, v3, v5, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    :goto_1
    return-void

    .line 896
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tcPopupUserAccept: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p3, :cond_5

    if-eqz p1, :cond_5

    .line 899
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 900
    const-string p1, "force autoconfig in case tcPopupUserAccept is zero"

    invoke-static {v0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 901
    invoke-virtual {p0, v3, v5, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    :cond_5
    return-void
.end method

.method checkMsisdnSkipCount(IZ)Z
    .locals 4

    .line 1391
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1392
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 1394
    sget-object p2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_2

    const-string p2, "jibe"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getMsisdnSkipCount(I)I

    move-result p2

    .line 1400
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MsisdnSkipCount : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", MobileNetwork : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1401
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1395
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "no need to check MsisdnSkipCount"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method clearWorkFlow(I)V
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v0

    .line 1108
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1109
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->isConfigOngoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1110
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clearWorkFlow started"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1111
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->stopWorkFlow()V

    .line 1112
    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 1113
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 1114
    const-string p0, "clearWorkFlow done"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method clearWorkFlowThread(I)V
    .locals 3

    .line 1119
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1121
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearWorkFlowThread: workflowThread is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1124
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "clearWorkFlowThread: started"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    const-wide/16 v1, 0x64

    .line 1127
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1129
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1133
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearWorkFlowThread: done"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1131
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1132
    throw v0
.end method

.method public clearWorkflowByDmaChange(I)Z
    .locals 2

    .line 1806
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mJibeRcsAutoConfig:Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;->needClearWorkflowByDmaChange(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1807
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "clearWorkflowByDmaChange: Do nothing"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1811
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "clearWorkflowByDmaChange: Clear workflow"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1812
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1813
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method createNetworkListener(II)V
    .locals 3

    .line 1616
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNetworkListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1617
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/ConfigModule$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule$1;-><init>(Lcom/sec/internal/ims/config/ConfigModule;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method deregisterNetworkCallback(I)V
    .locals 3

    .line 1708
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterNetworkCallback"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1709
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1710
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1711
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1714
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public dump()V
    .locals 6

    .line 1317
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1319
    const-string v1, "Autoconfig History:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v1}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1321
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v1

    const-string v2, "*"

    if-nez v1, :cond_2

    .line 1322
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "Autoconf"

    if-eqz v1, :cond_1

    .line 1323
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    const-string v1, "Dump of configuration db for simslot0:"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "*#simslot0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    .line 1328
    const-string v1, "Dump of configuration db for simslot1:"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "*#simslot1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    goto :goto_0

    .line 1332
    :cond_0
    const-string v1, "Dump of configuration db:"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    goto :goto_0

    .line 1336
    :cond_1
    const-string v1, "Dump of configuration db: mContext is null!"

    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1340
    :cond_2
    const-string v1, "Dump of ACS Encr : "

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->dumpEncrAcsDb(Landroid/net/Uri;)V

    .line 1343
    :goto_0
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1345
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/WorkFlowController;->dump()V

    return-void
.end method

.method public getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p0

    return-object p0
.end method

.method public getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 0

    .line 1169
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableNetwork(I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/net/Network;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1745
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1746
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1747
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1748
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1749
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1750
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1753
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1754
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1756
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1757
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1758
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1760
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableNetworkForNetworkType(II)Landroid/net/Network;
    .locals 0

    .line 1766
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_0

    .line 1769
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 0
    return-object p0
.end method

.method public getRcsConfVersion(I)Ljava/lang/Integer;
    .locals 1

    .line 939
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getRcsConfigMark(I)Ljava/lang/String;
    .locals 3

    .line 913
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 914
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    const-string v2, ""

    if-ne v0, v1, :cond_0

    .line 915
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getRcsConfigMark: no SIM loaded"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v2

    .line 918
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    .line 919
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 920
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 921
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 922
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object v2

    .line 923
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRcsConfigMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-object v2
.end method

.method public getRcsProfile(I)Ljava/lang/String;
    .locals 0

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getRcsProfile(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
    .locals 0

    .line 1785
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 214
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 217
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 218
    iget v3, v1, Landroid/os/Message;->what:I

    const-string/jumbo v4, "phoneId"

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    const/16 v6, 0x11

    if-eq v3, v6, :cond_1

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    const/16 v6, 0x15

    if-eq v3, v6, :cond_1

    const/16 v6, 0x1c

    if-ne v3, v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v6, 0xd

    if-ne v3, v6, :cond_2

    .line 224
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 225
    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 223
    :cond_1
    :goto_0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 228
    :cond_2
    :goto_1
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v3

    .line 229
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 230
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(I)Ljava/lang/String;

    move-result-object v7

    .line 231
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v8

    .line 232
    invoke-static {v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz v9, :cond_3

    .line 233
    invoke-interface {v9, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    move v12, v11

    .line 235
    :goto_2
    sget-object v13, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "handleMessage: msg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Landroid/os/Message;->what:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v2, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 236
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "rcsNetworkType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " rcsAs: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " isRemoteConfigNeeded: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v2, v14}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    iget v14, v1, Landroid/os/Message;->what:I

    const-string v15, "jibe"

    const-string v5, "lastError"

    const/4 v10, 0x0

    packed-switch v14, :pswitch_data_0

    .line 725
    const-string/jumbo v0, "unknown message"

    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_0
    if-eqz v3, :cond_4

    .line 711
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DEFAULT_SMS_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 712
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->cleanup()V

    .line 714
    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "clear WorkFlow/WorkFlowThread and send init msg"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 715
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 716
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    .line 718
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 719
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mJibeRcsAutoConfig:Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;->resetRcsUserSetting(I)V

    .line 721
    invoke-virtual {v0, v11, v2, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    :pswitch_1
    if-eqz v3, :cond_3c

    .line 538
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendIidToken(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 706
    :pswitch_2
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->sendRcsAutoconfigStart(I)V

    goto/16 :goto_17

    .line 697
    :pswitch_3
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_5

    .line 698
    const-string v1, "dual_simhandling"

    invoke-interface {v9, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 699
    const-string v1, "Clear workflow"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 700
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlow(I)V

    .line 702
    :cond_5
    invoke-virtual {v0, v2, v12}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(IZ)V

    goto/16 :goto_17

    .line 692
    :pswitch_4
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-virtual {v0, v2, v12}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(IZ)V

    goto/16 :goto_17

    :pswitch_5
    const/4 v1, 0x1

    .line 681
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    .line 682
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/WorkFlowController;->onBootCompleted()V

    goto/16 :goto_17

    :pswitch_6
    if-eqz v3, :cond_3c

    .line 687
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->FORBIDDEN_ERROR:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    goto/16 :goto_17

    :pswitch_7
    if-eqz v3, :cond_3c

    .line 532
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendMsisdnNumber(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 393
    :pswitch_8
    const-string v1, "HANDLE_AUTO_CONFIG_RESTART:"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 394
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    if-nez v3, :cond_6

    .line 397
    const-string/jumbo v1, "workflow is null. skip autoconfig"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v11, v11, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    .line 401
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadyNetwork: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", Start command: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 403
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 404
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v2, v12}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_17

    :pswitch_9
    if-eqz v3, :cond_7

    .line 675
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onDefaultSmsPackageChanged()V

    .line 677
    :cond_7
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->notifyDefaultSmsChanged(I)V

    goto/16 :goto_17

    .line 410
    :pswitch_a
    const-string v1, "HANDLE_AUTO_CONFIG_START_WITH_SUITABLE_NETWORK retrigger ACS with best network"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 411
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    goto/16 :goto_17

    .line 667
    :pswitch_b
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->init(I)V

    if-eqz v3, :cond_3c

    .line 669
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->handleMSISDNDialog()V

    goto/16 :goto_17

    .line 649
    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 650
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    .line 651
    :goto_3
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 653
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 655
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDormantMode()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 656
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09004a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 657
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 658
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto/16 :goto_17

    .line 659
    :cond_9
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v2, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 660
    :cond_a
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto/16 :goto_17

    .line 645
    :pswitch_d
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onTelephonyCallStatusChanged(II)V

    goto/16 :goto_17

    .line 599
    :pswitch_e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_b

    .line 600
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_4

    :cond_b
    const/4 v1, -0x1

    .line 603
    :goto_4
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_c

    iget v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz v3, :cond_c

    .line 604
    const-string v3, "Pending Autoconfig comlete event on active call"

    invoke-static {v13, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    .line 605
    iput-boolean v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 606
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsLastError(I)V

    goto/16 :goto_17

    .line 608
    :cond_c
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 610
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 611
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/sec/internal/ims/config/ConfigComplete;->setStateforACSComplete(IILjava/util/List;I)V

    .line 612
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v5

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationComplete(ILjava/util/List;ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    .line 614
    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v3, :cond_3c

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedRetryOverWifi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mWifiNetwork = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", lastErrorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 617
    iget-boolean v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    if-eqz v3, :cond_3c

    if-eqz v1, :cond_e

    const/16 v3, 0x320

    if-eq v1, v3, :cond_e

    const/16 v3, 0x321

    if-eq v1, v3, :cond_e

    const/16 v3, 0x322

    if-eq v1, v3, :cond_e

    const/16 v3, 0x323

    if-eq v1, v3, :cond_e

    const/16 v3, 0x324

    if-eq v1, v3, :cond_e

    const/16 v3, 0x325

    if-ne v1, v3, :cond_d

    goto :goto_5

    .line 626
    :cond_d
    const-string v1, "clear mNeedRetryOverWifi to false"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 627
    iput-boolean v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    goto/16 :goto_17

    .line 621
    :cond_e
    :goto_5
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    if-eqz v1, :cond_3c

    .line 622
    const-string/jumbo v1, "reset AcsSettings for KT over Wifi"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 623
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    goto/16 :goto_17

    .line 632
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 633
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_10

    .line 634
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_6

    .line 637
    :cond_11
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ADS set to other SIM"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_17

    .line 589
    :pswitch_f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 590
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onSimRefresh(I)V

    .line 591
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 592
    const-string/jumbo v1, "sim state changed, reset to MSISDN_FROM_PAU"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 593
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    goto/16 :goto_17

    .line 567
    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/helper/AsyncResult;

    .line 568
    iget-object v1, v1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 569
    invoke-virtual {v0, v1, v12}, Lcom/sec/internal/ims/config/ConfigModule;->onSimReady(IZ)V

    goto/16 :goto_17

    .line 573
    :pswitch_11
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    .line 574
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v2, v11}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 575
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 577
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 578
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_12

    .line 579
    sget-object v4, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "task is set as IDLE because of ads change."

    invoke-static {v4, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_7

    .line 584
    :cond_13
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->onADSChanged(I)V

    .line 585
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Network configs are reset"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_12
    const/4 v1, 0x1

    .line 562
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->setDualSimRcsAutoConfig(Z)V

    const/4 v1, 0x2

    .line 563
    invoke-virtual {v0, v1, v2, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    :pswitch_13
    if-eqz v3, :cond_3c

    .line 546
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 547
    :cond_14
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-nez v1, :cond_16

    .line 548
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-nez v1, :cond_15

    const/4 v2, 0x1

    .line 549
    iput-boolean v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 551
    :cond_15
    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_17

    .line 553
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pending AutoConfig mIsRcsEnabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_17

    .line 556
    :cond_17
    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_17

    :pswitch_14
    if-eqz v3, :cond_3c

    .line 526
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendVerificationCode(Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_15
    if-eqz v3, :cond_3c

    .line 520
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_17

    :pswitch_16
    if-eqz v3, :cond_3c

    .line 514
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_17

    .line 286
    :pswitch_17
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq v6, v4, :cond_18

    const/4 v4, 0x1

    goto :goto_8

    :cond_18
    move v4, v11

    :goto_8
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setNeedResetConfig(Z)V

    .line 287
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 289
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 290
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 291
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/16 v5, 0x8f

    invoke-interface {v4, v5, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(II)V

    goto :goto_9

    .line 295
    :cond_1a
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->setIsTriggeredByNrcr(Z)V

    .line 298
    :pswitch_18
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->PUSH_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    goto/16 :goto_f

    .line 415
    :pswitch_19
    const-string v7, "HANDLE_AUTO_CONFIG_COMPLETE:"

    invoke-static {v13, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 417
    iget v1, v1, Landroid/os/Message;->arg2:I

    const/16 v8, 0x2c4

    if-nez v3, :cond_1b

    move v3, v8

    goto :goto_a

    .line 418
    :cond_1b
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->getLastErrorCode()I

    move-result v3

    .line 420
    :goto_a
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v14

    .line 422
    iget-object v15, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Autoconfig complete: old version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", new version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", last errorcode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v2, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 424
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",OV:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",NV:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",LEC:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const v11, 0x13000006

    invoke-static {v11, v10}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v12, :cond_1d

    if-lez v1, :cond_1d

    const/16 v10, 0x3b

    if-ne v1, v10, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v10, 0x0

    goto :goto_c

    :cond_1d
    :goto_b
    const/4 v10, 0x1

    .line 428
    :goto_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "localConfigUsedState: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v2, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",LCUS:"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v15, 0x1300000c

    invoke-static {v15, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v9, :cond_1e

    .line 431
    invoke-interface {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateLocalConfigUsedState(Z)V

    .line 434
    :cond_1e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AcsTryReason: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v2, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v9, 0x3db

    if-eq v3, v9, :cond_20

    .line 437
    iget-object v9, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    invoke-virtual {v9, v1, v3, v2}, Lcom/sec/internal/ims/config/ConfigComplete;->sendRCSAInfoToHQM(III)V

    .line 439
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const/16 v10, 0xc8

    if-ne v3, v10, :cond_1f

    const/4 v10, 0x1

    .line 441
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v15, "RACC"

    invoke-virtual {v9, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_d

    :cond_1f
    const/4 v10, 0x1

    .line 443
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v15, "RACF"

    invoke-virtual {v9, v15, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    :goto_d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v11, "overwrite_mode"

    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    iget-object v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v11, "DRCS"

    invoke-static {v2, v10, v11, v9}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_20
    const/16 v9, 0x320

    if-ne v3, v9, :cond_21

    .line 450
    const-string v1, "SSL Handshake failed"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    .line 452
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    if-eqz v1, :cond_3c

    .line 453
    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_3c

    .line 454
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 455
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    invoke-virtual {v6, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 458
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 459
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_17

    :cond_21
    if-eqz v14, :cond_22

    .line 464
    invoke-interface {v14}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v9

    if-nez v9, :cond_22

    if-ne v3, v8, :cond_22

    .line 465
    const-string v0, "autoconfiguration failed because sim is unavailable."

    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_17

    .line 469
    :cond_22
    iget-object v8, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    if-eqz v8, :cond_24

    .line 471
    const-string/jumbo v7, "send complete message"

    invoke-static {v13, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_23

    .line 472
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 473
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 475
    :cond_23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 476
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    iput-object v1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 479
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 481
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_e

    :cond_24
    if-eqz v12, :cond_25

    .line 483
    const-string v1, "complete autoconfiguration and send EVENT_AUTOCONFIGURATION_COMPLETE msg"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",CONINFO:CHA"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x1300000d

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 485
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    goto :goto_e

    .line 487
    :cond_25
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_27

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 488
    invoke-virtual {v6, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isJibeAs(I)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    if-ne v7, v1, :cond_27

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",CONINFO:NONCHA"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x1300000e

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 492
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "same version. no event"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_e

    .line 494
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",NEEDRECON"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x1300000f

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 495
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "no exist complete message. send EVENT_RECONFIGURATION"

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 496
    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    .line 499
    :goto_e
    iget-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    .line 500
    iput-boolean v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 501
    iget-boolean v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-eqz v3, :cond_3c

    .line 502
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    const/16 v3, 0x8

    .line 503
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    .line 504
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, 0x2

    .line 505
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    :pswitch_1a
    const/4 v4, 0x1

    goto :goto_10

    .line 301
    :goto_f
    :pswitch_1b
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    .line 304
    :goto_10
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    if-nez v3, :cond_2a

    .line 306
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "workflow is null"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 308
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_11

    .line 311
    :cond_28
    const-string/jumbo v3, "try init workflow and start again"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v4, 0x2

    .line 313
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    .line 309
    :cond_29
    :goto_11
    const-string/jumbo v0, "sim is not ready, start config finished"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 317
    :cond_2a
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "HANDLE_AUTO_CONFIG_START:"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 319
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isGcEnabledChange(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 320
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 321
    const-string v4, "Change the GC RCS policy, set enableRcs"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 322
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->setEnableRcsByMigration()V

    :goto_12
    const/4 v4, 0x0

    goto :goto_13

    .line 324
    :cond_2b
    const-string v4, "Change the GC RCS policy, clear AutoConfig Storage"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->GCPOLICY_CHANGE:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    goto :goto_12

    .line 327
    :goto_13
    invoke-direct {v0, v4, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setIsGcEnabledChange(ZI)V

    .line 330
    :cond_2c
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->checkNetworkConnectivity()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 331
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v2, v12}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_17

    :cond_2d
    if-eqz v12, :cond_2e

    .line 337
    const-string v4, "need CurConfig"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startCurConfig()V

    .line 339
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    goto/16 :goto_17

    :cond_2e
    const/4 v4, 0x0

    .line 343
    const-string/jumbo v5, "rcs_auto_config_pdn"

    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v5

    const-string/jumbo v4, "ps_only_network"

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2f

    .line 344
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 345
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto/16 :goto_15

    .line 348
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->isRoamingMobileDataOn(I)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_14

    :cond_30
    if-eqz v9, :cond_36

    .line 371
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 373
    const-string v5, "Mobile Data ON & WIFI ON case for PS only network."

    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 374
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result v5

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    .line 349
    :cond_31
    :goto_14
    const-string v5, "Mobile Data is off or roaming data off in roaming area"

    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result v5

    .line 351
    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v7

    if-nez v7, :cond_33

    :cond_32
    const/4 v3, 0x3

    goto/16 :goto_16

    .line 356
    :cond_33
    const-string v7, "Mobile Data is off but WiFi is on"

    invoke-static {v1, v2, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v6, 0x0

    .line 358
    iput-boolean v6, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    :cond_34
    if-eqz v9, :cond_35

    .line 361
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 362
    const-string v6, "WiFi is on. Register to VOLTE to receive OTP message for PS only network"

    invoke-static {v1, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 363
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15

    :cond_35
    const/4 v7, 0x3

    .line 365
    const-string v6, "Mobile Data is off but WiFi is on. So wait 20 seconds."

    invoke-static {v1, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 367
    invoke-virtual {v0, v7, v5, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 380
    :cond_36
    :goto_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auto Config Start: ReadyNetwork = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v6, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", Start command = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    .line 381
    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 382
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 383
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_17

    :cond_37
    const/4 v5, 0x0

    if-eqz v9, :cond_3c

    .line 385
    invoke-interface {v9, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 386
    const-string v3, "No conditions satisfied to start Auto Config, proceed to VOLTE REG"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    .line 352
    :goto_16
    const-string v4, "Both Mobile Data and WiFi are off, skip autoconfig"

    invoke-static {v1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v5, v5, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17

    :pswitch_1c
    if-nez v3, :cond_3b

    .line 241
    const-string v1, "HANDLE_AUTO_CONFIG_INIT:"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->rcsProfileInit(I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 244
    const-string v0, "SIM is not ready. skip init workflow"

    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_17

    .line 248
    :cond_38
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "workflowThread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 250
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 251
    invoke-static {v2, v5}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v5

    .line 250
    invoke-static {v3, v4, v0, v2, v5}, Lcom/sec/internal/ims/config/CustomizationManager;->getConfigManager(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/config/ConfigModule;IZ)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v3

    .line 253
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    .line 254
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v3, :cond_39

    .line 257
    const-string/jumbo v1, "workflow is null. skip init workflow, regard old version and new version as 0"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 258
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 259
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17

    .line 262
    :cond_39
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/config/WorkFlowController;->initWorkflow(ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",WF:CR"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v4, 0x1300000b

    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v12, :cond_3a

    .line 265
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 266
    const-string v1, "clear config info because of sim refresh"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 268
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 271
    :cond_3a
    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 272
    const-string v1, "clear old token because of sim refresh"

    invoke-static {v13, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 273
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearToken(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 274
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->removeValidToken()V

    .line 275
    iget-object v0, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 278
    :cond_3b
    const-string/jumbo v0, "re-init Workflow if needed."

    invoke-static {v13, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->reInitIfNeeded()V

    :cond_3c
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_18
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method init(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1003
    invoke-virtual {p0, v0, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public initSequentially()V
    .locals 5

    .line 180
    new-instance v0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    .line 182
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 183
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_0

    .line 184
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->addActionAirplaneMode()V

    :cond_0
    const/16 v3, 0xc

    .line 186
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 187
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v3, 0xb

    .line 188
    invoke-interface {v1, p0, v3, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIntentReceiver:Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 192
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 194
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, " Registering for ADS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    .line 195
    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    :cond_2
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 199
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 201
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 202
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 204
    :cond_3
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 205
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 206
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 207
    new-instance v0, Lcom/sec/internal/ims/config/WorkFlowController;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/WorkFlowController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    .line 208
    new-instance v0, Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    .line 209
    new-instance v0, Lcom/sec/internal/ims/config/ConfigComplete;

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/sec/internal/ims/config/ConfigComplete;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    return-void
.end method

.method public isConfigModuleBootUp()Z
    .locals 0

    .line 1518
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsConfigModuleBootUp:Z

    return p0
.end method

.method isGcEnabledChange(I)Z
    .locals 3

    .line 1773
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v0, "isGcEnabledChange"

    const/4 v1, 0x0

    const-string v2, "imsswitch"

    invoke-static {p1, p0, v2, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 1774
    sget-object p1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGcEnabledChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isMessagingReady()Z
    .locals 0

    .line 1523
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsMessagingReady:Z

    return p0
.end method

.method isMobileDataOn()Z
    .locals 2

    .line 1137
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRcsEnabled(I)Z
    .locals 1

    .line 1513
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "rcs"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method isRoamingMobileDataOn(I)Z
    .locals 6

    .line 1141
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1145
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v0

    .line 1146
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 1148
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "is in Home Network"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 1151
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    invoke-virtual {v2, v4, v5, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getbySubId(Landroid/content/Context;II)I

    move-result v0

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-eq v0, v4, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 1152
    invoke-virtual {v2, p0, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne p0, v0, :cond_3

    :cond_2
    move v1, v3

    .line 1153
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming && isDataRoamingOn = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isValidAcsVersion(I)Z
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isValidAcsVersion(I)Z

    move-result p0

    return p0
.end method

.method public isValidConfigDb(I)Z
    .locals 9

    .line 944
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 948
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 950
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "info/next_autoconfig_time"

    .line 951
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 950
    invoke-static {p0, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 953
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 955
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid next autoconfig time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    move-wide v5, v3

    .line 961
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 962
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remainingValidity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long p0, v5, v3

    if-lez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method public isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public notifyDefaultSmsChanged(I)V
    .locals 2

    .line 1410
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyDefaultSmsChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mJibeRcsAutoConfig:Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;->onDefaultSmsPackageChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1419
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->checkChatPolicyforSMSAppChange(I)I

    move-result v1

    .line 1420
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->processChatPolicyforSMSAppChange(IILjava/util/List;)V

    return-void
.end method

.method public obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;
    .locals 0

    .line 804
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 4

    .line 1527
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 1529
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x12

    const/4 v3, 0x0

    .line 1530
    invoke-virtual {p0, v2, v1, v0, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewRcsConfigurationAvailable(II)V
    .locals 2

    .line 786
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 787
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 788
    const-string p1, "lastError"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 789
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNewRcsConfigurationNeeded(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1214
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    invoke-static {p3}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-interface {v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1223
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    const/4 p0, 0x1

    .line 1224
    iput p0, p3, Landroid/os/Message;->arg1:I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 1226
    iput p0, p3, Landroid/os/Message;->arg1:I

    .line 1229
    :goto_1
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onRegistrationStatusChanged(ZILcom/sec/ims/ImsRegistration;)V
    .locals 6

    .line 1263
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    if-eqz p1, :cond_0

    .line 1266
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/config/ConfigModule;->updateMsisdn(Lcom/sec/ims/ImsRegistration;)V

    .line 1269
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1270
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onRegistrationStatusChanged: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] registered["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], response ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], 403Forbidden Count ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",EC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",CNT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x13000009

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1274
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    const/4 v4, 0x0

    if-nez p1, :cond_3

    .line 1276
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p1

    .line 1277
    const-string v5, "jibe"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1278
    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 1279
    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    .line 1281
    const-string p1, "Two consecutive 403 errors. Permanently prohibited."

    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1282
    iput v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    goto :goto_1

    .line 1284
    :cond_1
    const-string p1, "403 error. Restart ACS"

    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1285
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    goto :goto_1

    .line 1288
    :cond_2
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p1}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result p1

    if-ne p2, p1, :cond_5

    .line 1298
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIPERROR_UNAUTHORIZED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/WorkFlowController;->deleteConfiguration(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    goto :goto_1

    .line 1301
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1302
    const-string p1, "VoLTE regi. is done. It\'s time for RCS registration!"

    invoke-static {v2, v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1303
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1306
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    goto :goto_0

    .line 1310
    :cond_4
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1311
    iput v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    :cond_5
    :goto_1
    return-void
.end method

.method onSimReady(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1007
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "onSimReady:"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1009
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->deregisterNetworkCallback(I)V

    .line 1010
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallback(I)V

    .line 1011
    iget-object v4, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v1, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v4

    .line 1012
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result v5

    .line 1013
    iget-object v6, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v6

    .line 1014
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v7

    .line 1015
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v8

    .line 1016
    const-string/jumbo v9, "rcs_default_enabled"

    const/4 v10, -0x1

    invoke-static {v1, v9, v10}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v9

    .line 1018
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isRcsAvailable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " isChanged: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isRemoteConfigNeeded: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " isSimRefreshReceived: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1019
    invoke-virtual {v13, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " rcsDefaultEnabled: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1018
    invoke-static {v3, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1021
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ",RCSE:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ",SIM:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const v13, 0x13000008

    invoke-static {v13, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1022
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isRcsEnabled: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1024
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v11

    .line 1025
    iget-object v12, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v13, ""

    const-string v14, "OMCNW_CODE"

    const-string v15, "CODE"

    invoke-static {v1, v12, v14, v15, v13}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1026
    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    const/4 v10, 0x1

    xor-int/2addr v13, v10

    .line 1027
    iget-object v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v14, v15, v11}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    iget-object v10, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onSimReady: OMCNW_CODE: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " => "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1029
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v10

    .line 1030
    const-string v11, "jibe"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    if-nez v2, :cond_0

    if-eqz v4, :cond_3

    if-eqz v10, :cond_3

    .line 1032
    :cond_0
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1033
    invoke-virtual {v11, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_1

    if-eqz v13, :cond_3

    .line 1034
    :cond_1
    const-string/jumbo v2, "sim info is refreshed and reset acsSettings"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",SIMINFO:REF,RACS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13000013

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1036
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "SIM info is refreshed or OMCNW_CODE changed. Reset ACS settings"

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-nez v10, :cond_2

    .line 1039
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_0

    .line 1041
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mClearTokenNeededList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1043
    :goto_0
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1044
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1045
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    .line 1046
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1047
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    return-void

    :cond_3
    if-eqz v4, :cond_4

    .line 1051
    sget-object v11, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v0, v1, v11}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1052
    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1053
    const-string v11, "changed sim info, reset to MSISDN_FROM_PAU"

    invoke-static {v3, v1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1054
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    .line 1057
    :cond_4
    iget-object v11, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v1, v12}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-nez v6, :cond_8

    .line 1059
    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v8}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1060
    const-string v2, "init workflow"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",WF:INIT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13000014

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1062
    invoke-virtual {v0, v12, v1, v12, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1064
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1065
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->updateDualRcsNetwork(I)V

    :cond_7
    return-void

    :cond_8
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    .line 1070
    const-string/jumbo v4, "reinit workflow"

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",WF:REINIT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x13000015

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-eqz v10, :cond_9

    .line 1074
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->SIM_CHANGED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {v6, v2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 1075
    const-string/jumbo v2, "setting for starting auto config by Message app is clear"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1076
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v4, -0x1

    invoke-static {v2, v4, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    goto :goto_1

    .line 1077
    :cond_9
    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v8, v4, :cond_a

    .line 1078
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    goto :goto_1

    :cond_a
    if-eqz v2, :cond_b

    .line 1080
    const-string/jumbo v2, "sim info is changed and reset acsSettings"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",SIMINFO:CHA,RACS"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x13000016

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1083
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 1084
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1085
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    .line 1086
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1088
    :cond_b
    :goto_1
    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->cleanup()V

    .line 1089
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v2, v1, v12}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 1090
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 1091
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    .line 1092
    const-string v2, "clear WorkFlow/WorkFlowThread and send init msg"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1093
    invoke-virtual {v0, v12, v1, v12, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    return-void
.end method

.method protected onSimRefresh(I)V
    .locals 2

    .line 730
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 732
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->clear()V

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 734
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->deregisterNetworkCallback(I)V

    .line 735
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mSimRefreshReceivedList:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 736
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->onSimRefresh(I)V

    return-void
.end method

.method protected onTelephonyCallStatusChanged(II)V
    .locals 5

    .line 740
    iput p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    .line 741
    sget-object p2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTelephonyCallStatusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 742
    iget p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-nez p2, :cond_5

    .line 743
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v0, "defaultmsgappinuse"

    invoke-static {p2, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 744
    :goto_0
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    if-eqz v2, :cond_1

    .line 745
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 746
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 747
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsLastError()I

    move-result p1

    const-string v0, "lastError"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xd

    .line 748
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 749
    :cond_1
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    if-eqz v2, :cond_5

    .line 750
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 751
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 756
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 757
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 758
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_4

    const/16 v3, 0x24

    .line 759
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 760
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const-string v4, "MsgApp is changed"

    invoke-interface {v3, v2, v1, v0, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_3

    .line 762
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method processChatPolicyforSMSAppChange(IILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "defaultmsgappinuse"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1441
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x1300000a

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v3, 0x2

    if-eq p1, v2, :cond_b

    .line 1442
    const-string v4, "MsgApp is changed"

    const/16 v5, 0x24

    if-eq p1, v3, :cond_8

    const/4 v3, 0x3

    const/16 v6, 0xf

    if-eq p1, v3, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto/16 :goto_4

    .line 1489
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1490
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1491
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1492
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto :goto_1

    .line 1484
    :cond_3
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1485
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    goto/16 :goto_4

    .line 1466
    :cond_4
    iget p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz p1, :cond_5

    .line 1467
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 1468
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Pending deregistration on active call when MsgApp is changed"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_4

    .line 1472
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1473
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    if-eq v3, v6, :cond_7

    .line 1474
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->cancelUpdateSipDelegateRegistration(I)V

    .line 1475
    invoke-interface {p3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1476
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, p3, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_6

    .line 1478
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p3

    invoke-interface {v3, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    goto :goto_2

    .line 1449
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1450
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v0, :cond_a

    .line 1452
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyDefaultSmsChanged - setStateforACS"

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1453
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1454
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)V

    goto :goto_3

    .line 1456
    :cond_a
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1457
    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1458
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v6, v3, v1, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_3

    .line 1444
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->cancelUpdateSipDelegateRegistration(I)V

    .line 1445
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateChatService(II)V

    :cond_c
    :goto_4
    return-void
.end method

.method processConnectionChange(IZ)V
    .locals 2

    .line 1718
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1719
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string p2, "No Available network"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdListIndexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 1725
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->checkMsisdnSkipCount(IZ)Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    if-eqz p2, :cond_3

    .line 1726
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network is ready for phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 1727
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverNetwork:Z

    .line 1728
    const-string/jumbo v1, "resend HANDLE_AUTO_CONFIG_START"

    invoke-static {p2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x2

    const/4 v1, 0x0

    .line 1729
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method rcsProfileInit(I)Z
    .locals 6

    .line 967
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 968
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 973
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v2

    .line 974
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rcsProfileInit: ConfigDBVer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_1

    .line 976
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    .line 979
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v2

    .line 980
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-nez v0, :cond_2

    .line 981
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "rcsProfileInit: mnoName is not valid"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 982
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",INVMNO"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x13000011

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1

    .line 986
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 987
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/ims/config/WorkFlowController;->putRcsProfile(ILjava/lang/String;)V

    .line 988
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autoconfig init: mnoName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rcsProfile = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 989
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 p1, 0x13000000

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 969
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "rcsProfileInit: no SIM loaded"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 970
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",NOSL"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x13000010

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v1
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 841
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method registerNetworkCallback(I)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1645
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "registerNetworkCallback"

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1646
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(I)Ljava/lang/String;

    move-result-object v3

    .line 1647
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 1649
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    return-void

    .line 1653
    :cond_0
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v8, v1

    :goto_0
    if-ge v8, v7, :cond_6

    aget-object v9, v3, v8

    .line 1654
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1655
    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallbackForNetwork(II)V

    goto/16 :goto_4

    .line 1659
    :cond_1
    new-instance v10, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v10}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1660
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const/16 v11, 0xc

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_1
    move v9, v6

    goto :goto_2

    :sswitch_0
    const-string v12, "internet"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v12, "wifi"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v2

    goto :goto_2

    :sswitch_2
    const-string v12, "ims"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    move v9, v1

    :goto_2
    packed-switch v9, :pswitch_data_0

    move v9, v1

    goto :goto_3

    .line 1663
    :pswitch_0
    invoke-virtual {v10, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    .line 1664
    invoke-virtual {v9, v11}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    new-instance v11, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v11}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 1665
    invoke-virtual {v11, v5}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move v9, v2

    goto :goto_3

    .line 1669
    :pswitch_1
    invoke-virtual {v10, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    .line 1670
    invoke-virtual {v9, v11}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v9, 0x3

    goto :goto_3

    .line 1674
    :pswitch_2
    invoke-virtual {v10, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    const/4 v11, 0x4

    .line 1675
    invoke-virtual {v9, v11}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v9

    new-instance v11, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v11}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 1676
    invoke-virtual {v11, v5}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move v9, v0

    .line 1679
    :goto_3
    iget-object v11, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v11, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 1680
    invoke-virtual {p0, p1, v9}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1681
    invoke-virtual {v10}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v11, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v4, v10, v9}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_5
    :goto_4
    add-int/2addr v8, v2

    goto/16 :goto_0

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x197cf -> :sswitch_2
        0x37af15 -> :sswitch_1
        0x21ffc741 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method registerNetworkCallbackForNetwork(II)V
    .locals 5

    .line 1687
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1688
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1691
    :goto_0
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return-void

    .line 1694
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    .line 1695
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1696
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1697
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v4, 0xc

    .line 1698
    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    new-instance v4, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v4}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 1699
    invoke-virtual {v4, v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 1700
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1701
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1702
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1701
    invoke-virtual {v0, v1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    return-void
.end method

.method public resetAcsTryReason(I)V
    .locals 0

    .line 1174
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetAcsTryReason(I)V

    return-void
.end method

.method public resetReadyStateCommand(I)V
    .locals 1

    .line 1612
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    return-void
.end method

.method public resetTokenDeletedReason(I)V
    .locals 0

    .line 1189
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetTokenDeletedReason(I)V

    return-void
.end method

.method public sendConfigMessage(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 809
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendConfigMessageDelayed(III)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 814
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendConfigMessageDelayed(IILjava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 819
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .locals 1

    .line 860
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIidToken:Ljava/lang/String;

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 p1, 0x1b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 1

    .line 855
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 856
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 p1, 0x14

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 1

    .line 850
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 851
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method public setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
    .locals 0

    .line 1164
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    return-void
.end method

.method public setDualSimRcsAutoConfig(Z)V
    .locals 0

    .line 1503
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    return-void
.end method

.method public setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    .line 1588
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1590
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1593
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v4, ""

    const-string v5, "msisdn_from_pau"

    invoke-static {v2, v3, v5, v1, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1595
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMsisdnFromPau: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "SET_SP_PAU"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x13000017

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1597
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v5, v1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    :cond_2
    return-void
.end method

.method public setRcsClientConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1790
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/config/ConfigTrigger;->setRcsClientConfiguration(ILcom/sec/internal/interfaces/ims/config/IWorkflow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRegisterFromApp(ZI)V
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    return-void
.end method

.method public showMSIDSNDialog()V
    .locals 1

    const/16 v0, 0x10

    .line 1406
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startAcs(I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 1234
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method startAcsWithDelay(I)V
    .locals 2

    .line 1238
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1242
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 1243
    iput v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 1244
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SSL Handshake failed. delay 5 minutes"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xf

    const/4 v1, -0x1

    .line 1245
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 825
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 826
    const-string/jumbo v0, "phoneId"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xd

    .line 827
    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 830
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfig(ZLandroid/os/Message;I)V

    return-void
.end method

.method public startAutoConfigDualsim(ILandroid/os/Message;)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 836
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfigDualsim(ILandroid/os/Message;)V

    return-void
.end method

.method public triggerAutoConfig(ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)V

    return-void
.end method

.method public triggerAutoConfiguration(I)V
    .locals 0

    .line 1796
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfiguration(I)V

    return-void
.end method

.method public tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 1508
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 846
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method updateDualRcsNetwork(I)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1099
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetworkForNetworkType(II)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1100
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-eq v2, p1, :cond_1

    const/16 v2, 0x18

    .line 1101
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1102
    sget-object p0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateDualRcsNetwork : "

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateMobileNetworkforDualRcs(I)Z
    .locals 2

    .line 995
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 996
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryAutoConfig: getActiveDataPhoneId() != phoneId ->mobileNetwork = false"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 997
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 999
    :cond_0
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    return p0
.end method

.method updateMsisdn(Lcom/sec/ims/ImsRegistration;)V
    .locals 3

    .line 1250
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1254
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const-string v2, "MSISDN is null, SP needs to be set to PAU"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1255
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V

    :cond_0
    return-void
.end method

.method public updateTelephonyCallStatus(II)V
    .locals 3

    .line 781
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonyCallStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    .line 782
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
