.class public Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
.super Ljava/lang/Object;
.source "CloudMessagePreferenceManager.java"


# static fields
.field private static final ACS_HAS_NMS:Ljava/lang/String; = "acs_has_nms"

.field private static final ACS_NMS_HOST:Ljava/lang/String; = "acs_nms_host"

.field private static final APP_VER:Ljava/lang/String; = "app_ver"

.field private static final ATS_TOKEN:Ljava/lang/String; = "ats_token"

.field private static final AUTH_ZCODE:Ljava/lang/String; = "auth_zcode"

.field private static final BUFFER_DB_LOADED:Ljava/lang/String; = "buffer_db_loaded"

.field private static final COUNT_USER_INPUT_PHONE_NUMBER:Ljava/lang/String; = "count_user_input_phone_number"

.field private static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field private static final FCM_RETRY_COUNT:Ljava/lang/String; = "fcm_retry_count"

.field private static final HAS_SHOWN_POPUP_OPT_IN:Ljava/lang/String; = "has_shown_popup_opt_in"

.field private static final HUI_6014_ERR:Ljava/lang/String; = "6014_err"

.field private static final IS_IMSI_FIXED_FOR_ATT_DATABASE:Ljava/lang/String; = "is_imsi_fixed_for_att_database"

.field private static final IS_NATIVE_MSGAPP_DEFAULT:Ljava/lang/String; = "is_native_message_app_default"

.field private static final LAST_API_CREATE_SERVICE:Ljava/lang/String; = "last_api_create_service"

.field private static final LAST_SCREEN:Ljava/lang/String; = "last_screen"

.field private static final LAST_SCREEN_USER_STOP_BACKUP:Ljava/lang/String; = "last_screen_where_user_stop_backup"

.field private static final MSG_STORE_TOKEN:Ljava/lang/String; = "msg_store_token"

.field private static final NC_HOST:Ljava/lang/String; = "nc_host"

.field private static final NETWORK_OK_TIME:Ljava/lang/String; = "network_is_available_time"

.field private static final NEW_USER_OPT_IN_CASE:Ljava/lang/String; = "new_user_opt_in_case"

.field private static final NMS_HOST:Ljava/lang/String; = "nms_host"

.field private static final NSDS_AUTHORY:Ljava/lang/String; = "com.samsung.ims.nsds.provider"

.field private static final OBJECT_SEARCH_CURSOR:Ljava/lang/String; = "object_search_cursor"

.field private static final OMA_CALLBACK_URL:Ljava/lang/String; = "oma_callback_url"

.field private static final OMA_CHANNELS_CHANNEL_URL:Ljava/lang/String; = "oma_channels_channel_url"

.field private static final OMA_CHANNELS_RESOURCE_URL:Ljava/lang/String; = "oma_channels_resources_url"

.field private static final OMA_CHANNEL_CREATE_TIME:Ljava/lang/String; = "oma_channel_create_lifetime"

.field private static final OMA_CHANNEL_LIFETIME:Ljava/lang/String; = "oma_channel_lifetime"

.field private static final OMA_RETRY_COUNT:Ljava/lang/String; = "oma_retry_count"

.field private static final OMA_SUBSCIRPTION_CHANNEL_DURATION:Ljava/lang/String; = "oma_subscription_channel_duration"

.field private static final OMA_SUBSCIRPTION_RESTART_TOKEN:Ljava/lang/String; = "oma_subscription_restart_token"

.field private static final OMA_SUBSCIRPTION_RESURL:Ljava/lang/String; = "oma_subscription_resurl"

.field private static final OMA_SUBSCIRPTION_TIME:Ljava/lang/String; = "oma_subscription_time"

.field private static final OMA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "oma_subscription_index"

.field private static final PAT:Ljava/lang/String; = "cps_pat"

.field private static final PAT_GENERATE_TIME:Ljava/lang/String; = "pat_generate_time"

.field private static final PREFERENCE_FILE_NAME:Ljava/lang/String; = "cloudmessage"

.field private static final PREFERENCE_MIGRATE_SUCCESS:Ljava/lang/String; = "cmsmigratesuccess"

.field private static final PREFERENCE_USER_DEBUG:Ljava/lang/String; = "cmsuserdebug"

