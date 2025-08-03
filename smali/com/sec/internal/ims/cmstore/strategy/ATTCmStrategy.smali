.class public Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;
.super Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;
.source "ATTCmStrategy.java"


# instance fields
.field private final ATT_API_VERSION:Ljava/lang/String;

.field private final ATT_STORE_NAME:Ljava/lang/String;

.field private LOG_TAG:Ljava/lang/String;

.field private mApiFailCount:I

.field private mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mLastFailedAPI:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 77
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 66
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "v1"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->ATT_API_VERSION:Ljava/lang/String;

    .line 69
    const-string v0, "base"

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->ATT_STORE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 74
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    .line 79
    const-string v0, "ATTCmStrategy"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string p1, "https"

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mProtocol:Ljava/lang/String;

    .line 81
    const-string p1, "application/json"

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mContentType:Ljava/lang/String;

    .line 82
    sget-object p1, Lcom/sec/internal/omanetapi/common/data/NotificationFormat;->JSON:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mNotificationFormat:Lcom/sec/internal/omanetapi/common/data/NotificationFormat;

    .line 83
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 85
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 87
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitStart()V

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initSuccessfulCallFlowTranslator()V

    .line 89
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initFailedCallFlowTranslator()V

    .line 90
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->onOmaFlowInitComplete()V

    .line 91
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initStandardRetrySchedule()V

    .line 92
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initMessageAttributeRegistration()V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOmaRetryVariables()V

    return-void
.end method

.method private clearOmaRetryVariables()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear oma retry variables"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1093
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 1094
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    const/4 v0, 0x0

    .line 1095
    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 1096
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    return-void
.end method

