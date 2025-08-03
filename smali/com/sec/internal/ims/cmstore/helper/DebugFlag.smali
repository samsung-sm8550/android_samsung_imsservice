.class public Lcom/sec/internal/ims/cmstore/helper/DebugFlag;
.super Ljava/lang/Object;
.source "DebugFlag.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final AUTH_HOST_NAME:Ljava/lang/String; = "auth_host_name"

.field public static final CPS_HOST_NAME:Ljava/lang/String; = "cps_host_name"

.field public static final DEBUG_FLAG:Ljava/lang/String; = "AMBS_DEBUG"

.field public static DEBUG_MCS_URL:Ljava/lang/String; = "https://rapi.rcsoasis.kr"

.field public static DEBUG_OASIS_VERSION:Ljava/lang/String; = "0.0.0"

.field public static DEBUG_RETRY_TIMELINE_FLAG:Z = false

.field public static final ENABLE_ADVANCE_DEBUG:Z = false

.field public static final INIT_DOWNLOAD_STATUS:Ljava/lang/String; = "init_download_status"

.field public static final INIT_UPLOAD_STATUS:Ljava/lang/String; = "init_upload_status"

.field public static final LOG_TAG:Ljava/lang/String; = "DebugFlag"

.field public static final MCS_URL:Ljava/lang/String; = "mcs_url"

.field public static final NC_CREATION_TIME:Ljava/lang/String; = "notification_channel_creation_time"

.field public static final NC_HOST_NAME:Ljava/lang/String; = "nc_host_name"

.field public static final NC_LIFETIME:Ljava/lang/String; = "notification_channel_lifetime"

.field public static final NC_URL:Ljava/lang/String; = "notification_channel_url"

.field public static final OASIS_VERSION:Ljava/lang/String; = "oasis_version"

.field public static final RETRY_TIME:Ljava/lang/String; = "retry_time"

.field public static final SERVER_CONFIG:Ljava/lang/String; = "server_config"

.field public static final SYNC_MESSAGE_STATUS:Ljava/lang/String; = "sync_message_status"

.field public static debugRetryTimeLine:Ljava/lang/String; = "10000,10000,10000,10000,10000"

.field protected static mRetrySchedule:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->initRetryTimeLine()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRetryTimeLine(I)I
    .locals 2

    .line 77
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static initRetryTimeLine()V
    .locals 4

    .line 51
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 54
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setRetryTimeLine(Ljava/lang/String;)V
    .locals 4

    .line 59
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 60
    sput-object p0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->debugRetryTimeLine:Ljava/lang/String;

    .line 61
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 63
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 64
    aget-object v1, p0, v0

    .line 67
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 69
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRetryTimeLine: NumberFormatException,time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DebugFlag"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    .line 72
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->mRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