.field private static final PREF_KEY_RETRY_STACK:Ljava/lang/String; = "Retry_Stack"

.field private static final PREF_LAST_SW_VERSION:Ljava/lang/String; = "last_sw_version"

.field private static final REDIRECT_DOMAIN:Ljava/lang/String; = "redirect_domain"

.field private static final SIM_IMSI:Ljava/lang/String; = "sim_imsi"

.field private static final STEADY_STATE_FLAG:Ljava/lang/String; = "steady_state_flag"

.field private static final TBS_REQUIRED:Ljava/lang/String; = "tbs_required"

.field private static final TERM_CONDITION_ID:Ljava/lang/String; = "T&C"

.field private static final USER_CTN:Ljava/lang/String; = "user_ctn_id"

.field private static final USER_CTN_IS_INPUT:Ljava/lang/String; = "is_user_input_ctn"

.field private static final USER_DELETE_ACCOUNT:Ljava/lang/String; = "user_requested_delete_account"

.field private static final USER_OPT_IN_FLAG:Ljava/lang/String; = "user_opt_in_flag"

.field private static final ZCODE_COUNTER:Ljava/lang/String; = "zcode_counter"

.field private static final ZCODE_LAST_REQUEST_ID:Ljava/lang/String; = "zcode_last_request_id"

.field private static mUserDebugPreference:Landroid/content/SharedPreferences;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMigrateSuccessPreference:Landroid/content/SharedPreferences;

.field private mPhoneID:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    .line 120
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 121
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    .line 123
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    .line 124
    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    const-string v2, "cloudmessage"

    if-nez v1, :cond_0

    .line 125
    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    .line 129
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "cmsuserdebug"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    const-string v1, "cmsmigratesuccess"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    .line 133
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->initUserDebug()V

    return-void
.end method

.method private getKeyBooleanValue(Ljava/lang/String;Z)Z
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getKeyIntegerValue(Ljava/lang/String;I)I
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getKeyLongValue(Ljava/lang/String;J)J
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private getPrefEditor()Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method private saveKeyBooleanValue(Ljava/lang/String;Z)V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 183
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveKeyIntegerValue(Ljava/lang/String;I)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 172
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private saveKeyLongValue(Ljava/lang/String;J)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 194
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "clear all preferences data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 139
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearInvalidUserCtn()V
    .locals 1

    .line 475
    const-string/jumbo v0, "user_ctn_id"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    .line 476
    const-string v0, "is_user_input_ctn"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearOMASubscriptionChannelDuration()V
    .locals 1

    .line 804
    const-string/jumbo v0, "oma_subscription_channel_duration"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public clearOMASubscriptionTime()V
    .locals 1

    .line 790
    const-string/jumbo v0, "oma_subscription_time"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeKey(Ljava/lang/String;)V

    return-void
.end method