.method private increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V
    .locals 2

    .line 1011
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 1013
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed count increment 1, failed count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOmaRetryCounter(I)V

    goto :goto_0

    .line 1016
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 1017
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 1018
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail count keep same["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], lastFailedAPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    .line 1019
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", currentFailedAPI: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1018
    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initFailedCallFlowTranslator()V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initProvisionFailedCallFlowTranslator()V

    .line 447
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOMAFailedCallFlowTranslator()V

    return-void
.end method

.method private initMessageAttributeRegistration()V
    .locals 3

    .line 892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    .line 894
    const-string v1, "$DATE"

    const-string v2, "Date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MESSAGE$CONTEXT"

    const-string v2, "Message-Context"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DIRECTION"

    const-string v2, "Direction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$FROM"

    const-string v2, "From"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TO"

    const-string v2, "To"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$BCC"

    const-string v2, "Bcc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CC"

    const-string v2, "Cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$SUBJECT"

    const-string v2, "Subject"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$CPM$GROUP"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_cpm_group:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IS$OPEN$GROUP"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->is_open_group:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$TEXT$CONTENT"

    const-string v2, "TextContent"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONTRIBUTION$ID"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->contribution_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CONVERSATION$ID"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->conversation_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$IN$REPLY$TO$CONTRIBUTION$ID"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->inreplyto_contribution_Id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$UDH"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->udh:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CALL$DISPOSTITION"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_disposition:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$CALL$DURATION"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->call_duration:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$TYPE"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$STATUS"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_status:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$MESSAGEID"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_message_iD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$DISPOSITION$ORIGINAL$TO"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->disposition_original_to:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    const-string v1, "$MULTIPARTCONTENTTYPE"

    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy$ATTAttributeNames;->multipartContentType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mMessageAttributeRegistration:Ljava/util/Map;

    return-void
.end method

.method private initOMAFailedCallFlowTranslator()V
    .locals 7

    .line 809
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOmaFailureCommonFlow()V

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 830
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 831
    const-class v3, Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x199

    invoke-direct {v1, v5, v2, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 832
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 828
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 836
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x12e

    invoke-direct {v1, v5, v2, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 838
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 834
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    .line 848
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 849
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x194

    invoke-direct {v1, v5, v2, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREATE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 850
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 846
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetActiveNotificationChannels;

    .line 854
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 855
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v4, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 852
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    .line 863
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 865
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 861
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initOMASuccessfulCallFlowTranslator()V
    .locals 8

    .line 393
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->initOmaSuccessCommonFlow()V

    .line 412
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLongPolling;

    .line 414
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 415
    const-class v3, Landroid/os/Handler;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    invoke-direct {v1, v5, v2, v4}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_AND_START_LONG_POLLING:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 416
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 412
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateNotificationChannels;

    .line 422
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc9

    invoke-direct {v1, v7, v4, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 420
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v4, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageGetIndividualNotificationChannelInfo;

    .line 430
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 431
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v4, v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 428
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mOmaCallFlowTranslator:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;

    const-class v1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageUpdateNotificationChannelLifeTime;

    .line 439
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/OmaErrorKey;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 441
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 437
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initOmaRetryVariables()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOmaRetryCounter()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OMA fail count is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initProvisionFailedCallFlowTranslator()V
    .locals 23

    move-object/from16 v0, p0

    .line 454
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->sErrorMsgsTranslator:Ljava/util/Map;

    .line 481
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->sErrorMsgsTranslator:Ljava/util/Map;

    .line 483
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v9, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    sget-object v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    const/4 v3, 0x0

    invoke-direct {v9, v2, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 499
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v16, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_FORBIDDEN:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ZCODE_ERROR_201:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 501
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 502
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "201"

    move-object v4, v2

    move-object/from16 v6, v16

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 499
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v17, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_ALLOW:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 508
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 509
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const/4 v15, 0x0

    const-string v11, "default_error_type"

    move-object v10, v2

    move-object/from16 v12, v17

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 505
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v19, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;->RETRY_USE_HEADER_VALUE:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;

    sget-object v10, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 514
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 515
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const/4 v9, 0x0

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 512
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    .line 522
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 527
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 528
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 524
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ATS_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 532
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 533
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 530
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 545
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v20, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 550
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 547
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 555
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 556
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "201"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 553
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 561
    invoke-virtual {v10}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 562
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "202"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 559
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 566
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 567
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 564
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 579
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    sget-object v15, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;->PROVISIONING_BLOCKED:Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;

    invoke-direct {v2, v15, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 590
    new-instance v10, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 592
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v18, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->PROVISION_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    move-object v4, v10

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 590
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v21, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CPS_PROVISION_SHUTDOWN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 596
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "CPS.SVC-1015"

    const/4 v13, -0x1

    move-object v10, v4

    move-object/from16 v12, v16

    move-object v9, v15

    move-object v15, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 594
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v4, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCOUNT_NOT_ELIGIBLE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 599
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "not eligible"

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 597
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v22, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 609
    invoke-virtual/range {v22 .. v22}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 610
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const/4 v10, 0x0

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    move-object v11, v9

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 607
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    new-instance v15, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;

    invoke-direct {v15, v11, v3}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;-><init>(Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorType;I)V

    .line 628
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 630
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const/4 v9, 0x0

    const-string v5, "CpsDefaultError"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 628
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 633
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v14

    const-string v11, "CPS.SVC-1015"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 631
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 637
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 634
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 641
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 642
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 639
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 648
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 653
    invoke-virtual/range {v22 .. v22}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->ACCESS_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 654
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "ENCOREESB.SECURITY-6014"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 650
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->LAST_RETRY_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 658
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 659
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "Last_Retry_Create_Account"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 656
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 663
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "ERR_HUITOKEN_JSON"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 661
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 668
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 665
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 672
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 673
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 670
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 680
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 695
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 696
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 693
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 699
    invoke-virtual/range {v21 .. v21}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v13

    const/4 v14, -0x1

    const/4 v15, 0x0

    const-string v11, "CPS.SVC-1015"

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 697
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 703
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 701
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 715
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 719
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 720
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CPS.SVC-1007"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 718
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 723
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 724
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CPS.SVC-1008"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 722
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 728
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "CpsDefaultError"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 726
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 732
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 733
    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 730
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 744
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->STOP_BACKUP_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 741
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 748
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    .line 750
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 746
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 759
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    const-class v3, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 764
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "default_error_type"

    move-object v4, v2

    move-object/from16 v6, v17

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 761
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    .line 767
    invoke-virtual/range {v20 .. v20}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string/jumbo v5, "wrong sessionID"

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 765
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    new-instance v2, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 771
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const-string v5, "RetryAfterRule"

    move-object v4, v2

    move-object/from16 v6, v19

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRule$RetryAttribute;IILcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorMsg;)V

    .line 769
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mFailedCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method private initProvisionSuccessfullCallFlowTranslator()V
    .locals 8

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v3, "HAP.DEF"

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_ACCOUNT_ELIGIBILITY:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v4, "HAP.STEADY.STATE.REQ.HUIMSTOKEN"

    invoke-direct {v1, v4, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    const-string v4, "HAP.DELETE.ACCOUNT"

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v4, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v5, "HAP.CREATE.ACCOUNT"

    invoke-direct {v1, v5, v4}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SERVICE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    const-string v6, "HAP.GET.SVC.ACCOUNT"

    invoke-direct {v1, v6, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    const-string v6, "HAP.GET.TC"

    sget-object v7, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v6, v7}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v6, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    invoke-direct {v1, v3, v5}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v5, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    invoke-direct {v1, v3, v4}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v4, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->READY_PAT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    new-instance v1, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->DELETE_ACCOUNT_SUCCESS:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessCallFlow;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    const-class v2, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    .line 388
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mSuccessfullCallFlowTranslator:Ljava/util/Map;

    return-void
.end method

.method private initStandardRetrySchedule()V
    .locals 8

    .line 870
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    .line 872
    sget-boolean v1, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    const/4 v2, 0x5

    .line 878
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 877
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    .line 876
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    .line 875
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    .line 874
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    .line 873
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v1, :cond_0

    invoke-interface {v0, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 880
    :cond_0
    invoke-interface {v0, v7, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x493e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0xdbba00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x2932e00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    const v1, 0x5265c00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    return-void
.end method

.method private initSuccessfulCallFlowTranslator()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initProvisionSuccessfullCallFlowTranslator()V

    .line 295
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->initOMASuccessfulCallFlowTranslator()V

    return-void
.end method


# virtual methods
.method public clearOmaRetryData()V
    .locals 0

    .line 1101
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    return-void
.end method

.method public getAdaptedRetrySchedule(I)I
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStandardRetrySchedule:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_0
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->DEBUG_RETRY_TIMELINE_FLAG:Z

    if-eqz v0, :cond_1

    .line 260
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/DebugFlag;->getRetryTimeLine(I)I

    move-result p0

    return p0

    .line 271
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    return p0

    :cond_2
    int-to-float p0, p0

    .line 281
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextFloat()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 282
    div-int/lit16 p0, p0, 0x3e8

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    .line 276
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr p0, p1

    return p0
.end method

.method public getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 1083
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mControllerOfLastFailedAPI:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method public getIsInitSyncIndicatorRequired()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getLastFailedApi()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            ">;"
        }
    .end annotation

    .line 1088
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    return-object p0
.end method

.method public getNativeLine()Ljava/lang/String;
    .locals 0

    .line 969
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNcHost()Ljava/lang/String;
    .locals 3

    .line 941
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 944
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    .line 946
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NC Host value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 949
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNmsHost()Ljava/lang/String;
    .locals 4

    .line 925
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v0

    .line 927
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "use host for gcm, NMS Host value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAcsNmsHost()Ljava/lang/String;

    move-result-object v0

    .line 930
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 931
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_NMS_HOST:Ljava/lang/String;

    :cond_0
    return-object v0

    .line 936
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOMAApiVersion()Ljava/lang/String;
    .locals 0

    .line 959
    const-string/jumbo p0, "v1"

    return-object p0
.end method

.method public getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 139
    const-string p0, "::"

    const-string v0, ":::::"

    const-string v1, ":::"

    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 140
    invoke-static {p1, p2, p3, p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->generateSmsHashCode(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 0

    .line 964
    const-string p0, "base"

    return-object p0
.end method

.method public getTypeUsingMessageContext(Ljava/lang/String;)I
    .locals 0

    .line 974
    const-string/jumbo p0, "pager-message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 976
    :cond_0
    const-string p0, "multimedia-message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 978
    :cond_1
    const-string p0, "chat-message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xb

    return p0

    .line 980
    :cond_2
    const-string p0, "file-message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0xc

    return p0

    .line 982
    :cond_3
    const-string/jumbo p0, "standalone-message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xe

    return p0

    .line 984
    :cond_4
    const-string p0, "imdn-message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xd

    return p0

    .line 986
    :cond_5
    const-string/jumbo p0, "voice-message"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bearer PAT_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initOmaFailureCommonFlow()V
    .locals 0

    .line 0
    return-void
.end method

.method public isAirplaneModeChangeHandled()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isBulkCreationEnabled()Z
    .locals 0

    .line 170
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0
.end method

.method public isBulkDeleteEnabled()Z
    .locals 0

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0
.end method

.method public isBulkUpdateEnabled()Z
    .locals 0

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0
.end method

.method public isCaptivePortalCheckSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected isCarrierStrategyBreakCommonRule(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z
    .locals 3

    .line 1060
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCarrierStrategyBreakCommonRule()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageDeleteIndividualSubscription;

    const/16 v1, 0x12e

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq p2, v1, :cond_0

    return v2

    .line 1067
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageDeleteIndividualChannel;

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_1

    return v2

    .line 1073
    :cond_1
    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    if-eqz p1, :cond_2

    .line 1075
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    const-string p1, "CloudMessageCreateLargeDataPolling, other status code"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isEnableATTHeader()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isGoForwardSyncSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isNeedCheckBlockedNumberBeforeCopyRcsDb()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isPollingAllowed()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isPostMethodForBulkDelete()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isProvisionRequired()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isStoreImdnEnabled()Z
    .locals 0

    .line 221
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0
.end method

.method public isSupportExpiredRule()Z
    .locals 0

    .line 241
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0
.end method

.method public isTokenRequestedFromProvision()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isTrIdCorrelationId()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isUIButtonUsed()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public needToHandleSimSwap()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 7

    const/4 v0, 0x0

    .line 1028
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 1029
    iget v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result v1

    const-string v2, "OMA API failed "

    if-lt v0, v1, :cond_0

    .line 1030
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times before, OMA API retired more than "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;->getMaxRetryCounter()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times, pop up error screen"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1030
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    .line 1034
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;->onOmaFailExceedMaxCount()V

    return-void

    .line 1037
    :cond_0
    iget p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->getAdaptedRetrySchedule(I)I

    move-result p2

    int-to-long v0, p2

    const-wide/16 v3, 0x3e8

    if-lez p4, :cond_1

    int-to-long v5, p4

    mul-long/2addr v5, v3

    .line 1039
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1041
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mApiFailCount:I

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times beforeGo ahead fallback to SessionGen after "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v0, v3

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 1044
    sget-object p4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CREDENTIAL_EXPIRED:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p4

    iput p4, p2, Landroid/os/Message;->what:I

    .line 1045
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iput-object p4, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1046
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    .line 1047
    invoke-direct {p0, p3, p1}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->increaseFailedCount(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;)V

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 1

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->mLastFailedAPI:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1053
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;->clearOmaRetryVariables()V

    :cond_0
    return-void
.end method

.method public requiresInterworkingCrossSearch()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldCareGroupChatAttribute()Z
    .locals 0

    .line 236
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0
.end method

.method public shouldCorrectShortCode()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldEnableNetAPIWorking(ZZZZZ)Z
    .locals 0

    .line 0
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldPersistImsRegNum()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldSkipMessage(Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;)Z
    .locals 2

    .line 195
    iget-object p0, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 196
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    const-string v0, "[^0-9]+"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->isSmsZCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldStopInitSyncUponLowMemory()Z
    .locals 0

    .line 231
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result p0

    return p0
.end method

.method public shouldStopSendingAPIwhenNetworklost()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
