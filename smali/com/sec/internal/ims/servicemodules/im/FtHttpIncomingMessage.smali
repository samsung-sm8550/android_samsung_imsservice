.class public Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
.super Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.source "FtHttpIncomingMessage.java"


# static fields
.field private static final EVENT_DOWNLOAD_CANCELED:I = 0x67

.field private static final EVENT_DOWNLOAD_COMPLETED:I = 0x66

.field private static final EVENT_DOWNLOAD_PROGRESS:I = 0x65

.field private static final EVENT_DOWNLOAD_THUMBNAIL_CANCELED:I = 0x6a

.field private static final EVENT_DOWNLOAD_THUMBNAIL_COMPLETED:I = 0x68

.field private static final EVENT_DOWNLOAD_THUMBNAIL_FAILED:I = 0x69

.field private static final EVENT_RETRY_DOWNLOAD:I = 0x6b

.field private static final EVENT_RETRY_THUMBNAIL_DOWNLOAD:I = 0x6c

.field private static final GSMA_FT_HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDataUrl:Ljava/net/URL;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;)Ljava/net/URL;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/net/URL;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;

    return-void
.end method

.method static bridge synthetic -$$Nest$misFtHttpUrlTrusted(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->isFtHttpUrlTrusted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->LOG_TAG:Ljava/lang/String;

    .line 81
    const-string v0, "https://ftcontentserver\\.rcs\\.mnc\\d{3}\\.mcc\\d{3}\\.pub\\.3gppnetwork\\.org"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->GSMA_FT_HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)V

    .line 88
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/net/URL;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->-$$Nest$fgetmDataUrl(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    .line 94
    :goto_1
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed data url"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder<",
            "*>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder2-IA;)V

    return-object v0
.end method

.method private isFtHttpUrlTrusted(Ljava/lang/String;)Z
    .locals 2

    .line 133
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->GSMA_FT_HTTP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string v0, "fthttp_non_standard_urls"

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->stringArraySetting(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
    .locals 3

    .line 147
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FtHttpIncomingMessage#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$FtHttpStateMachine;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;Ljava/lang/String;Landroid/os/Looper;)V

    return-object v0
.end method

.method public getDataUrl()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->mDataUrl:Ljava/net/URL;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParamsforDl(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpDLUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 153
    const-string/jumbo v1, "url"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 155
    const-string p1, "id"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 158
    const-string p1, "ci"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-eqz p1, :cond_2

    .line 161
    const-string/jumbo v1, "op"

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    const-string v1, "is_eap_supported"

    invoke-interface {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->composeRootNai(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EAP_ID"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public getTransferMech()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isAutoResumable()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string v0, "cancel_for_deregi_promptly"

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public receiveTransfer()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