.method public getAMBSPauseService()Z
    .locals 3

    .line 671
    const-string v0, "ambs_pause_service"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 672
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAMBSPauseService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAMBSStopService()Z
    .locals 3

    .line 660
    const-string v0, "ambs_stop_service"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 661
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAMBSStopService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAcsNmsHost()Ljava/lang/String;
    .locals 2

    .line 590
    const-string v0, "acs_nms_host"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAtsToken()Ljava/lang/String;
    .locals 3

    .line 564
    const-string v0, "ats_token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "atsToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 2

    .line 231
    const-string v0, "authentication_code"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAuthZCode()Ljava/lang/String;
    .locals 2

    .line 441
    const-string v0, "auth_zcode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBufferDbLoaded()Z
    .locals 2

    .line 852
    const-string v0, "buffer_db_loaded"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCmsDataTtl()I
    .locals 2

    .line 296
    const-string v0, "cms_data_ttl"

    const v1, 0x278d00

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .line 872
    const-string v0, "device_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/lang/String;

    move-result-object v0

    .line 875
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 876
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v0, "can\'t get imei from sp and telephonymgr"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 879
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveDeviceId(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getFcmRegistrationToken()Ljava/lang/String;
    .locals 2

    .line 391
    const-string v0, "fcm_registration_token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFcmRetryCount()I
    .locals 2

    .line 844
    const-string v0, "fcm_retry_count"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFcmSenderId()Ljava/lang/String;
    .locals 2

    .line 317
    const-string v0, "fcm_sender_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGcmTokenFromVsim()Ljava/lang/String;
    .locals 7

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 895
    const-string v0, "content://com.samsung.ims.nsds.provider/devices/push_token"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 897
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v1, :cond_0

    .line 904
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_0
    :goto_0
    return-object v0

    .line 901
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    const-string v2, "device_push_token"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 904
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 897
    :goto_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 905
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!Could not get data from db "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v0
.end method

.method public getInitPushReceivedFlag()Z
    .locals 2

    .line 864
    const-string v0, "init_push_received"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIsBinSettingOn()Z
    .locals 2

    .line 313
    const-string v0, "bin_sync_setting"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIsUserInputCtn()Z
    .locals 2

    .line 498
    const-string v0, "is_user_input_ctn"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKeyStringValueOfUserDebug(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 166
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastScreen()I
    .locals 2

    .line 544
    const-string v0, "last_screen"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastScreenUserStopBackup()I
    .locals 2

    .line 552
    const-string v0, "last_screen_where_user_stop_backup"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastSwVersion()Ljava/lang/String;
    .locals 2

    .line 992
    const-string v0, "last_sw_version"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLastVVMStatus()Ljava/lang/String;
    .locals 2

    .line 719
    const-string/jumbo v0, "vvm_on_status"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaxSmallFileSize()I
    .locals 2

    .line 333
    const-string v0, "max_small_file_size"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMaxUploadFileSize()I
    .locals 2

    .line 325
    const-string v0, "max_upload_file_size"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMcsAccessToken()Ljava/lang/String;
    .locals 2

    .line 264
    const-string v0, "access_token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsAccessTokenExpireTime()J
    .locals 3

    .line 272
    const-string v0, "access_token_expire_time"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMcsAccountId()Ljava/lang/String;
    .locals 2

    .line 399
    const-string v0, "account_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsAlias()Ljava/lang/String;
    .locals 2

    .line 407
    const-string v0, "alias"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsExtendedFunc()Ljava/lang/String;
    .locals 2

    .line 983
    const-string v0, "extended_func"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsRefreshToken()Ljava/lang/String;
    .locals 2

    .line 280
    const-string/jumbo v0, "refresh_token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMcsRefreshTokenExpireTime()J
    .locals 3

    .line 288
    const-string/jumbo v0, "refresh_token_expire_time"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMcsUser()I
    .locals 2

    .line 209
    const-string v0, "is_mcs_user"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->logMcsRegistrationStatus(I)V

    return v0
.end method

.method public getMigrateSuccessFlag()Z
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v1, "getMigrateSuccessFlag "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 934
    :cond_0
    const-string v1, "is_imsi_fixed_for_att_database"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getMmsRevokeTtlSecs()I
    .locals 2

    .line 365
    const-string v0, "mms_revoke_ttl_secs"

    const v1, 0x15180

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMsgStoreSessionId()Ljava/lang/String;
    .locals 2

    .line 574
    const-string v0, "msg_store_token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 2

    .line 736
    const-string v0, "nc_host"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkAvailableTime()J
    .locals 3

    .line 916
    const-string v0, "network_is_available_time"

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNewUserOptInCase()I
    .locals 2

    .line 638
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    const-string v1, "new_user_opt_in_case"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 2

    .line 582
    const-string v0, "nms_host"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMACallBackURL()Ljava/lang/String;
    .locals 2

    .line 760
    const-string/jumbo v0, "oma_callback_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAChannelCreateTime()J
    .locals 3

    .line 824
    const-string/jumbo v0, "oma_channel_create_lifetime"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelLifeTime()J
    .locals 3

    .line 814
    const-string/jumbo v0, "oma_channel_lifetime"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMAChannelResURL()Ljava/lang/String;
    .locals 2

    .line 744
    const-string/jumbo v0, "oma_channels_resources_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAChannelURL()Ljava/lang/String;
    .locals 2

    .line 752
    const-string/jumbo v0, "oma_channels_channel_url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASSubscriptionRestartToken()Ljava/lang/String;
    .locals 2

    .line 776
    const-string/jumbo v0, "oma_subscription_restart_token"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASubscriptionChannelDuration()I
    .locals 2

    .line 800
    const-string/jumbo v0, "oma_subscription_channel_duration"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOMASubscriptionIndex()J
    .locals 3

    .line 768
    const-string/jumbo v0, "oma_subscription_index"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOMASubscriptionResUrl()Ljava/lang/String;
    .locals 2

    .line 832
    const-string/jumbo v0, "oma_subscription_resurl"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMASubscriptionTime()J
    .locals 3

    .line 786
    const-string/jumbo v0, "oma_subscription_time"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOasisAuthRoot()Ljava/lang/String;
    .locals 2

    .line 248
    const-string v0, "mcs_url"

    const-string v1, "https://rapi.rcsoasis.kr"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValueOfUserDebug(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public getOasisLargeFileServerRoot()Ljava/lang/String;
    .locals 2

    .line 349
    const-string/jumbo v0, "oasis_large_file_server_root"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOasisServerRoot()Ljava/lang/String;
    .locals 2

    .line 256
    const-string/jumbo v0, "oasis_server_root"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOasisServerVersion()Ljava/lang/String;
    .locals 2

    .line 357
    const-string/jumbo v0, "oasis_server_version"

    const-string v1, "0.0.0"

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOasisSmallFileServerRoot()Ljava/lang/String;
    .locals 2

    .line 341
    const-string/jumbo v0, "oasis_small_file_server_root"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOmaRetryCounter()I
    .locals 2

    .line 836
    const-string/jumbo v0, "oma_retry_count"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRedirectDomain()Ljava/lang/String;
    .locals 2

    .line 598
    const-string/jumbo v0, "redirect_domain"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegCode()Ljava/lang/String;
    .locals 2

    .line 239
    const-string/jumbo v0, "registration_code"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRetryStackData()Ljava/lang/String;
    .locals 2

    .line 711
    const-string v0, "Retry_Stack"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimImsi()Ljava/lang/String;
    .locals 2

    .line 454
    const-string/jumbo v0, "sim_imsi"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmsRevokeTtlSecs()I
    .locals 2

    .line 378
    const-string/jumbo v0, "sms_revoke_ttl_secs"

    const v1, 0x15180

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTermConditionId()Ljava/lang/String;
    .locals 2

    .line 429
    const-string v0, "T&C"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRetryCounter()I
    .locals 2

    .line 698
    const-string/jumbo v0, "retry_total_counter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getUserCtn()Ljava/lang/String;
    .locals 2

    .line 480
    const-string/jumbo v0, "user_ctn_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserTbs()Z
    .locals 2

    .line 462
    const-string/jumbo v0, "tbs_required"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getUserTelCtn()Ljava/lang/String;
    .locals 2

    .line 486
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-static {v1, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 488
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getNormalizedTelUri(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 494
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getValidPAT()Ljava/lang/String;
    .locals 6

    .line 608
    const-string v0, "cps_pat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    const-string/jumbo v2, "pat_generate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    .line 612
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x48190800

    cmp-long p0, v4, v2

    if-gez p0, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getZCodeLastRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 417
    const-string/jumbo v0, "zcode_last_request_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasShownPopupOptIn()Z
    .locals 2

    .line 629
    const-string v0, "has_shown_popup_opt_in"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public hasUserDeleteAccount()Z
    .locals 3

    .line 538
    const-string/jumbo v0, "user_requested_delete_account"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    .line 539
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public hasUserOptedIn()Z
    .locals 2

    .line 621
    const-string/jumbo v0, "user_opt_in_flag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public ifSteadyState()Z
    .locals 2

    .line 690
    const-string/jumbo v0, "steady_state_flag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public increaseUserInputNumberCount()V
    .locals 2

    const/4 v0, 0x0

    .line 502
    const-string v1, "count_user_input_phone_number"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 503
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public increazeZCodeCounter()V
    .locals 2

    const/4 v0, 0x0

    .line 519
    const-string/jumbo v1, "zcode_counter"

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 520
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public initUserDebug()V
    .locals 7

    .line 938
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 939
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string v0, "mUserDebugPreference is null failed to init"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 942
    :cond_0
    const-string v1, "AMBS_DEBUG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 943
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debug preference :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 945
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v1, "app_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v3, "cps_host_name"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 947
    sget-object v3, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v4, "auth_host_name"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 948
    sget-object v4, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "retry_time"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 949
    sget-object v5, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v6, "nc_host_name"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 950
    invoke-static {v0, v3, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 951
    sput-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 952
    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->setRetryTimeLine(Ljava/lang/String;)V

    .line 953
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const-string v1, "mcs_url"

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    goto :goto_0

    .line 955
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initDefault()V

    .line 956
    sput-boolean v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    .line 957
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    .line 959
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisServerVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    .line 960
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cpsHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ncHostName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mcsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oasisVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isDebugEnable()Z
    .locals 2

    .line 886
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 889
    :cond_0
    const-string v1, "AMBS_DEBUG"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isEmptyPref()Z
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHUI6014Err()Z
    .locals 2

    .line 678
    const-string v0, "6014_err"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isLastAPIRequestCreateAccount()Z
    .locals 2

    .line 647
    const-string v0, "last_api_create_service"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isNoMoreChanceUserInputNumber()Z
    .locals 2

    .line 513
    const-string v0, "count_user_input_phone_number"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isZCodeMax2Tries()Z
    .locals 2

    .line 524
    const-string/jumbo v0, "zcode_counter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getKeyIntegerValue(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public logMcsRegistrationStatus(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string p1, "MCS registration : false"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string p1, "MCS registration : true"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    const-string p1, "MCS registration : unknown"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 150
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeUserInputNumberCount()V
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 508
    const-string v0, "count_user_input_phone_number"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeZCodeCounter()V
    .locals 1

    .line 528
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 529
    const-string/jumbo v0, "zcode_counter"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveAMBSPauseService(Z)V
    .locals 3

    .line 666
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveAMBSPauseService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v0, "ambs_pause_service"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveAMBSStopService(Z)V
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveAMBSStopService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v0, "ambs_stop_service"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveAcsNmsHost(Ljava/lang/String;)V
    .locals 1

    .line 586
    const-string v0, "acs_nms_host"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAppVer(Ljava/lang/String;)V
    .locals 1

    .line 425
    const-string v0, "app_ver"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAtsToken(Ljava/lang/String;)V
    .locals 1

    .line 560
    const-string v0, "ats_token"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAuthCode(Ljava/lang/String;)V
    .locals 1

    .line 235
    const-string v0, "authentication_code"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveAuthZCode(Ljava/lang/String;)V
    .locals 1

    .line 437
    const-string v0, "auth_zcode"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveBufferDbLoaded(Z)V
    .locals 1

    .line 856
    const-string v0, "buffer_db_loaded"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveCmsDataTtl(I)V
    .locals 4

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffffff9

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmsDataTtl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    if-gtz p1, :cond_0

    const p1, 0x278d00

    .line 305
    :cond_0
    const-string v0, "cms_data_ttl"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 868
    const-string v0, "device_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveFcmRegistrationToken(Ljava/lang/String;)V
    .locals 1

    .line 395
    const-string v0, "fcm_registration_token"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveFcmRetryCount(I)V
    .locals 1

    .line 848
    const-string v0, "fcm_retry_count"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveFcmSenderId(Ljava/lang/String;)V
    .locals 1

    .line 321
    const-string v0, "fcm_sender_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveIfHUI6014Err(Z)V
    .locals 1

    .line 682
    const-string v0, "6014_err"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveIfHasShownPopupOptIn(Z)V
    .locals 1

    .line 633
    const-string v0, "has_shown_popup_opt_in"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveIfSteadyState(Z)V
    .locals 1

    .line 686
    const-string/jumbo v0, "steady_state_flag"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveInitPushReceivedFlag(Z)V
    .locals 1

    .line 860
    const-string v0, "init_push_received"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "save key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getPrefEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 157
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveLastApiRequestCreateAccount(Z)V
    .locals 1

    .line 651
    const-string v0, "last_api_create_service"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveLastRetryTime(J)V
    .locals 1

    .line 707
    const-string v0, "last retry time"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveLastScreen(I)V
    .locals 1

    .line 548
    const-string v0, "last_screen"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastScreenUserStopBackup(I)V
    .locals 1

    .line 556
    const-string v0, "last_screen_where_user_stop_backup"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLastVVMStatus(Ljava/lang/String;)V
    .locals 1

    .line 715
    const-string/jumbo v0, "vvm_on_status"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMaxSmallFileSize(I)V
    .locals 1

    .line 337
    const-string v0, "max_small_file_size"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMaxUploadFileSize(I)V
    .locals 1

    .line 329
    const-string v0, "max_upload_file_size"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMcsAccessToken(Ljava/lang/String;)V
    .locals 1

    .line 268
    const-string v0, "access_token"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsAccessTokenExpireTime(J)V
    .locals 1

    .line 276
    const-string v0, "access_token_expire_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveMcsAccountId(Ljava/lang/String;)V
    .locals 1

    .line 403
    const-string v0, "account_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsAlias(Ljava/lang/String;)V
    .locals 1

    .line 411
    const-string v0, "alias"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsExtendedFunc(Ljava/lang/String;)V
    .locals 4

    .line 987
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendedFunc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 988
    const-string v0, "extended_func"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsRefreshToken(Ljava/lang/String;)V
    .locals 1

    .line 284
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveMcsRefreshTokenExpireTime(J)V
    .locals 1

    .line 292
    const-string/jumbo v0, "refresh_token_expire_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveMcsUser(I)V
    .locals 2

    .line 215
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->logMcsRegistrationStatus(I)V

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",PV:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffcfffd

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 217
    const-string v0, "is_mcs_user"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMigrateSuccessFlag(Z)V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveMigrateSuccess is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mMigrateSuccessPreference:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    .line 924
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 925
    const-string v0, "is_imsi_fixed_for_att_database"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 926
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveMmsRevokeTtlSecs(I)V
    .locals 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffffff9

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmsRevokeTtlSecs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    if-gtz p1, :cond_0

    const p1, 0x15180

    .line 374
    :cond_0
    const-string v0, "mms_revoke_ttl_secs"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveMsgStoreSessionId(Ljava/lang/String;)V
    .locals 1

    .line 570
    const-string v0, "msg_store_token"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNativeMsgAppIsDefault(Z)V
    .locals 1

    .line 694
    const-string v0, "is_native_message_app_default"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveNcHost(Ljava/lang/String;)V
    .locals 1

    .line 732
    const-string v0, "nc_host"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveNetworkAvailableTime(J)V
    .locals 2

    .line 911
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "YYYY-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 912
    const-string v0, "network_is_available_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveNewUserOptInCase(I)V
    .locals 1

    .line 642
    const-string v0, "new_user_opt_in_case"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveNmsHost(Ljava/lang/String;)V
    .locals 1

    .line 578
    const-string v0, "nms_host"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMACallBackURL(Ljava/lang/String;)V
    .locals 1

    .line 756
    const-string/jumbo v0, "oma_callback_url"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMAChannelCreateTime(J)V
    .locals 1

    .line 819
    const-string/jumbo v0, "oma_channel_create_lifetime"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMAChannelLifeTime(J)V
    .locals 1

    .line 809
    const-string/jumbo v0, "oma_channel_lifetime"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMAChannelResURL(Ljava/lang/String;)V
    .locals 1

    .line 740
    const-string/jumbo v0, "oma_channels_resources_url"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMAChannelURL(Ljava/lang/String;)V
    .locals 1

    .line 748
    const-string/jumbo v0, "oma_channels_channel_url"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionChannelDuration(I)V
    .locals 1

    .line 795
    const-string/jumbo v0, "oma_subscription_channel_duration"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveOMASubscriptionIndex(J)V
    .locals 1

    .line 764
    const-string/jumbo v0, "oma_subscription_index"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOMASubscriptionResUrl(Ljava/lang/String;)V
    .locals 1

    .line 828
    const-string/jumbo v0, "oma_subscription_resurl"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionRestartToken(Ljava/lang/String;)V
    .locals 1

    .line 772
    const-string/jumbo v0, "oma_subscription_restart_token"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOMASubscriptionTime(J)V
    .locals 1

    .line 781
    const-string/jumbo v0, "oma_subscription_time"

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveOasisLargeFileServerRoot(Ljava/lang/String;)V
    .locals 1

    .line 353
    const-string/jumbo v0, "oasis_large_file_server_root"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOasisServerRoot(Ljava/lang/String;)V
    .locals 1

    .line 260
    const-string/jumbo v0, "oasis_server_root"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOasisServerVersion(Ljava/lang/String;)V
    .locals 1

    .line 361
    const-string/jumbo v0, "oasis_server_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOasisSmallFileServerRoot(Ljava/lang/String;)V
    .locals 1

    .line 345
    const-string/jumbo v0, "oasis_small_file_server_root"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveObjectSearchCursor(Ljava/lang/String;)V
    .locals 1

    .line 728
    const-string/jumbo v0, "object_search_cursor"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveOmaRetryCounter(I)V
    .locals 1

    .line 840
    const-string/jumbo v0, "oma_retry_count"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public savePATAndTime(Ljava/lang/String;)V
    .locals 2

    .line 602
    const-string v0, "cps_pat"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string/jumbo p1, "pat_generate_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyLongValue(Ljava/lang/String;J)V

    return-void
.end method

.method public saveRedirectDomain(Ljava/lang/String;)V
    .locals 1

    .line 594
    const-string/jumbo v0, "redirect_domain"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveRegCode(Ljava/lang/String;)V
    .locals 1

    .line 243
    const-string/jumbo v0, "registration_code"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveRetryStackData(Ljava/lang/String;)V
    .locals 1

    .line 723
    const-string v0, "Retry_Stack"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSimImsi(Ljava/lang/String;)V
    .locals 1

    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    const-string/jumbo v0, "saveSimImsi is empty"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 449
    :cond_0
    const-string/jumbo v0, "sim_imsi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSmsRevokeTtlSecs(I)V
    .locals 4

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffffff9

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smsRevokeTtlSecs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    if-gtz p1, :cond_0

    const p1, 0x15180

    .line 387
    :cond_0
    const-string/jumbo v0, "sms_revoke_ttl_secs"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveTermConditionId(Ljava/lang/String;)V
    .locals 1

    .line 433
    const-string v0, "T&C"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveTotalRetryCounter(I)V
    .locals 1

    .line 703
    const-string/jumbo v0, "retry_total_counter"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyIntegerValue(Ljava/lang/String;I)V

    return-void
.end method

.method public saveUserCtn(Ljava/lang/String;Z)V
    .locals 1

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    const-string/jumbo p2, "saveUserCtn is empty"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 470
    :cond_0
    const-string/jumbo v0, "user_ctn_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string p1, "is_user_input_ctn"

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserDebug()V
    .locals 2

    .line 966
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mUserDebugPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 967
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserDebugPreference is null failed to save, debug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 970
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 971
    const-string v0, "AMBS_DEBUG"

    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 972
    const-string v0, "app_id"

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 973
    const-string v0, "cps_host_name"

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 974
    const-string v0, "auth_host_name"

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 975
    const-string/jumbo v0, "retry_time"

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 976
    const-string v0, "nc_host_name"

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 977
    const-string v0, "mcs_url"

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_MCS_URL:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 978
    const-string/jumbo v0, "oasis_version"

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_OASIS_VERSION:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 979
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveUserDeleteAccount(Z)V
    .locals 1

    .line 534
    const-string/jumbo v0, "user_requested_delete_account"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserOptedIn(Z)V
    .locals 1

    .line 625
    const-string/jumbo v0, "user_opt_in_flag"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveUserTbsRquired(Z)V
    .locals 1

    .line 458
    const-string/jumbo v0, "tbs_required"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveZCodeLastRequestId(Ljava/lang/String;)V
    .locals 1

    .line 421
    const-string/jumbo v0, "zcode_last_request_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBinSyncSetting(Z)V
    .locals 1

    .line 309
    const-string v0, "bin_sync_setting"

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLastSwVersion(Ljava/lang/String;)V
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->mPhoneID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLastSwVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 997
    const-string v0, "last_sw_version"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveKeyStringValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
